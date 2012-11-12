<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>添加品牌</title>
    <link rel="stylesheet" href="style/drp.css">
    <script type="text/javascript" src="script/jquery/jquery-1.4.4.js"></script>
    <script type="text/javascript" src="script/user_validate.js"></script>
    <script type="text/javascript">
        function goBack() {
            window.self.location = "user_maint.jsp";
        }

        function addUser() {
            var userId = document.getElementById("userId");
            var c1 = validate_userId(userId);
            var userName = document.getElementById("userName");
            var c2 = validate_userName(userName);
            var password = document.getElementById("password");
            var c3 = validate_password(password);
            var contactTel = document.getElementById("contactTel");
            var c4 = validate_contactTel(contactTel);
            var email = document.getElementById("email");
            var c5 = validate_email(email);
            if (c1 && c2 && c3 && c4 && c5) {
                var userForm = document.getElementById("userForm");
                userForm.action = "<%=basePath%>sysmgr/UserController?command=add";
                userForm.submit();
            }
        }

        function showCityByProvince(provinceId) {
            resetCitySelect();
            $.getJSON('<%=basePath%>city/getCityByProvinceId', {"provinceId":provinceId}, function (data) {
                var items = [];
                $.each(data, function (key, val) {
                    items.push('<option value="' + val.id + '">' + val.name.chs + '</option>');
                });
                $("#city_id").append(items.join(' '));
            });
        }
        function showRegionByCity(cityId) {
            alert(cityId);
            resetRegionSelect();

            $.getJSON('<%=basePath%>region/getRegionByCityId', {"cityId":cityId}, function (data) {
                var items = [];
                $.each(data, function (key, val) {
                    items.push('<option value="' + val.id + '">' + val.name.chs + '</option>');
                });
                $("#region_id").append(items.join(' '));
            });

        }

        function resetCitySelect() {
            resetRegionSelect();
            $('#city_id option').each(function () {
                if ($(this).val() > '0') {
                    $(this).remove();
                }
            });
        }

        function resetRegionSelect() {
            $('#region_id option').each(function () {
                if ($(this).val() >= '0') {
                    $(this).remove();
                }
            });
        }


    </script>
</head>

<body class="body1">
<form name="brandForm" target="_self" id="userForm" method="post" action="<%=basePath%>brand/doAdd">
    <div align="center">
        <table width="95%" border="0" cellspacing="2" cellpadding="2">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table width="95%" border="0" cellspacing="0" cellpadding="0" height="25">
            <tr>
                <td width="522" class="p1" height="25" nowrap>
                    <img src="images/mark_arrow_03.gif" width="14" height="14"> &nbsp; <b>酒店管理&gt;&gt;添加品牌</b></td>
            </tr>
        </table>
        <hr width="97%" align="center" size=0>
        <table width="95%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td align="right" height="26">
                    <div align="right"><font color="#FF0000">*</font>简体中文名称:&nbsp;</div>
                </td>
                <td align="left"><input name="name.chs" type="text" class="text1" id="name.chs" size="20"
                                        maxlength="20"></td>
            </tr>
            <tr>
                <td align="right" height="26">
                    <div align="right"><font color="#FF0000">*</font>繁体中文名称:&nbsp;</div>
                </td>
                <td align="left"><input name="name.cht" type="text" class="text1" id="name.cht" size="20"
                                        maxlength="20"></td>
            </tr>
            <tr>
                <td align="right" height="26">
                    <div align="right"><font color="#FF0000">*</font>英文名称:&nbsp;</div>
                </td>
                <td align="left"><label><input name="name.en" type="text" class="text1" id="name.en" size="20"
                                               maxlength="20"/></label></td>
            </tr>
            <tr>
                <td align="right" height="26">
                    <div align="right"><font color="#FF0000">*</font>日文名称:&nbsp;</div>
                </td>
                <td align="left"><label><input name="name.jp" type="text" class="text1" id="name.jp" size="20"
                                               maxlength="20"/></label></td>
            </tr>
            <tr>
                <td align="right" height="26">
                    <div align="right">品牌描述(简):&nbsp;</div>
                </td>
                <td align="left"><textarea name="description.chs" type="text" class="text1" id="description.chs"
                                           size="20"
                                           maxlength="20"></textarea></td>
            </tr>
            <tr>
                <td align="right" height="26">
                    <div align="right">品牌描述(繁):&nbsp;</div>
                </td>
                <td align="left"><textarea name="description.cht" type="text" class="text1" id="description.cht"
                                           size="20"
                                           maxlength="20"></textarea></td>
            </tr>
            <tr>
                <td align="right" height="26">
                    <div align="right">品牌描述(英):&nbsp;</div>
                </td>
                <td align="left"><textarea name="description.en" type="text" class="text1" id="description.en" size="20"
                                           maxlength="20"></textarea></td>
            </tr>
            <tr>
                <td align="right" height="26">
                    <div align="right">品牌描述(日):&nbsp;</div>
                </td>
                <td align="left"><textarea name="description.jp" type="text" class="text1" id="description.jp" size="20"
                                           maxlength="20"></textarea></td>
            </tr>
            <tr>
                <td align="right" height="26">
                    <div align="right"><font color="#FF0000">*</font>星级:&nbsp;</div>
                </td>
                <td align="left"><label><input name="level" type="text" class="text1" id="level" size="20"
                                               maxlength="20"/></label></td>
            </tr>


        </table>
        <hr width="97%" align="center" size=0>
        <div align="center">
            <input name="btnAdd" class="button1" type="submit" id="btnAdd" value="添加"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input name="btnCancel" class="button1" type="reset" id="btnCancel" value="取消"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input name="btnBack" class="button1" type="button" id="btnBack" value="返回"/>
        </div>
    </div>
</form>
</body>
</html>
