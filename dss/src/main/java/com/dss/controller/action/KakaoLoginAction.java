package com.dss.controller.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

public class KakaoLoginAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String clientId = "4b5e32bab89f9e6e38f993c698127d22";
		String clientSecret = "4T5P2pGvBT5d0uiLCGzbnGvkxRIyOt0w";
		String redirectUri = "http://localhost:8080/dss/DssServlet?command=index";
		String code = request.getParameter("code");

		String apiUrl = "https://kauth.kakao.com/oauth/token";
		String queryString = "grant_type=authorization_code&client_id=" + clientId + "&client_secret=" + clientSecret
				+ "&redirect_uri=" + redirectUri + "&code=" + code;

		URL url = new URL(apiUrl);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("POST");
		conn.setDoOutput(true);

		try (BufferedReader wr = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
			String line;
			StringBuilder responseContent = new StringBuilder();

			while ((line = wr.readLine()) != null) {
				responseContent.append(line);
			}

			JSONObject jsonResponse = new JSONObject(responseContent.toString());
			String accessToken = jsonResponse.getString("access_token");

			// 카카오 API를 사용하여 사용자 정보를 가져오기 위한 요청
			String userInfoUrl = "https://kapi.kakao.com/v2/user/me";
			HttpURLConnection userInfoConn = (HttpURLConnection) new URL(userInfoUrl).openConnection();
			userInfoConn.setRequestProperty("Authorization", "Bearer " + accessToken);

			try (BufferedReader userInfoReader = new BufferedReader(
					new InputStreamReader(userInfoConn.getInputStream()))) {
				String userInfoLine;
				StringBuilder userInfoResponse = new StringBuilder();

				while ((userInfoLine = userInfoReader.readLine()) != null) {
					userInfoResponse.append(userInfoLine);
				}

				JSONObject userInfoJson = new JSONObject(userInfoResponse.toString());

				// 사용자 정보 추출
				String nickname = userInfoJson.getJSONObject("properties").getString("nickname");
				String profileImage = userInfoJson.getJSONObject("properties").getString("profile_image");

				// 사용자 정보를 세션에 저장
				HttpSession session = request.getSession();
				session.setAttribute("nickname", nickname);
				System.out.println(nickname);
				session.setAttribute("profileImage", profileImage);
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
		}
	}
}
