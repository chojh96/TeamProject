package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.MenuBean;
import dto.StoreBean;

public class MenuDAO {
	private MenuDAO() {
	}

	private static MenuDAO instance = new MenuDAO();

	public static MenuDAO getInstance() {
		return instance;
	}

	// insert
	public int insert(Connection conn, MenuBean me) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			String sql = "insert into menu (name, value, storeid) values (?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, me.getName());
			pstmt.setInt(2, me.getValue());
			pstmt.setInt(3, me.getStoreid());
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
			String sql = "delete from menu where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			return pstmt.executeUpdate();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}

	// select(find/get)
	public MenuBean select(Connection conn, int id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from menu where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return createFromResultSet(rs);
			} else {
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

	public MenuBean createFromResultSet(ResultSet rs) throws SQLException {
		int id = rs.getInt("id");
		String name = rs.getString("name");
		int value = rs.getInt("value");
		int storeid = rs.getInt("storeid");
		MenuBean me = new MenuBean(id, name, value, storeid);
		return me;
	}

	// selectList
	public List<MenuBean> selectList(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from menu";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<MenuBean> mList = new ArrayList<>();
			while (rs.next()) {
				mList.add(createFromResultSet(rs));
			}
			return mList;
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}
	
	
	// selectList by storeid 
	public List<MenuBean> selectList(Connection conn, int storeid) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from menu where storeid =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, storeid);
			rs = pstmt.executeQuery();
			List<MenuBean> mList = new ArrayList<>();
			while (rs.next()) {
				mList.add(createFromResultSet(rs));
			}
			return mList;
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
