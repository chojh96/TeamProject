package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import action.*;

public class Controller extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");

		Action action = null;

		if (command.equals("/LoginAction.do")) { // �α���
			action = new LoginAction("login");
			action.execute(request, response);
			response.sendRedirect("index.jsp");
		} else if (command.equals("/LogoutAction.do")) { // �α׾ƿ�
			action = new LoginAction("logout");
			action.execute(request, response);
			response.sendRedirect("index.jsp");
		} else if (command.equals("/JoinMemberAction.do")) { // ȸ������
			action = new MemberAction("join");
			action.execute(request, response);
			response.sendRedirect("index.jsp");
		} else if (command.contentEquals("/ListViewAction.do")) { // category�� ���� ����Ʈ
			action = new ListAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("listView.jsp");
			rd.forward(request, response);
		} else if (command.contentEquals("/CartAction.do")) { // ��ٱ���
			action = new CartAction("add");
			action.execute(request, response);
			response.sendRedirect("cart.jsp");
		} else if (command.contentEquals("/CartDeleteAction.do")) { // ��ٱ��� ����
			action = new CartAction("delete");
			action.execute(request, response);
			response.sendRedirect("cart.jsp");
		} else if (command.contentEquals("/MenuListViewAction.do")) { // �޴�
			action = new MenuListViewAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("menuView.jsp");
			rd.forward(request, response);
		}
	}
}
