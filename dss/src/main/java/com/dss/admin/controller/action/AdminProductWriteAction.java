package com.dss.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dss.controller.action.Action;
import com.dss.dao.ProductDAO;
import com.dss.dto.ProductVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AdminProductWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url ="DssServlet?command=admin_product_list";
		
		HttpSession session = request.getSession();

		 int sizeLimit = 5 * 1024 * 1024;
		 String savePath = "img";
		 ServletContext context = session.getServletContext();
		 String uploadFilePath = context.getRealPath(savePath);

		 MultipartRequest multi = new MultipartRequest(request, // 1. 요청 객체
		 uploadFilePath, // 2. 업로드될 파일이 저장될 파일 경로명
		 sizeLimit, // 3. 업로드될 파일의 최대 크기(5Mb)
		 "UTF-8", // 4. 인코딩 타입 지정
		 new DefaultFileRenamePolicy() // 5. 덮어쓰기를 방지 위한 부분
				 ); // 이 시점을 기해 파일은 이미 저장이 되었다

		 ProductVO productVO = new ProductVO();
		 productVO.setKind(multi.getParameter("kind"));
		 productVO.setName(multi.getParameter("name"));
		 productVO.setBrand(multi.getParameter("brand"));
		 productVO.setCoordi(multi.getParameter("coordi"));
		 productVO.setPrice1(Integer.parseInt(multi.getParameter("price1")));
		 productVO.setPrice2(Integer.parseInt(multi.getParameter("price2")));
		 productVO.setPrice3(Integer.parseInt(multi.getParameter("price2"))
		 - Integer.parseInt(multi.getParameter("price1")));
		 productVO.setContent(multi.getParameter("content"));
		 productVO.setImage(multi.getFilesystemName("image"));
		 productVO.setImage1(multi.getFilesystemName("image1"));
		 productVO.setImage2(multi.getFilesystemName("image2"));
		 productVO.setImage3(multi.getFilesystemName("image3"));
		 productVO.setImage4(multi.getFilesystemName("image4"));
		 productVO.setImage5(multi.getFilesystemName("image5"));
		 productVO.setImage6(multi.getFilesystemName("image6"));

		 ProductDAO productDAO = ProductDAO.getInstance();
		 productDAO.insertProductAdmin(productVO);

		 response.sendRedirect(url);
	}
}
