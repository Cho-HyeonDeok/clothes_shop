package com.dss.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dss.dao.LikeCartDAO;
import com.dss.dao.ProductDAO;
import com.dss.dto.LikeCartVO;
import com.dss.dto.MemberVO;
import com.dss.dto.ProductVO;

public class ProductDetailAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String url="product/productDetail.jsp";
		
		String pseq = "";
		
		if(request.getParameter("pseq") != null) {
			pseq = request.getParameter("pseq").trim();
		}
		
		ProductDAO productDAO = ProductDAO.getInstance();
		ProductVO productVO = productDAO.getProduct(pseq);
		
		// loginuser 세션 생성
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		int result = -1;
		
		// 3. loginuser가 없으면 -> 하트 검정색
		if(loginUser == null || pseq.equals("")) {
			request.setAttribute("result", result);
		} else {
			// 1. loginuser가 있고, likecartlist에 해당 물건이 존재하면 -> 하트 빨강
			String userid = request.getParameter("userid");
			
			LikeCartDAO likecartDAO = LikeCartDAO.getInstance();
			
			//System.out.println("pseq : " + pseq);
			//System.out.println("loginuser getid : " + loginUser.getId());
			result = likecartDAO.FindProductList(Integer.parseInt(pseq), loginUser.getId());
			
			request.setAttribute("result", result); // 0 or -1, 0이면 빨간하트, -1이면 검정하트
		}		
		//System.out.println("result : " + result);
		
		request.setAttribute("productVO", productVO);
		
		System.out.println(productVO);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
