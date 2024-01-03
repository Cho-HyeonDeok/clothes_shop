package com.dss.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dss.controller.action.Action;

/**
 * Servlet implementation class DssServlet
 */
@WebServlet("/DssServlet")
public class DssServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DssServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 기타 페이지로 부터 command 값을 얻어옴
		String command = request.getParameter("command");
		// command 값 확인
		System.out.println("DssServlet command : " + command);
		
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command);
		
		if(action != null) {
			action.execute(request, response); // 해당 ActionFactory에 맞는 command 실행
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post 사용시 한글 깨짐 방지
		request.setCharacterEncoding("UTF-8");
		// post 사용시 doGet() 호출, doGet() 에서만 처리
		doGet(request, response);
	}

}
