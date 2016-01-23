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

		//1.对表单字段进行合法性校验
		RegisterForm form = WebUtils.request2Bean(request, RegisterForm.class);
		boolean b = form.validate();
		if(b){
			//3.如果校验成功则调用service处理注册请求
			BusinessServiceImpl service = new BusinessServiceImpl();
			User user = new User();
			WebUtils.copyBean(form, user);
			try {
				service.register(user);
				//6.如果service处理成功，跳转到网站的全局消息显示页面，为用户显示友好信息
				request.setAttribute("message", "恭喜你，注册成功！！！");
				request.getRequestDispatcher("/message.jsp").forward(request, response);
				return;
			} catch (UserExistException e) {
				//4.如果service处理不成功，并且不成功的原因是注册用户已经存在，则跳回到注册页面显示注册用户已经存在信息
				request.setAttribute("message", "注册用户已存在！！！");
				request.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(request, response);
				return;
			}catch (Exception e) {
				//5.如果service处理不成功，并且不成功的原因是其他问题的话，跳转到网站的全局消息显示页面，为用户显示友好信息
				e.printStackTrace();
				form.getErrors().put("person_name", "注册用户已存在！！！");
				request.setAttribute("form", form);
				request.getRequestDispatcher("/message.jsp").forward(request, response);
				return;
			}
		}else{
			//2. 如果校验失败，跳回到表单页面，回显校验失败信息
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
