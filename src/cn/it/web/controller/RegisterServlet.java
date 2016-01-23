package cn.it.web.controller;

import java.io.IOException;

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

		//1.�Ա��ֶν��кϷ���У��
		RegisterForm form = WebUtils.request2Bean(request, RegisterForm.class);
		boolean b = form.validate();
		if(b){
			//3.���У��ɹ������service����ע������
			BusinessServiceImpl service = new BusinessServiceImpl();
			User user = new User();
			WebUtils.copyBean(form, user);
			try {
				service.register(user);
				//6.���service����ɹ�����ת����վ��ȫ����Ϣ��ʾҳ�棬Ϊ�û���ʾ�Ѻ���Ϣ
				request.setAttribute("message", "��ϲ�㣬ע��ɹ�������");
				request.getRequestDispatcher("/message.jsp").forward(request, response);
				return;
			} catch (UserExistException e) {
				//4.���service�����ɹ������Ҳ��ɹ���ԭ����ע���û��Ѿ����ڣ������ص�ע��ҳ����ʾע���û��Ѿ�������Ϣ
				request.setAttribute("message", "ע���û��Ѵ��ڣ�����");
				request.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(request, response);
				return;
			}catch (Exception e) {
				//5.���service�����ɹ������Ҳ��ɹ���ԭ������������Ļ�����ת����վ��ȫ����Ϣ��ʾҳ�棬Ϊ�û���ʾ�Ѻ���Ϣ
				e.printStackTrace();
				form.getErrors().put("person_name", "ע���û��Ѵ��ڣ�����");
				request.setAttribute("form", form);
				request.getRequestDispatcher("/message.jsp").forward(request, response);
				return;
			}
		}else{
			//2. ���У��ʧ�ܣ����ص���ҳ�棬����У��ʧ����Ϣ
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
