1、搭建开发环境
	1.1导开发包
		dom4j开发包
		sqljdbc驱动包
		
	1.2创建组织程序的包
		cn.it.domain
		cn.it.dao
		cn.it.dao.impl
		cn.it.web.controller
		cn.it.web.UI
		cn.it.utils
		cn.it.bean
		cn.it.service
		cn.it.service.impl
		junit.test
		
		WEB-INF/jsp
	
2、开发dao
	2.1对数据库的增删查改
3、开发service 
	3.1注册服务
		3.1.1判断用户是否存在
		3.1.2若用户不存在，则用md5加密密码，将用户添加到数据库。
	3.2登录服务
		3.2.1检测用户名和密码是否匹配
	3.3注销服务
	3.4修改账号服务
4、开发web