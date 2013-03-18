<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
</head>
<body>
<table border="1" style="border-width: 1px; border-collapse: collapse; border-spacing: 1px; border-color: black;">
<thead>
<tr>
<th>用户名</th><th>密码</th><th>添加日期</th><th>是否有效</th><th>是否删除</th><th>操作</th>
</tr>
</thead>
<tbody>
<s:iterator value="list" id="user">
<tr><td><s:property value="#user.userName"/></td><td>${password}</td><td>${createTime}</td><td><s:if test='%{#user.valid}'>是</s:if><s:else>否</s:else></td><td><s:if test='%{#user.deleted}'>是</s:if><s:else>否</s:else></td><td><a href="javascript:void(0);">编辑</a> | <a href="javascript:void(0);">删除</a></td></tr>		
</s:iterator>
</tbody>
</table>
</body>
</html>