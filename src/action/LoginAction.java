package action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;


import javax.servlet.http.*;
import java.lang.Object;
import jdbc.ConnectionProvider;
import dao.*;
import jdbc.*;
import dto.*;

public class LoginAction implements Action {
	private String mode = null;
	public LoginAction(String mode) {
		this.mode = mode;
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(true);
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			MemberDAO MemberDAO = dao.MemberDAO.getInstance();
			if(mode.contentEquals("login")) {
				String id = request.getParameter("userID");
				String pw = request.getParameter("userPW");
				
				String save = request.getParameter("save");
				if(save != null && save.equals("on")) {
					Cookie cookieID = new Cookie("userID", id);
					response.addCookie(cookieID);
					Cookie cookiePW = new Cookie("userPW", pw);
					response.addCookie(cookiePW);
				}
				
				MemberBean member = MemberDAO.select(conn, id, pw);
				
				if(member == null) {
					throw new NotFoundException("Member Not Found ID=" + id + "PW=" + pw);
				}
				session.setMaxInactiveInterval(10*60);
				session.setAttribute("userID", id);
				session.setAttribute("userPW", pw);
				
			} else if(mode.contentEquals("logout")) {
				session.removeAttribute("userID");
				session.removeAttribute("userPW");
			}
		} catch(NotFoundException e) {
			System.out.println("Member NotFoundException");
			try {
				response.sendRedirect("login.jsp?status=failed");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	} 
}