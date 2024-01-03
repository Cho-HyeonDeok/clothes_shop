package com.dss.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dss.dao.OrderDAO;
import com.dss.dto.MemberVO;
import com.dss.dto.OrderVO;

public class OrderListAction implements Action {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "mypage/orderList.jsp"; // 수정 필요 orderList.jsp 로
		System.out.println("dfsdf");
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if (loginUser == null) {
			url = "DssServlet?command=login_form";
		} else {
			OrderDAO orderDAO = OrderDAO.getInstance();
			System.out.println(request.getParameter("oseq"));
			int oseq = Integer.parseInt(request.getParameter("oseq"));
			ArrayList<OrderVO> orderList = orderDAO.listOrderById(loginUser.getId(), "1", oseq);
			
			int totalPrice = 0;
			for(OrderVO orderVO : orderList) {
				totalPrice += orderVO.getPrice2() * orderVO.getQuantity();
			}
			
			request.setAttribute("orderList", orderList);
			request.setAttribute("totalPrice", totalPrice);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
