package action;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.*;
import dto.*;
import jdbc.ConnectionProvider;

public class MenuListViewAction implements Action{
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = null;
		try {
			
			int storeid = Integer.parseInt(request.getParameter("storeid")); 
			
			List<MenuBean> mList = null;
			StoreBean st = null;
			conn = ConnectionProvider.getConnection();
			StoreDAO dao2 = StoreDAO.getInstance();
			st = dao2.select(conn, storeid);
			MenuDAO dao = MenuDAO.getInstance(); // getInstance
			mList = dao.selectList(conn, storeid); // selectList by storeid
			request.setAttribute("storeid", storeid);
			request.setAttribute("mList", mList);
			request.setAttribute("st", st);
			
			System.out.println(mList);
			// ¸Þ´º List
		} catch (SQLException e) {
			throw new ServiceException("MenuListViewAction Error " + e.getMessage());
		} finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
