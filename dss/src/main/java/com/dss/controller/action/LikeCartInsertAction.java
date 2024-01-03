package com.dss.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dss.dao.CartDAO;
import com.dss.dao.LikeCartDAO;
import com.dss.dao.ProductDAO;
import com.dss.dto.CartVO;
import com.dss.dto.LikeCartVO;
import com.dss.dto.MemberVO;
import com.dss.dto.ProductVO;

public class LikeCartInsertAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String url = "DssServlet?command=product_detail";
		
		String pseq = "";
		
		if(request.getParameter("pseq") != null) {
			pseq = request.getParameter("pseq").trim();
		}
		
		ProductDAO productDAO = ProductDAO.getInstance();
		ProductVO productVO = productDAO.getProduct(pseq);
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if (loginUser == null) {
			url = "DssServlet?command=login_form";
		} else {
			LikeCartVO likecartVO = new LikeCartVO();
			System.out.println("cartVO : " + likecartVO);
			
			likecartVO.setId(loginUser.getId());
			
			likecartVO.setPseq(Integer.parseInt(request.getParameter("pseq")));
			likecartVO.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			
			System.out.println("indate : " + likecartVO.getIndate());
			LikeCartDAO likecartDAO = LikeCartDAO.getInstance();
			likecartDAO.insertCart(likecartVO);
		}
		
		request.setAttribute("productVO", productVO);
		System.out.println(productVO);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
