<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>书籍详情 | Luodian</title>
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

<div class="container-fluid">
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
                    查看这本书
                </h2>
                <p>
                    <small>在这里查看这本书及作者的详细信息，如有在下方选择编辑</small>
                </p>
            </div>
            <div class="row clearfix">
                <div class="col-md-3 column">
                    <br>
                </div>
                <div class="col-md-3 column">
                    <h3>
                        <s:property value="book.Name"/>
                    </h3>
                    <blockquote>
                        <p>
                            <small><s:property value="book.Comment"/></small>
                        </p>
                    </blockquote>
                    <p>
                        <br>
                    </p>
                    <p>
                        作者：<s:property value="book.Author"/>
                    </p>
                    <p>
                        出生日期：<s:property value="Author.BirthDate"/>
                    </p>
                    <p>
                        籍贯/国别：<s:property value="Author.Country"/>
                    </p>
                    <p>
                        <br>
                    </p>
                    <p>
                        价格：<s:property value="book.price"/>
                    </p>
                    <p>
                        ISBN：<s:property value="book.ISBN"/>
                    </p>
                    <p>
                        出版社：<s:property value="book.Publisher"/>
                    </p>
                    <p>
                        出版日期：<s:property value="book.PublishDate"/>
                    </p>
                    <p>
                        <a href='<s:url action="edit">
					    <s:param name="ISBN" value="ISBN"/>
					          </s:url>'>Edit</a>

                        <a href='<s:url action="delete">
					    <s:param name="ISBN" value="ISBN"/>
					          </s:url>'>Delete</a>
                    </p>
                </div>
                <div class="col-md-3 column">
                    <img src='<s:property value="book.ImageUrl"/>' class="img-thumbnail img-responsive" alt="Responsive image" width="300" height="400"/>
                </div>
                <div class="col-md-3 column">
                    <br>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <blockquote>
                        <p>
                            In the highest civilization the book is still the highest delight.</br>
                            在最高层的文明里，书乃是最高层次的乐趣。
                        </p>
                        <p  class="text-right">
                            <small>R.W.Emerson</small>
                        </p>
                    </blockquote>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>
