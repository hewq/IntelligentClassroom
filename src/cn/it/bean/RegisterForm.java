package cn.it.bean;

import java.util.HashMap;
import java.util.Map;

public class RegisterForm {

	private String person_num;
	private String person_name;
	private String person_age;
	private String person_account;
	private String person_passwork;
	private String person_power;
	private String person_cardCode;
	private Map errors = new HashMap();

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

	public String getPerson_passwork() {
		return person_passwork;
	}

	public void setPerson_passwork(String person_passwork) {
		this.person_passwork = person_passwork;
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
				errors.put("person_num", "用户名必须是汉字！");
			}
		}
		
		if (this.person_age == null || this.person_age.trim().equals("")) {
			isOK = false;
			errors.put("person_age", "年龄不能为空！");
		} else {
			if (!this.person_age.matches("[0-9]{1,3}")) {
				isOK = false;
				errors.put("person_age", "年龄必须是1-3位的数字！");
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
		
		if (this.person_passwork == null || this.person_passwork.trim().equals("")) {
			isOK = false;
			errors.put("person_passwork", "密码不能为空！");
		} else {
			if (!this.person_passwork.matches("\\d{3,8}")) {
				isOK = false;
				errors.put("person_passwork", "密码必须是3-8位的数字！");
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
			if (!this.person_cardCode.matches("[0-9]{8}")) {
				isOK = false;
				errors.put("person_cardCode", "Person_cardCode格式不对");
			}
		}

		return isOK;
	}
}
