package com.dss.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dss.dao.CartDAO;
import com.dss.dao.OrderDAO;
import com.dss.dto.CartVO;
import com.dss.dto.MemberVO;

public class OrderInsertAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "DssServlet?command=order_list";
		System.out.println("fksl");
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "DssServlet?command=login_form";
		} else {
			CartDAO cartDAO = CartDAO.getInstance();
			ArrayList<CartVO> cartList = cartDAO.listCart(loginUser.getId());
			
			OrderDAO orderDAO = OrderDAO.getInstance();
			
			int maxOseq = orderDAO.insertOrder(cartList, loginUser.getId());
			url = "DssServlet?command=order_list&oseq="+maxOseq;
		}
		response.sendRedirect(url);
		//request.getRequestDispatcher(url).forward(request, response);
		
	}
}
