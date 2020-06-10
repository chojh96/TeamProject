package action;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.*;
import javax.servlet.http.*;
import dao.*;
import dto.*;
import action.*;

import jdbc.ConnectionProvider;
import java.net.URLEncoder;

public class CartAction implements Action {
	private String mode = null;
	public CartAction(String mode) {
		this.mode = mode;
	}
	public void execute(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(true);
		Connection conn = null;
		try {
			
			// Session�� ���� ��ٱ��� ��� ������
			conn = ConnectionProvider.getConnection();
			MenuBean mList = null;
			
			if(mode.contentEquals("add")) {
				int menu = Integer.parseInt(request.getParameter("choiceMenu"));
			
				MenuDAO dao = MenuDAO.getInstance(); // getInstance
				mList = dao.select(conn, menu); // selectList by storeid
			
				System.out.println(mList);
				
				// menuList select �ؿͼ� ���ο� list�� �ֱ�
				ArrayList<MenuBean> list = (ArrayList<MenuBean>)session.getAttribute("menuList");
			
				if(list == null) list = new ArrayList<MenuBean>();
				list.add(mList);
			
				session.setMaxInactiveInterval(10*60);
				session.setAttribute("menuList", list);
			
				System.out.println("list �߰� �Ϸ�" + list);
			}
			else if(mode.contentEquals("delete")) {
				session.removeAttribute("menuList");
			}
			

			
		} catch(SQLException e) {
			throw new ServiceException(" Error " + e.getMessage());
		} finally {
			
			
		}
	}

}
