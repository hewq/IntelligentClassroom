package cn.it.web.UI;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.bean.RegisterForm;
import cn.it.utils.WebUtils;

public class RegisterUIServlet extends HttpServlet {

	private Map errors = new HashMap();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RegisterForm form = new RegisterForm();
		form.init();
		errors = form.getErrors();
		request.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
