package cn.it.web.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.bean.RegisterForm;
import cn.it.domain.User;
import cn.it.exception.UserExistException;
import cn.it.service.impl.BusinessServiceImpl;
import cn.it.utils.WebUtils;

public class RegisterServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		

		// 1.�Ա��ֶν��кϷ���У��
		RegisterForm form = WebUtils.request2Bean(request, RegisterForm.class);
		Map<String, String> errors = new HashMap<String, String>();
		errors = form.getErrors();
		boolean b = form.validate();
		if (b) {
			// 3.���У��ɹ������service����ע������
			BusinessServiceImpl service = new BusinessServiceImpl();
			User user = new User();
			WebUtils.copyBean(form, user);
			try {
				service.register(user);
				// 6.���service����ɹ�����ת����վ��ȫ����Ϣ��ʾҳ�棬Ϊ�û���ʾ�Ѻ���Ϣ
				response.sendRedirect(request.getContextPath()
						+ "/servlet/MessageUIServlet");
				return;
			} catch (UserExistException e) {
				// 4.���service�����ɹ������Ҳ��ɹ���ԭ����ע���û��Ѿ����ڣ������ص�ע��ҳ����ʾע���û��Ѿ�������Ϣ
				request.setAttribute("message", "ע���û��Ѵ��ڣ�����");
				response.sendRedirect(request.getContextPath()
						+ "/servlet/RegisterUIServlet?message=1");
				return;
			} catch (Exception e) {
				// 5.���service�����ɹ������Ҳ��ɹ���ԭ������������Ļ�����ת����վ��ȫ����Ϣ��ʾҳ�棬Ϊ�û���ʾ�Ѻ���Ϣ
				e.printStackTrace();
				form.getErrors().put("person_name", "ע���û��Ѵ��ڣ�����");
				request.setAttribute("form", form);
				request.getRequestDispatcher("/message.jsp").forward(request,
						response);
				return;
			}
		} else {
			// 2. ���У��ʧ�ܣ����ص���ҳ�棬����У��ʧ����Ϣ
			/*
			response.sendRedirect(request.getContextPath()
					+ "/servlet/RegisterUIServlet?flag=1&person_num="+errors.get("person_num")+"&person_name="+errors.get("person_name")+"&" +
					"person_age="+errors.get("person_age")+"&person_account="+errors.get("person_account")+"&person_password="+errors.get("person_password")+"&" +
					"person_password2="+errors.get("person_password2")+"&person_power="+errors.get("person_power")+"&person_cardCode="+errors.get("person_cardCode"));
			*/
			request.setAttribute("form", form);
			request.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(request, response);
			return;
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
