package com.dss.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dss.dao.CartDAO;
import com.dss.dao.LikeCartDAO;
import com.dss.dto.MemberVO;

public class LikeCartDeleteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "DssServlet?command=product_detail";
		
		String pseq = request.getParameter("pseq");
		System.out.println("pseq : " + pseq);
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		LikeCartDAO likecartDAO = LikeCartDAO.getInstance();
		likecartDAO.deleteCart(Integer.parseInt(pseq), loginUser.getId());
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
