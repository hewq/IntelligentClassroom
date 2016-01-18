<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>REGISTER</title>
  </head>
  
  <body>
    <form action="${pageContext.request.contextPath }/servlet/RegisterServlet" method="post">
    	<table>
    		<tr>
    			<td>Person_num</td>
    			<td>
    				<input type="text" name="person_num" />
    				<span >${form.errors.person_num }</span>
    			</td>
    		</tr>
    		<tr>
    			<td>Person_name</td>
    			<td>
    				<input type="text" name="person_name" />
    				<span >${form.errors.person_name }</span>
    			</td>
    		</tr>
    		<tr>
    			<td>Person_age</td>
    			<td>
    				<input type="text" name="person_age" />
    				<span >${form.errors.person_age }</span>
    			</td>
    		</tr>
    		<tr>
    			<td>Person_account</td>
    			<td>
    				<input type="text" name="person_account" />
    				<span >${form.errors.person_account }</span>
    			</td>
    		</tr>
    		<tr>
    			<td>Person_password</td>
    			<td>
    				<input type="password" name="person_passwork" />
    				<span >${form.errors.person_passwork }</span>
    			</td>
    		</tr>
    		<tr>
    			<td>Person_power</td>
    			<td>
    				<input type="text" name="person_power" />
    				<span >${form.errors.person_power }</span>
    			</td>
    		</tr>
    		<tr>
    			<td>Person_cardCode</td>
    			<td>
    				<input type="text" name="person_cardCode" />
    				<span >${form.errors.person_cardCode }</span>
    			</td>
    		</tr>
    	</table>
    	<input type="submit" name="register" value="注册">
    </form>
  </body>
</html>
