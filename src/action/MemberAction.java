package action;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Calendar;
import java.sql.Date;

import javax.servlet.http.*;

import dao.*;
import jdbc.*;
import dto.*;

public class MemberAction implements Action {
	private String mode = null;
	public MemberAction(String mode) {
		this.mode = mode;
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(true);
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MemberDAO memberDAO = dao.MemberDAO.getInstance();
			if(mode.contentEquals("join")) {
				String id = request.getParameter("memberId");
				String password = request.getParameter("memberPassword");
				String name = request.getParameter("memberName");
				String address = request.getParameter("memberAddress");
				String phonenumber = request.getParameter("memberPhone");
				
				MemberBean member = new MemberBean(id, password, name, address, phonenumber);
				memberDAO.insert(conn, member);
		}
	} catch(SQLException e) {
		throw new ServiceException("Member db access error" + e.getMessage(), e);
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
