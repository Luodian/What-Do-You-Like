<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>作者详情 | Luodian</title>
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
    <style>
        .col-center-block {
            float: none;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>

<div class="containercontainer-fluid">
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
            <div class="jumbotron well">
                <h2>
                    查看这位作者
                </h2>
                <p>
                    <small>在这里查看这位作者的详细信息</small>
                </p>
            </div>
            <div class="row clearfix">
                <div class="col-md-2 column">
                    <br>
                </div>
                <div class="col-md-6 column pull-right">
                    <h3>
                        <s:property value="Author.Name"/>
                    </h3>
                    <p>
                        <br>
                    </p>
                    <p>
                        出生日期：<s:property value="Author.BirthDate"/>
                    </p>
                    <p>
                        籍贯/国别：<s:property value="Author.Country"/>
                    </p>
                    <p>
                        他/她的ID：<s:property value="Author.AuthorID"/>
                    </p>
                    <p>
                        <a href = '<s:url action="search">
                            <s:param name="name" value="Author.Name"/>
                            </s:url>'>
                            查看他/她的所有书目
                        </a>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <%--<a href='<s:url action="edit">--%>
					    <%--<s:param name="ISBN" value="ISBN"/>--%>
					          <%--</s:url>'>Edit</a>--%>

                        <%--<a href='<s:url action="delete">--%>
					    <%--<s:param name="ISBN" value="ISBN"/>--%>
					          <%--</s:url>'>Delete</a>--%>
                    </p>
                </div>
                <div class="col-md-4 column pull-left">
                    <img src='<s:property value="Author.AuImageUrl"/>' class="img-thumbnail img-responsive pull-right"  alt="Responsive image" width="300" height="400"/>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <blockquote>
                        <p>
                            I thought that I was rich, with a flower that was unique in all the world; and all I had was a common rose. A common rose ...</br>
                            我总以为自己很富有，拥有一朵世上独一无二的花；实际上，我所拥有的不过是一朵普通的玫瑰而已。一朵普通的玫瑰花……
                        </p>
                        <p  class="text-right">
                            <small>《小王子》</small>
                        </p>
                    </blockquote>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>
