package action;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.*;
import dao.*;
import dto.*;
import action.*;

import jdbc.ConnectionProvider;

public class ListAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = null;
		try {
			
			String category = request.getParameter("category");
			
			conn = ConnectionProvider.getConnection();
			StoreDAO dao = StoreDAO.getInstance();
			List<StoreBean> sList = dao.selectList(conn, category);
			if(category.contentEquals("wholefood")) {
				sList = dao.selectList(conn);
			}
			request.setAttribute("category", category);
			request.setAttribute("sList", sList);
			
			System.out.println("category=" + category);
			
		} catch (SQLException e) {
			throw new ServiceException("List Action Error " + e.getMessage());
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
