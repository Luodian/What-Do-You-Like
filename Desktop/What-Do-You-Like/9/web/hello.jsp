<%--
  Created by IntelliJ IDEA.
  User: luodian
  Date: 03/10/2017
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
    <div>
        <h1><s:property value="book.name"/></h1>
        <div>
            <h3>作者：<s:property value="book.author_name"/></h3>
            <h3>价格：<s:property value="book.price"/>元</h3>
            <h3>价格：<s:property value="book.price"/>元</h3>
        </div>
    </div>
</body>
</html>
