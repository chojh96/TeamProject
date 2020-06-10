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

		if (command.equals("/LoginAction.do")) { // 로그인
			action = new LoginAction("login");
			action.execute(request, response);
			response.sendRedirect("index.jsp");
		} else if (command.equals("/LogoutAction.do")) { // 로그아웃
			action = new LoginAction("logout");
			action.execute(request, response);
			response.sendRedirect("index.jsp");
		} else if (command.equals("/JoinMemberAction.do")) { // 회원가입
			action = new MemberAction("join");
			action.execute(request, response);
			response.sendRedirect("index.jsp");
		} else if (command.contentEquals("/ListViewAction.do")) { // category별 가게 리스트
			action = new ListAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("listView.jsp");
			rd.forward(request, response);
		} else if (command.contentEquals("/CartAction.do")) { // 장바구니
			action = new CartAction("add");
			action.execute(request, response);
			response.sendRedirect("cart.jsp");
		} else if (command.contentEquals("/CartDeleteAction.do")) { // 장바구니 비우기
			action = new CartAction("delete");
			action.execute(request, response);
			response.sendRedirect("cart.jsp");
		} else if (command.contentEquals("/MenuListViewAction.do")) { // 메뉴
			action = new MenuListViewAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("menuView.jsp");
			rd.forward(request, response);
		}
	}
}
