package com.dss.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dss.dto.LikeCartVO;
import com.dss.dto.ProductVO;

import util.DBManager;

public class LikeCartDAO {
	private LikeCartDAO() {
	}

	private static LikeCartDAO instance = new LikeCartDAO();

	public static LikeCartDAO getInstance() {
		return instance;
	}

	public void insertCart(LikeCartVO likecartVO) {
		String sql = "insert into likecart(cseq, id, pseq, quantity) values(cart_seq.nextval, ?, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, likecartVO.getId());
			pstmt.setInt(2, likecartVO.getPseq());
			pstmt.setInt(3, likecartVO.getQuantity());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public ArrayList<LikeCartVO> listCart(String userid) {
		ArrayList<LikeCartVO> cartList = new ArrayList<LikeCartVO>();
		String sql = "select * from likecart_view where id=? order by cseq desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				LikeCartVO cartVO = new LikeCartVO();
				cartVO.setCseq(rs.getInt(1));
				cartVO.setId(rs.getString(2));
				cartVO.setPseq(rs.getInt(3));
				cartVO.setMname(rs.getString(4));
				cartVO.setPname(rs.getString(5));
				cartVO.setQuantity(rs.getInt(6));
				cartVO.setIndate(rs.getDate(7));
				cartVO.setPrice2(rs.getInt(8));
				cartList.add(cartVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return cartList;
	}
	
	public void deleteCart(int pseq, String id) { // 기존 카트는 cseq, 여긴 pseq
		String sql = "delete likecart where pseq=? and id=?";
		
		Connection conn = null;
		PreparedStatement pstmt =null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pseq);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public int FindProductList(int pseq, String id) {
		// 아무거도 없으면 -1, 있으면 0 반환
		int result = -1; 
		
		//System.out.println("pseq : " +pseq);
		String sql = "select * from likecart where pseq=? and id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pseq);
			pstmt.setString(2, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 0;
			}
		} catch ( Exception e ) {
			e.printStackTrace();
			return result;
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}
}
