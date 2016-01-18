package cn.it.utils;

import java.lang.reflect.InvocationTargetException;
import java.util.Enumeration;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.sun.org.apache.commons.beanutils.BeanUtils;

public class WebUtils {

	public static <T> T request2Bean(HttpServletRequest request,
			Class<T> beanCalss) {

		try {
			// 1、创建要封装数据的bean
			T bean = beanCalss.newInstance();

			// 2、把request中的数据整到bean中
			Enumeration e = request.getParameterNames();
			while (e.hasMoreElements()) {
				String name = (String) e.nextElement();
				String value = request.getParameter(name);
				BeanUtils.setProperty(bean, name, value);
			}

			return bean;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}

	// 产生唯一的ID
	public static String generateID() {
		return UUID.randomUUID().toString();
	}
	
	public static void copyBean(Object src,Object dest){
		try {
			BeanUtils.copyProperties(dest, src);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
}
