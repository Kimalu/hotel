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
    <title>添加酒店</title>
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

        function selectBrand(){
            window.showModalDialog("http://www.baidu.com","","resizable:no;location:no;dialogWidth:300px;dialogHeight:300px;scroll:no;status:no")
        }


    </script>
</head>

<body class="body1">
<form name="userForm" target="_self" id="userForm" method="post" action="<%=basePath%>hotel/doAdd">
    <div align="center">
        <table width="95%" border="0" cellspacing="2" cellpadding="2">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table width="95%" border="0" cellspacing="0" cellpadding="0" height="25">
            <tr>
                <td width="522" class="p1" height="25" nowrap>
                    <img src="images/mark_arrow_03.gif" width="14" height="14"> &nbsp; <b>酒店管理&gt;&gt;添加酒店</b></td>
            </tr>
        </table>
        <hr width="97%" align="center" size=0>
        <table width="95%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td align="right" width="22%" height="29">
                    <div align="right"><font color="#FF0000">*</font>省份:&nbsp;</div>
                </td>
                <td align="left" width="78%">
                    <select id="province_id" name="province.id" onchange="showCityByProvince(this.value)">
                        <option value="-1">--请选省份--</option>
                        <option value="0">直辖市无省份</option>
                        <c:forEach var="province" items="${provinceList}">
                            <option value="${province.id}">${province.name.chs}</option>
                        </c:forEach>
                    </select>
            </tr>
            <tr>
                <td align="right" width="22%" height="29">
                    <div align="right"><font color="#FF0000">*</font>城市:&nbsp;</div>
                </td>
                <td align="left" width="78%">
                    <select id="city_id" name="city.id" onchange="showRegionByCity(this.value)">
                        <option value="-1">--请选城市--</option>
                    </select>
            </tr>

            <tr>
                <td align="right" width="22%" height="29">
                    <div align="right"><font color="#FF0000">*</font>区/县:&nbsp;</div>
                </td>
                <td align="left" width="78%">
                    <select id="region_id" name="region.id">
                        <option value="-1">--请选区/县--</option>
                    </select>
            </tr>

            <tr>
                <td align="right" width="22%" height="29">
                    <div align="right"><font color="#FF0000">*</font>酒店品牌名称:&nbsp;</div>
                </td>
                <td align="left" width="78%"><input name="brandInfo" type="text" class="text1" id="brandInfo"
                                                    size="10"
                                                    maxlength="10" readonly="readonly"><a href="#" onclick="selectBrand()">选择品牌</a> </td>
            </tr>
            <tr>
                <td align="right" height="26">
                    <div align="right"><font color="#FF0000">*</font>酒店地址:&nbsp;</div>
                </td>
                <td align="left"><input name="addressInfo" type="text" class="text1" id="addressInfo" size="20"
                                        maxlength="20"></td>
            </tr>
            <tr>
                <td align="right" height="26">
                    <div align="right"><font color="#FF0000">*</font>联系电话:&nbsp;</div>
                </td>
                <td align="left"><label><input name="tel" type="text" class="text1" id="tel" size="20"
                                               maxlength="20"/></label></td>
            </tr>
            <tr>
                <td align="right" height="26">
                    <div align="right">酒店描述:&nbsp;</div>
                </td>
                <td align="left"><textarea name="descritpionInfo" type="text" class="text1" id="descritpionInfo" size="20"
                                        maxlength="20"></textarea></td>
            </tr>

        </table>
        <hr width="97%" align="center" size=0>
        <div align="center">
            <input name="btnAdd" class="button1" type="submit" id="btnAdd" value="添加" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input name="btnCancel" class="button1" type="reset" id="btnCancel" value="取消" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input name="btnBack" class="button1" type="button" id="btnBack" value="返回" />
        </div>
    </div>
</form>
</body>
</html>
