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

	private Map<String,String> tips = new HashMap<String,String>();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RegisterForm form = new RegisterForm();
		form.init();
		tips = form.getTips();
		String flag = request.getParameter("flag");
		/*
		if(!(flag == null)){
			String person_num =  request.getParameter("person_num");
			String person_name =  request.getParameter("person_name");
			String person_age =  request.getParameter("person_age");
			String person_account =  request.getParameter("person_account");
			String person_password =  request.getParameter("person_password");
			String person_password2 =  request.getParameter("person_password2");
			String person_power =  request.getParameter("person_power");
			String person_cardCode =  request.getParameter("person_cardCode");
			
			errors.put("person_num", person_num);
			errors.put("person_name", person_name);
			errors.put("person_age", person_age);
			errors.put("person_account", person_account);
			errors.put("person_password", person_password);
			errors.put("person_password2", person_password2);
			errors.put("person_power", person_power);
			errors.put("person_cardCode", person_cardCode);
		}
		 */
		request.setAttribute("form", form);
		request.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
