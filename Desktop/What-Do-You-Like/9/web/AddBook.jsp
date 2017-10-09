<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>添加新书 | Luodian</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
    <!-- 引入 Bootstrap -->
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
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
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="jumbotron well">
                        <h2>
                            添加一本新书
                        </h2>
                        <p>
                            <small>尽享他人无尽人生，从阅读开始</small>
                        </p>
                    </div>
                </div>
            </div>

        <div class="row clearfix">
            <div class="col-md-2 column">
                <br>
            </div>
            <div class="col-md-6 column">
                <form class="form-horizontal" role="form" action="addbook" method="post">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">书名</label>
                        <div class="col-sm-10">
                            <input class="form-control" required="true" id="form_input_1" name="book.Name" type="text" placeholder="平凡的世界"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">作者</label>
                        <div class="col-sm-10">
                            <input class="form-control" required="true" id="form_input_2" name="book.Author" type="text" placeholder="路遥"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">ISBN</label>
                        <div class="col-sm-10">
                            <input class="form-control" required="true" id="form_input_3" name="book.ISBN" type="text" placeholder="9787020049295"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">价格</label>
                        <div class="col-sm-10">
                            <input class="form-control" required="true" id="form_input_4" name="book.price" type="text" placeholder="64.00"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">出版日期</label>
                        <div class="col-sm-10">
                            <input class="form-control" required="true" id="form_input_5" name="book.PublishDate" type="text" placeholder="2005-1"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">出版商</label>
                        <div class="col-sm-10">
                            <input class="form-control" required="true" id="form_input_6" name="book.Publisher" type="text" placeholder="人民文学出版社"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">缩略图</label>
                        <div class="col-sm-10">
                            <input class="form-control" required="true" id="form_input_7" name="book.ImageUrl" type="text" placeholder="请输入图片Url地址，勿添加本地链接"/>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-default pull-right">Submit</button>
                </form>
            </div>
            <div class="col-md-2 column">
            </div>
        </div>
    </div>
</div>
    <blockquote>
        <p>
            Reading makes a full man; conference a ready man; and writing an exact man.</br>
            读书使人充实，讨论使人机敏，写作使人严谨。
        </p>
        <p  class="text-right">
            <small>Bacon</small>
        </p>
    </blockquote>
</div>

</body>
</html>
