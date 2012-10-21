<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>物料详细信息</title>
<link rel="stylesheet" href="style/drp.css">
<script src="script/client_validate.js"></script>
<script src="script/windows.js"></script>
<script language="javascript">
	
</script>
</head>

<body class="body1">
<form name="itemForm" target="_self" id="itemForm">
<div align="center">
<table width="95%" border="0" cellspacing="2" cellpadding="2">
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>
<table width="95%" border="0" cellspacing="0" cellpadding="0" height="8">
	<tr align="left">
		<td width="522" class="p1" height="2" nowrap><img src="images/mark_arrow_03.gif" width="14" height="14"> &nbsp; <b>基础数据管理&gt;&gt;物料维护&gt;&gt;物料详细信息</b></td>
	</tr>
</table>
<hr width="97%" align="center" size=0>
<table width="95%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="22%" height="29">
		<div align="right">物料代码:&nbsp;</div>
		</td>
		<td align="left" width="78%">${item.itemNo}</td>
	</tr>
	<tr>
		<td height="26">
		<div align="right">物料名称:&nbsp;</div>
		</td>
		<td align="left">${item.itemName}</td>
	</tr>
	<tr>
		<td height="26">
		<div align="right">物料规格:&nbsp;</div>
		</td>
		<td align="left">${item.spec}</td>
	</tr>
	<tr>
		<td height="26">
		<div align="right">物料型号:&nbsp;</div>
		</td>
		<td align="left">${item.pattern}</td>
	</tr>
	<tr>
		<td height="26">
		<div align="right">类别:&nbsp;</div>
		</td>
		<td align="left">${item.itemCategory.name}</td>
	</tr>
	<tr>
		<td height="26">
		<div align="right">计量单位:&nbsp;</div>
		</td>
		<td align="left">${item.itemUnit.name}</td>
	</tr>
	<tr>
		<c:choose>
			<c:when  test="${empty item.uploadFileName}">
				<c:set var="imgName" value="noImg"></c:set>
			</c:when>
			<c:otherwise>
				<c:set var="imgName" value="${item.itemNo}"></c:set>
			</c:otherwise>
		</c:choose>
		<td height="74">
		<div align="right">图片:&nbsp;</div>
		</td>
		<td align="left"><img src="upload/${imgName}.gif" width="85" height="49"></td>
	</tr>
</table>
<hr width="97%" align="center" size=0>
<div align="center"><input name="btnClose" class="button1" type="button" id="btnClose" value="关闭" onClick="window.close()"></div>
</div>
</form>
</body>
</html>