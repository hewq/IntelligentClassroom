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
			errors.put("person_num", "Ա���Ų���Ϊ�գ�");
		} else {
			if (!this.person_num.matches("[0-9]{8}")) {
				isOK = false;
				errors.put("person_num", "Ա���ű�����8λ�����֣�");
			}
		}
		
		if (this.person_name == null || this.person_name.trim().equals("")) {
			isOK = false;
			errors.put("person_name", "�û�������Ϊ�գ�");
		} else {
			if (!this.person_name.matches("^([\u4e00-\u9fa5]+)$")) {
				isOK = false;
				errors.put("person_num", "�û��������Ǻ��֣�");
			}
		}
		
		if (this.person_age == null || this.person_age.trim().equals("")) {
			isOK = false;
			errors.put("person_age", "���䲻��Ϊ�գ�");
		} else {
			if (!this.person_age.matches("[0-9]{1,3}")) {
				isOK = false;
				errors.put("person_age", "���������1-3λ�����֣�");
			}
		}

		if (this.person_account == null || this.person_account.trim().equals("")) {
			isOK = false;
			errors.put("person_account", "�˺Ų���Ϊ�գ�");
		} else {
			if (!this.person_account.matches("[a-zA-Z]{3,8}")) {
				isOK = false;
				errors.put("person_account", "�˺ű�����3-8λ����ĸ��");
			}
		}
		
		if (this.person_passwork == null || this.person_passwork.trim().equals("")) {
			isOK = false;
			errors.put("person_passwork", "���벻��Ϊ�գ�");
		} else {
			if (!this.person_passwork.matches("\\d{3,8}")) {
				isOK = false;
				errors.put("person_passwork", "���������3-8λ�����֣�");
			}
		}

		if (this.person_power == null || this.person_power.trim().equals("")) {
			isOK = false;
			errors.put("person_power", "Ȩ�޲���Ϊ�գ�");
		} else {
			if (!this.person_power.matches("[0-9]{1}")) {
				isOK = false;
				errors.put("person_power", "Ȩ�ޱ�����1λ���֣�");
			}
		}

		if (this.person_cardCode == null || this.person_cardCode.trim().equals("")) {
			isOK = false;
			errors.put("person_cardCode", "Person_cardCode����Ϊ�գ�");
		} else {
			if (!this.person_cardCode.matches("[0-9]{8}")) {
				isOK = false;
				errors.put("person_cardCode", "Person_cardCode��ʽ����");
			}
		}

		return isOK;
	}
}
