package com.dss.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dss.dto.OrderVO;
import com.dss.dto.ProductVO;

import util.DBManager;

public class ProductDAO {
	// singletone - 객체 생성 로딩 등에 도움됨
	private ProductDAO() {
	}

	private static ProductDAO instance = new ProductDAO();

	public static ProductDAO getInstance() {
		return instance;
	}

	// 상품 목록 가져오기
	public ArrayList<ProductVO> listNewProduct() { // 상품 목록을 반환 <ProductVO>를 여러개 가지는 리스트 반환
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String sql = "select * from new_pro_view"; // new_pro_view의 모든 목록 얻어옴

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO product = new ProductVO();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setPrice2(rs.getInt("price2"));
				product.setImage(rs.getString("image"));
				product.setBrand(rs.getString("brand"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}


	// 베스트 상품 리스트 가져오기
	public ArrayList<ProductVO> listBestProduct() { // 베스트 상품 목록 반환 <ProductVO>를 여러개 가지는 리스트 반환
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>(); // 함수 리턴 값
		String sql = "select * from best_pro_view"; // best_pro_view인 뷰에서 모든 목록을 가져옴

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO product = new ProductVO();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setPrice1(rs.getInt("price1"));
				product.setPrice2(rs.getInt("price2"));
				product.setImage(rs.getString("image"));
				product.setBrand(rs.getString("brand"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}

	// 상품 번호를 사용하여 상품 정보 하나 가져오기
	public ProductVO getProduct(String pseq) { // ProductVO 한 개를 반환함
		ProductVO product = null; // 함수 리턴 값
		String sql = "select * from product where pseq=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pseq); // sql의 첫번째 ? 에 pseq 정보 대입
			rs = pstmt.executeQuery();
			if (rs.next()) { // 데이터를 하나만 가져오기 때문에 if 사용
				product = new ProductVO();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setKind(rs.getString("kind"));
				product.setPrice1(rs.getInt("price1"));
				product.setPrice2(rs.getInt("price2"));
				product.setPrice3(rs.getInt("price3"));
				product.setContent(rs.getString("content"));
				product.setImage(rs.getString("image"));
				product.setImage1(rs.getString("image1"));
				product.setImage2(rs.getString("image2"));
				product.setImage3(rs.getString("image3"));
				product.setImage4(rs.getString("image4"));
				product.setImage5(rs.getString("image5"));
				product.setImage6(rs.getString("image6"));
				product.setCoordi(rs.getString("coordi"));
				product.setUseyn(rs.getString("useyn"));
				product.setBestyn(rs.getString("bestyn"));
				product.setIndate(rs.getTimestamp("indate"));
				product.setBrand(rs.getString("brand"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return product;
	}

	// 상품 종류를 사용하여 상품 목록 가져오기
	public ArrayList<ProductVO> listKindProduct(String kind) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String sql = "select * from product where kind=?"; // 상품 종류인 kind에 해당하는 상품 목록 출력

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kind); // sql문에 1번째 물음표에 kind 대입
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ProductVO product = new ProductVO();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setPrice1(rs.getInt("price1"));
				product.setPrice2(rs.getInt("price2"));

				System.out.println(rs.getString("image"));

			
				    product.setImage(rs.getString("image"));
				

				product.setBrand(rs.getString("brand"));
				product.setKind(rs.getString("kind"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}

	public int totalRecord(String product_name) {
		int total_pages = 0;
		String sql = "select count(*) from product where name like '%'||?||'%'";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet pageset = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			if (product_name.equals("")) {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, product_name);
			}
			pageset = pstmt.executeQuery();

			if (pageset.next()) {
				total_pages = pageset.getInt(1);
				pageset.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, pageset);
		}
		return total_pages;
	}

	static int view_rows = 5; // 페이지 개수
	static int counts = 5; // 한 페이지에 나타낼 상품의 개수

	// 페이지 이동을 위한 메소드
	public String pageNumber(int tpage, String name) {
		String str = "";

		int total_pages = totalRecord(name);
		int page_count = total_pages / counts + 1;

		if (total_pages % counts == 0) {
			page_count--;
		}
		if (tpage < 1) {
			tpage = 1;
		}

		int start_page = tpage - (tpage % view_rows) + 1;
		int end_page = start_page + (counts - 1);

		if (end_page > page_count) {
			end_page = page_count;
		}
		if (start_page > view_rows) {
			str += "<a href='NonageServlet?command=admin_product_list&tpage=1&key=" + name
					+ "'>&lt;&lt;</a>&nbsp;&nbsp;";
			str += "<a href='NonageServlet?command=admin_product_list&tpage=" + (start_page - 1);

			str += "&key=<%=product_name%>'>&lt;</a>&nbsp;&nbsp;";
		}

		for (int i = start_page; i <= end_page; i++) {
			if (i == tpage) {
				str += "<font color=red>[" + i + "]&nbsp;&nbsp;</font>";
			} else {
				str += "<a href='NonageServlet?command=admin_product_list&tpage=" + i + "&key=" + name + "'>[" + i
						+ "]</a>&nbsp;&nbsp;";
			}
		}
		if (page_count > end_page) {
			str += "<a href='NonageServlet?command=admin_product_list&tpage=" + (end_page + 1) + "&key=" + name
					+ "'> &gt; </a>&nbsp;&nbsp;";
			str += "<a href='NonageServlet?command=admin_product_list&tpage=" + page_count + "&key=" + name
					+ "'> &gt; &gt; </a>&nbsp;&nbsp;";
		}
		return str;
	}

	public ArrayList<ProductVO> listProduct(int tpage, String product_name) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();

		String str = "select pseq, indate, name, price1, price2, useyn, bestyn "
				+ " from product where name like '%'||?||'%' order by pseq desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int absolutepage = 1;

		try {
			conn = DBManager.getConnection();
			absolutepage = (tpage - 1) * counts + 1;
			pstmt = conn.prepareStatement(str, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

			if (product_name.equals("")) {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, product_name);
			}

			rs = pstmt.executeQuery();

			if (rs.next()) {
				rs.absolute(absolutepage);
				int count = 0;
				while (count < counts) {
					ProductVO product = new ProductVO();
					product.setPseq(rs.getInt(1));
					product.setIndate(rs.getTimestamp(2));
					product.setName(rs.getString(3));
					product.setPrice1(rs.getInt(4));
					product.setPrice2(rs.getInt(5));
					product.setUseyn(rs.getString(6));
					product.setBestyn(rs.getString(7));
					productList.add(product);
					if (rs.isLast()) {
						break;
					}
					rs.next();
					count++;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}
	public ArrayList<ProductVO> searchProduct(int tpage, String product_name) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();

		String str = "select pseq, image, name,price2,brand"
				+ " from product where name like '%'||?||'%' order by pseq desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int absolutepage = 1;

		try {
			conn = DBManager.getConnection();
			absolutepage = (tpage - 1) * counts + 1;
			pstmt = conn.prepareStatement(str, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

			if (product_name.equals("")) {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, product_name);
			}

			rs = pstmt.executeQuery();

			if (rs.next()) {
				rs.absolute(absolutepage);
				int count = 0;
				while (count < counts) {
					ProductVO product = new ProductVO();
					product.setPseq(rs.getInt(1));
					product.setImage(rs.getString(2));
					product.setName(rs.getString(3));
					product.setPrice2(rs.getInt(4));
					product.setBrand(rs.getString(5));
					productList.add(product);
					if (rs.isLast()) {
						break;
					}
					rs.next();
					count++;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}
	public int insertProduct(ProductVO product) {
		int result = 0;

		String sql = "insert into product (" + "pseq, kind, name, price1, price2, price3, content, image) "
				+ "values(product_seq.nextval, ?, ?, ?, ? ,?, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getKind());
			pstmt.setString(2, product.getName());
			pstmt.setInt(3, product.getPrice1());
			pstmt.setInt(4, product.getPrice2());
			pstmt.setInt(5, product.getPrice3());
			pstmt.setString(6, product.getContent());
			pstmt.setString(7, product.getImage());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("추가 실패");
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	
	public int insertProductAdmin(ProductVO product) {
		int result = 0;

		String sql = "insert into product (" + "pseq, kind, name, price1, price2, price3, content, image, image1, image2, image3, image4, image5,brand,image6,coordi"
				+ ") "
				+ "values(product_seq.nextval, ?, ?, ?, ? ,?, ?, ?,?,?,?,?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getKind());
			pstmt.setString(2, product.getName());
			pstmt.setInt(3, product.getPrice1());
			pstmt.setInt(4, product.getPrice2());
			pstmt.setInt(5, product.getPrice3());
			pstmt.setString(6, product.getContent());
			pstmt.setString(7, product.getImage());
			pstmt.setString(8, product.getImage1());
			pstmt.setString(9, product.getImage2());
			pstmt.setString(10, product.getImage3());
			pstmt.setString(11, product.getImage4());
			pstmt.setString(12, product.getImage5());
			pstmt.setString(13, product.getBrand());
			pstmt.setString(14, product.getImage6());
			pstmt.setString(15, product.getCoordi());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("추가 실패");
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	public int updateProduct(ProductVO product) {
		int result = -1;
		String sql = "update product set kind=?, useyn=?, name=?"
				+ ", price1=?, price2=?, price3=?, content=?, image=?, bestyn=? " + "where pseq=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getKind());
			pstmt.setString(2, product.getUseyn());
			pstmt.setString(3, product.getName());
			pstmt.setInt(4, product.getPrice1());
			pstmt.setInt(5, product.getPrice2());
			pstmt.setInt(6, product.getPrice3());
			pstmt.setString(7, product.getContent());
			pstmt.setString(8, product.getImage());
			pstmt.setString(9, product.getBestyn());
			pstmt.setInt(10, product.getPseq());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	// 관리자 모드에서 사용하는 메소드
	public ArrayList<OrderVO> listOrder(String member_name) {
		ArrayList<OrderVO> orderList = new ArrayList<OrderVO>();
		String sql = "select * from order_view where mname like '%'||?||'%' " + " order by result, oseq desc";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			if (member_name == "") {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, member_name);
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {
				OrderVO orderVO = new OrderVO();
				orderVO.setOdseq(rs.getInt("ODSEQ"));
				orderVO.setOseq(rs.getInt("OSEQ"));
				orderVO.setId(rs.getString("ID"));
				orderVO.setPseq(rs.getInt("PSEQ"));
				orderVO.setMname(rs.getString("MNAME"));
				orderVO.setPname(rs.getString("PNAME"));
				orderVO.setQuantity(rs.getInt("QUANTITY"));
				orderVO.setZipNum(rs.getString("ZIP_NUM"));
				orderVO.setAddress(rs.getString("ADDRESS"));
				orderVO.setPhone(rs.getString("PHONE"));
				orderVO.setIndate(rs.getTimestamp("INDATE"));
				orderVO.setPrice2(rs.getInt("PRICE2"));
				orderVO.setResult(rs.getString("RESULT"));
				orderList.add(orderVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return orderList;
	}

	public void updateOrderResult(String oseq) {
		String sql = "update order_detail set result='2' where odseq=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, oseq);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

}
