package cn.it.bean;

import java.util.HashMap;
import java.util.Map;

public class RegisterForm {

	private String person_num;
	private String person_name;
	private String person_age;
	private String person_account;
	private String person_password;
	private String person_password2;
	private String person_power;
	private String person_cardCode;
	private Map errors = new HashMap();
	private Map tips = new HashMap();

	public String getPerson_num() {
		return person_num;
	}

	public void setPerson_num(String person_num) {
		this.person_num = person_num;
	}

	public String getPerson_name() {
		return person_name;
	}

	public void setPerson_name(String person_name) {
		this.person_name = person_name;
	}

	public String getPerson_age() {
		return person_age;
	}

	public void setPerson_age(String person_age) {
		this.person_age = person_age;
	}

	public String getPerson_account() {
		return person_account;
	}

	public void setPerson_account(String person_account) {
		this.person_account = person_account;
	}

	public String getPerson_password() {
		return person_password;
	}

	public void setPerson_password(String person_password) {
		this.person_password = person_password;
	}

	public String getPerson_password2() {
		return person_password2;
	}

	public void setPerson_password2(String person_password2) {
		this.person_password2 = person_password2;
	}

	public String getPerson_power() {
		return person_power;
	}

	public void setPerson_power(String person_power) {
		this.person_power = person_power;
	}

	public String getPerson_cardCode() {
		return person_cardCode;
	}

	public void setPerson_cardCode(String person_cardCode) {
		this.person_cardCode = person_cardCode;
	}

	public Map getErrors() {
		return errors;
	}

	public void setErrors(Map errors) {
		this.errors = errors;
	}

	
	public Map getTips() {
		return tips;
	}

	public void setTips(Map tips) {
		this.tips = tips;
	}

	public void init(){
		tips.put("person_num", "8位数字。");
		tips.put("person_name", "汉字");
		tips.put("person_age", "1-3位数字。");
		tips.put("person_account", "3-8位字母。");
		tips.put("person_password", "至少6位数字或字母。");
		tips.put("person_password2", "至少6位数字或字母。");
		tips.put("person_power", "1位数字。");
		tips.put("person_cardCode", "9位数字。");
	}
	
	public boolean validate() {
		boolean isOK = true;

		if (this.person_num == null || this.person_num.trim().equals("")) {
			isOK = false;
			errors.put("person_num", "员工号不能为空！");
		} else {
			if (!this.person_num.matches("[0-9]{8}")) {
				isOK = false;
				errors.put("person_num", "员工号必须是8位的数字！");
			}
		}
		
		if (this.person_name == null || this.person_name.trim().equals("")) {
			isOK = false;
			errors.put("person_name", "用户名不能为空！");
		} else {
			if (!this.person_name.matches("^([\u4e00-\u9fa5]+)$")) {
				isOK = false;
				errors.put("person_name", "用户名必须是汉字！");
			}
		}
		
		if (this.person_age == null || this.person_age.trim().equals("")) {
			isOK = false;
			errors.put("person_age", "年龄不能为空！");
		} else {
			if (!this.person_age.matches("[0-9]{1,3}")) {
				isOK = false;
				errors.put("person_age", "年龄格式不对！");
			}
		}

		if (this.person_account == null || this.person_account.trim().equals("")) {
			isOK = false;
			errors.put("person_account", "账号不能为空！");
		} else {
			if (!this.person_account.matches("[a-zA-Z]{3,8}")) {
				isOK = false;
				errors.put("person_account", "账号必须是3-8位的字母！");
			}
		}
		
		if (this.person_password == null || this.person_password.trim().equals("")) {
			isOK = false;
			errors.put("person_password", "密码不能为空！");
		} else {
			if (!this.person_password.matches("[A-Za-z0-9]{6,}")) {
				isOK = false;
				errors.put("person_password", "密码必须是至少6位的数字或字母！");
			}
		}
		
		if (this.person_password2 == null || this.person_password2.trim().equals("")) {
			isOK = false;
			errors.put("person_password2", "密码不能为空！");
		} else {
			if (!this.person_password2.equals(this.person_password)) {
				isOK = false;
				errors.put("person_password2", "两次密码不一致！");
			}
		}
		
		if (this.person_power == null || this.person_power.trim().equals("")) {
			isOK = false;
			errors.put("person_power", "权限不能为空！");
		} else {
			if (!this.person_power.matches("[0-9]{1}")) {
				isOK = false;
				errors.put("person_power", "权限必须是1位数字！");
			}
		}

		if (this.person_cardCode == null || this.person_cardCode.trim().equals("")) {
			isOK = false;
			errors.put("person_cardCode", "Person_cardCode不能为空！");
		} else {
			if (!this.person_cardCode.matches("[0-9]{9}")) {
				isOK = false;
				errors.put("person_cardCode", "Person_cardCode格式不对");
			}
		}

		return isOK;
	}
}
