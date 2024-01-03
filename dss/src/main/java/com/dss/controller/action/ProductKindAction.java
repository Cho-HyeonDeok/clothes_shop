package com.dss.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dss.dao.ProductDAO;
import com.dss.dto.ProductVO;

public class ProductKindAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "product/productKind.jsp";

		String kind = request.getParameter("kind").trim();

		ArrayList<ProductVO> productKindList = null;

		ProductDAO productDAO = ProductDAO.getInstance();

		System.out.println(kind);

		if (kind.equals("6")) {
			productKindList = productDAO.listBestProduct();
		} else {
			productKindList = productDAO.listKindProduct(kind);
		}


	

	

		request.setAttribute("productKindList", productKindList);
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
