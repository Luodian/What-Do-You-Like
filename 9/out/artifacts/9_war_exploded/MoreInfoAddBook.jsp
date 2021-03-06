<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>添加作者 | Luodian</title>
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
                    <form class="form-horizontal" role="form" action="addbookauthor" method="post">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">书名</label>
                            <div class="col-sm-10">
                                <s:textfield class="form-control" required="true" id="form_input_1" name="book.Name" type="text" value="%{book.Name}" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">作者</label>
                            <div class="col-sm-10">
                                <s:textfield class="form-control" required="true" id="form_input_2" name="book.Author" type="text" value="%{book.Author}" />
                            </div>
                        </div>

                        <div id="myAlert" class="alert alert-warning">
                            <a href="#" class="close" data-dismiss="alert">
                                &times;
                            </a>
                            <strong>警告！</strong> 数据库中无该作者，请补全信息。
                        </div>

                        <script type="text/javascript">
                            $(function(){
                                $("#myAlert").bind('closed.bs.alert', function () {
                                    alert("请确认补全信息。");
                                });
                            });
                        </script>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">出生年月</label>
                            <div class="col-sm-10">
                                <s:textfield class="form-control" id="form_input_2_1" name="author.BirthDate" type="text" placeholder="1983-6"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">国籍</label>
                            <div class="col-sm-10">
                                <s:textfield class="form-control" id="form_input_2_2" name="author.Country" type="text" placeholder="中国"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">作者图片</label>
                            <div class="col-sm-10">
                                <s:textfield class="form-control" id="form_input_2_3" name="author.AuImageUrl" type="text" placeholder="请勿与图书图片信息混淆"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">ISBN</label>
                            <div class="col-sm-10">
                                <s:textfield class="form-control" required="true" id="form_input_3" name="book.ISBN" type="text" value="%{book.ISBN}"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">价格</label>
                            <div class="col-sm-10">
                                <s:textfield class="form-control" id="form_input_4" name="book.price" type="text" value="%{book.price}"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">出版日期</label>
                            <div class="col-sm-10">
                                <s:textfield class="form-control" id="form_input_5" name="book.PublishDate" type="text" value="%{book.PublishDate}"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">出版商</label>
                            <div class="col-sm-10">
                                <s:textfield class="form-control" id="form_input_6" name="book.Publisher" type="text" value="%{book.Publisher}"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">缩略图</label>
                            <div class="col-sm-10">
                                <s:textfield class="form-control" id="form_input_7" name="book.ImageUrl" type="text" value="%{book.ImageUrl}"/>
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
            To acquire the habit of reading is to construct for yourself a refuge from almost all the miseries of life.
            </br>
            养成读书的习惯，就给你自己建造了一座逃避人生几乎所有不幸的避难所。
        </p>
        <p  class="text-right">
            <small>W.S.Maugham</small>
        </p>
    </blockquote>
</div>

</body>
</html>
