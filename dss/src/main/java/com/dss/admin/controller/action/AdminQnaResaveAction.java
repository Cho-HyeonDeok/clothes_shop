package com.dss.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dss.controller.action.Action;
import com.dss.dao.QnaDAO;
import com.dss.dto.QnaVO;

public class AdminQnaResaveAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "DssServlet?command=admin_product_list";
		String qseq = request.getParameter("qseq").trim();
		String reply = request.getParameter("reply").trim();

		QnaVO qnaVO = new QnaVO();
		qnaVO.setQseq(Integer.parseInt(qseq));
		qnaVO.setReply(reply);
		QnaDAO qnaDAO = QnaDAO.getInstance();
		qnaDAO.updateQna(qnaVO);

		response.sendRedirect(url);
	}
}