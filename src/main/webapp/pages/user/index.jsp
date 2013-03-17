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
<table>
<thead>
<tr>
<th>用户名</th><th>密码</th><th>添加日期</th><th>是否有效</th>
</tr>
</thead>
<tbody>
<s:iterator value="list">
<tr><td>${userName}</td><td>${password}</td><td>${createTime}</td><td>${validFlag}</td></tr>		
</s:iterator>
</tbody>
</table>
</body>
</html>