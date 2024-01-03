package com.dss.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dss.controller.action.Action;

public class AdminProductWriteFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "admin/product/productWrite.jsp";
		String kindList[] = {"상의","하의","아우터","신발","악세사리"};
		request.setAttribute("kindList", kindList);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
