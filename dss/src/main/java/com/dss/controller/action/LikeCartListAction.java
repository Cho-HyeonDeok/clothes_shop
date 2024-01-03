package com.dss.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dss.dao.LikeCartDAO;
import com.dss.dao.OrderDAO;
import com.dss.dto.LikeCartVO;
import com.dss.dto.MemberVO;
import com.dss.dto.OrderVO;

public class LikeCartListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "mypage/likecartList.jsp";

		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			url = "DssServlet?command=login_form";
		} else {
			LikeCartDAO likecartDAO = LikeCartDAO.getInstance();
			ArrayList<LikeCartVO> likecartList = likecartDAO.listCart(loginUser.getId());
			
			request.setAttribute("likecartList", likecartList);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
