<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: luodian
  Date: 05/10/2017
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>图书 | Luodian</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
    <!-- 引入 Bootstrap -->
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="index.jsp">首页</a>
                        </li>
                        <li>
                            <a href='<s:url action="allbooks"/>'>图书列表</a>
                        </li>
                        <li>
                            <a href='<s:url action="allauthor"/>'>作者列表</a>
                        </li>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="AddBook.jsp">添加图书信息</a>
                            </li>
                        </ul>
                    </ul>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <h1>
                        图书
                    </h1>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>
                            编号
                        </th>
                        <th>
                            书名
                        </th>
                        <th>
                            作者
                        </th>
                        <th>
                            出版商
                        </th>
                        <th>
                            价格
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <s:iterator value="bookList" status="st">
                        <tr>
                            <td>
                                <s:property value="#st.index + 1"/>
                            </td>
                            <td>
                                <a href = '<s:url action="detail">
                            <s:param name="ISBN" value="ISBN"/>
                            </s:url>'>
                                    <s:property value="Name"/>
                                </a>
                            </td>
                            <td>
                                <a href = '<s:url action="Authordetail">
                                    <s:param name="ISBN" value="ISBN"/>
                                    </s:url>'>
                                    <s:property value="Author"/>
                                </a>
                            </td>
                            <td>
                                <s:property value="Publisher"/>
                            </td>
                            <td>
                                <s:property value="price"/> 元
                            </td>
                        </tr>
                    </s:iterator>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <p>
        <br>
    </p>

    <p>
        <br>
    </p>

    <p>
        <br>
    </p>
    <blockquote>
        <p>
            The book is the ladder of the progress of mankind.
            </br>
            书籍是人类进步的阶梯。
        </p>
        <p  class="text-right">
            <small>Maksim Gorky</small>
        </p>
    </blockquote>
</div>
</body>
</html>
