package com.dss.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dss.dao.QnaDAO;
import com.dss.dto.MemberVO;
import com.dss.dto.QnaVO;

public class QnaWriteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "DssServlet?command=qna_list";
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if (loginUser == null) {
			url = "DssServlet?command=login_form";
		} else {
			QnaVO qnaVO = new QnaVO();
			
			System.out.println("subject : " + request.getParameter("subject"));
			System.out.println("content : " + request.getParameter("content"));
			qnaVO.setSubject(request.getParameter("subject"));
			qnaVO.setContent(request.getParameter("content"));
			QnaDAO qnaDAO = QnaDAO.getInstance();
			qnaDAO.insertqna(qnaVO, loginUser.getId());
		}
		response.sendRedirect(url);
	}
}
