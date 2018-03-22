package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.BDto;
import dto.MDto;

public class MDao {
	
	DataSource datasource;
	
	public static final int MEMBER_NONEXISTENT = 0;
	public static final int MEMBER_EXISTENT = 1;
	public static final int MEMBER_FAIL = 0;
	public static final int MEMBER_SUCCESS = 1;
	public static final int MEMBER_LOGIN_PW_NO_GOOD = 0;
	public static final int MEMBER_LOGIN_SUCCESS = 1;
	public static final int MEMBER_LOGIN_IS_NOT = -1;
	
	
	private static MDao instance = new MDao();
	
	public static MDao getInstance() {
		return instance;
	}
	private MDao() {
		try {
			Context context = new InitialContext();
			datasource = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
//	회원정보 DAO
	
	public int mjoin(String id, String pw, String name, int gender, int phone1, int phone2, String email1,
			String email2, String address) {
		
		int re = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "INSERT INTO mk1_member (mIdx, mId, mPw, mName, mGender, mPhone1, mPhone2, mEmail1, mEmail2, mAddress) values (mk1_member_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setInt(4, gender);
			pstmt.setInt(5, phone1);
			pstmt.setInt(6, phone2);
			pstmt.setString(7, email1);
			pstmt.setString(8, email2);
			pstmt.setString(9, address);
			int check = pstmt.executeUpdate();
			
			if(check == MDao.MEMBER_SUCCESS) {
				re = MDao.MEMBER_SUCCESS;
			} else {
				re = MDao.MEMBER_FAIL;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return re;
	}

	public int mlogin(String id, String pw) {
		
		int re = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "SELECT mPw FROM mk1_member WHERE mId = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("mPw").equals(pw)) {
					re = MDao.MEMBER_LOGIN_SUCCESS;
				} else {
					re = MDao.MEMBER_LOGIN_PW_NO_GOOD;
				}
			} else {
				re = MDao.MEMBER_LOGIN_IS_NOT;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return re;
	}
	public MDto mModifyGetMember(String id) {
		
		MDto dto = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "SELECT * FROM mk1_member WHERE mId = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String mPw = rs.getString("mPw");
				String mName = rs.getString("mName");
				int mGender = rs.getInt("mGender");
				int mPhone1 = rs.getInt("mPhone1");
				int mPhone2 = rs.getInt("mPhone2");
				String mEmail1 = rs.getString("mEmail1");
				String mEmail2 = rs.getString("mEmail2");
				String mAddress = rs.getString("mAddress");
				
				dto = new MDto(mPw, mName, mGender, mPhone1, mPhone2, mEmail1, mEmail2, mAddress);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dto;
	}
	
	public int mModify(String id, String name, int gender, int phone1, int phone2, String email1, String email2,
			String address) {

		int re = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "UPDATE mk1_member SET mName = ?, mGender = ?, mPhone1 = ?, mPhone2 = ?, mEmail1 = ?, mEmail2 = ?, mAddress = ? WHERE mId = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, gender);
			pstmt.setInt(3, phone1);
			pstmt.setInt(4, phone2);
			pstmt.setString(5, email1);
			pstmt.setString(6, email2);
			pstmt.setString(7, address);
			pstmt.setString(8, id);
			int check = pstmt.executeUpdate();
			
			if(check == MDao.MEMBER_FAIL) {
				re = MDao.MEMBER_FAIL;				
			} else {
				re = MDao.MEMBER_SUCCESS;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return re;
	}
	
	
	
//	게시판 DAO
	
	public int bWrite(String id, String title, String content) {

		int re = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "INSERT INTO mk1_board (bIdx, bId, bTitle, bContent) values (mk1_board_seq.nextval, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			int check = pstmt.executeUpdate();
			
			if(check == MEMBER_FAIL) {
				re = MDao.MEMBER_FAIL;
			} else {
				re = MDao.MEMBER_SUCCESS;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return re;
	}
	
	public ArrayList<BDto> bList() {

		ArrayList<BDto> dtos = new ArrayList<BDto>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "SELECT * FROM mk1_board ORDER BY bIdx DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int bIdx = rs.getInt("bIdx");
				String bId = rs.getString("bId");
				String bTitle = rs.getString("bTitle");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				
				BDto dto = new BDto(bIdx, bId, bTitle, bDate, bHit);
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dtos;
	}
	
	public BDto bContentView(String idx) {

		upHit(idx);
		
		BDto dto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "SELECT * FROM mk1_board WHERE bIdx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int bIdx = rs.getInt("bIdx");
				String bId = rs.getString("bId");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				
				dto = new BDto(bIdx, bId, bTitle, bContent, bDate, bHit);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dto;
	}
	
	private void upHit(String idx) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "UPDATE mk1_board SET bHit = bHit + 1 WHERE bIdx= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, idx);
			int check = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public BDto bContentModify(String idx) {

		BDto dto = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "SELECT * FROM mk1_board WHERE bIdx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int bIdx = rs.getInt("bIdx");
				String bId = rs.getString("bId");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				
				dto = new BDto(bIdx, bId, bTitle, bContent, bDate, bHit);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dto;
	}
	
	public int bModify(String idx, String title, String content) {

		int re = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "UPDATE mk1_board SET bTitle = ?, bContent = ? WHERE bIdx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, idx);
			int check = pstmt.executeUpdate();
			
			if(check == MDao.MEMBER_FAIL) {
				re = MDao.MEMBER_FAIL;				
			} else {
				re = MDao.MEMBER_SUCCESS;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return re;
	}
	
	public int bDelete(String idx) {

		int re = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "DELETE FROM mk1_board WHERE bIdx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, idx);
			int check = pstmt.executeUpdate();
			
			if(check == MDao.MEMBER_FAIL) {
				re = MDao.MEMBER_FAIL;				
			} else {
				re = MDao.MEMBER_SUCCESS;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return re;
	}
	
}
