<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
<link rel="stylesheet" href="style/drp.css">
<script type="text/javascript" src="script/jquery/jquery-1.4.4.js"></script>
<script type="text/javascript" src="script/user_validate.js"></script>
<script type="text/javascript">
	function goBack() {
		window.self.location = "user_maint.jsp";
	}

	function addUser() {
		var userId = document.getElementById("userId");
		var c1= validate_userId(userId);
		var userName=document.getElementById("userName");
		var c2=validate_userName(userName);
		var password=document.getElementById("password");
		var c3=validate_password(password);
		var contactTel=document.getElementById("contactTel");
		var c4=validate_contactTel(contactTel);
		var email=document.getElementById("email");
		var c5=validate_email(email);
		if(c1&&c2&&c3&&c4&&c5){
			var userForm=document.getElementById("userForm");
			userForm.action="<%=basePath%>sysmgr/UserController?command=add";
			userForm.submit();
		}
	}
	
	
</script>
</head>

<body class="body1">
<form  name="userForm" target="_self" id="userForm" method="post">
<div align="center">
<table width="95%" border="0" cellspacing="2" cellpadding="2">
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>
<table width="95%" border="0" cellspacing="0" cellpadding="0" height="25">
	<tr>
		<td width="522" class="p1" height="25" nowrap>
		<img src="images/mark_arrow_03.gif" width="14" height="14"> &nbsp; <b>系统管理&gt;&gt;用户维护&gt;&gt;添加</b></td>
	</tr>
</table>
<hr width="97%" align="center" size=0>
<table width="95%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td align="right" width="22%" height="29">
		<div align="right"><font color="#FF0000">*</font>用户代码:&nbsp;</div>
		</td>
		<td align="left" width="78%"><input name="userId" type="text" class="text1" id="userId" size="10" maxlength="10"></td>
	</tr>
	<tr>
		<td align="right" height="26">
		<div align="right"><font color="#FF0000">*</font>用户名称:&nbsp;</div>
		</td>
		<td align="left"><input name="userName" type="text" class="text1" id="userName" size="20" maxlength="20"></td>
	</tr>
	<tr>
		<td align="right" height="26">
		<div align="right"><font color="#FF0000">*</font>密码:&nbsp;</div>
		</td>
		<td align="left"><label><input name="password" type="password" class="text1" id="password" size="20" maxlength="20" /></label></td>
	</tr>
	<tr>
		<td align="right" height="26">
		<div align="right">联系电话:&nbsp;</div>
		</td>
		<td align="left"><input name="contactTel" type="text" class="text1" id="contactTel" size="20" maxlength="20" /></td>
	</tr>
	<tr>
		<td align="right" height="26">
		<div align="right">email:&nbsp;</div>
		</td>
		<td align="left"><input name="email" type="text" class="text1" id="email" size="20" maxlength="20" /></td>
	</tr>
</table>
<hr width="97%" align="center" size=0>
	<div align="center">
		<input name="btnAdd" class="button1" type="button" id="btnAdd" value="添加" onClick="addUser()" /> 
		&nbsp;&nbsp;&nbsp;&nbsp; 
		<input name="btnBack" class="button1" type="button" id="btnBack" value="返回" onClick="goBack()" />
	</div>
</div>
</form>
</body>
</html>
