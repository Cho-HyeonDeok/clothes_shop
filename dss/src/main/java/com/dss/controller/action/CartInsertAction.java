package com.dss.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dss.dao.CartDAO;
import com.dss.dto.CartVO;
import com.dss.dto.MemberVO;

public class CartInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "DssServlet?command=cart_list";
		System.out.println("cart_insert_action 실행");
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "DssServlet?command=login_form";
		} else {
			CartVO cartVO = new CartVO();
			System.out.println("cartVO : " + cartVO);
			
			cartVO.setId(loginUser.getId());
			System.out.println("pseq :"  );
			
			cartVO.setPseq(Integer.parseInt(request.getParameter("pseq")));
			cartVO.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			
			System.out.println("indate : " + cartVO.getIndate());
			CartDAO cartDAO = CartDAO.getInstance();
			cartDAO.insertCart(cartVO);
		}
		response.sendRedirect(url);
	}
}
