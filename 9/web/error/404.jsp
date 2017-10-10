<%--
  Created by IntelliJ IDEA.
  User: luodian
  Date: 01/10/2017
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title>Error</title>
</head>
<body>
<p>Get your own personal hello by filling out and submitting this form.</p>

<s:form action="search">

    <s:textfield name="query" label="Your name" />

    <s:submit value="Submit" />

</s:form>
</body>
</html>
