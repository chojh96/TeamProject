package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import dto.StoreBean;

public class StoreDAO {
	private StoreDAO() {
	}
	
	private static StoreDAO instance = new StoreDAO();
	public static StoreDAO getInstance() {
		return instance;
	}
	
	// insert
	public int insert(Connection conn, StoreBean st) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			String sql = "insert into stores (name, category, address, phone) values (?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, st.getName());
			pstmt.setString(2, st.getCategory());
			pstmt.setString(3, st.getAddress());
			pstmt.setString(4, st.getPhone());
			return pstmt.executeUpdate();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}

	// delete
	public int delete(Connection conn, int id) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			String sql = "delete from stores where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			return pstmt.executeUpdate();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}

	// edit
	public int edit(Connection conn, StoreBean st) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "update stores set name=?, category=?, address=?, phone=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, st.getName());
			pstmt.setString(2, st.getCategory());
			pstmt.setString(3, st.getAddress());
			pstmt.setString(4, st.getPhone());
			pstmt.setInt(5, st.getId());
			return pstmt.executeUpdate();
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}
	
	// select(find/get)
	public StoreBean select(Connection conn, int id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from stores where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return createFromResultSet(rs);
			}
			else {
				return null;
			}
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}
	
	public StoreBean createFromResultSet(ResultSet rs) throws SQLException {
		int id = rs.getInt("id");
		String name = rs.getString("name");
		String category = rs.getString("category");
		String address = rs.getString("address");
		String phone = rs.getString("phone");
		StoreBean st = new StoreBean(id, name, category, address, phone);
		return st;
	}
	
	// selectList
	public List<StoreBean> selectList(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from stores";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<StoreBean> sList = new ArrayList<>();
			while (rs.next()) {
				sList.add(createFromResultSet(rs));
			}
			return sList;
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}
	
	// selectList by category
	public List<StoreBean> selectList(Connection conn, String category) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from stores where category =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();
			List<StoreBean> sList = new ArrayList<>();
			while (rs.next()) {
				sList.add(createFromResultSet(rs));
			}
			return sList;
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}
}
