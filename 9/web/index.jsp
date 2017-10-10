<%--
  Created by IntelliJ IDEA.
  User: luodian
  Date: 30/09/2017
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE HTML>
<!--
Linear by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>图书 | Luodian</title>

  <!-- css -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="css/nivo-lightbox.css" rel="stylesheet" />
  <link href="css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
  <link href="css/animations.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet">
  <link href="color/default.css" rel="stylesheet">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

<section class="hero" id="intro">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-right navicon">
        <a id="nav-toggle" class="nav_slide_button" href="#"><span></span></a>
      </div>
    </div>
    <div class="row">
      <div class="col-md-8 col-md-offset-2 text-center inner">
        <div class="animatedParent">
          <h1 class="animated fadeInDown">阅读 | 聚沙成塔</h1>
          <p class="animated fadeInUp">在这里，查找你想要的书</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 col-md-offset-3 text-center">
        <a href="#about" class="learn-more-btn btn-scroll">开始</a>
      </div>
    </div>
  </div>
</section>


<!-- Navigation -->
<div id="navigation">
  <nav class="navbar navbar-custom" role="navigation">
    <div class="container">
      <div class="row">
        <div class="col-md-2">
          <div class="site-logo">
            <a href="index.jsp" class="brand">Luodian.ink</a>
          </div>
        </div>


        <div class="col-md-10">

          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
              <i class="fa fa-bars"></i>
            </button>
          </div>
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="menu">
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="#intro">首页</a></li>
              <li><a href='<s:url action="allbooks"/>'>图书列表</a></li>
              <li><a href='<s:url action="allauthor"/>'>作者列表</a></li>
              <li><a href="AddBook.jsp">添加新书</a></li>

              <li><a href="#contact">联系我</a></li>
            </ul>
          </div>
          <!-- /.Navbar-collapse -->

        </div>
      </div>
    </div>
    <!-- /.container -->
  </nav>
</div>
<!-- /Navigation -->

<!-- Section: about -->
<section id="about" class="home-section color-dark bg-white">
  <div class="container marginbot-50">
    <div class="row">
      <div class="col-lg-8 col-lg-offset-2">
        <div class="animatedParent">
          <div class="section-heading text-center animated bounceInDown">
            <h2 class="h-bold">在这里，输入你要查找的作者</h2>
            <div class="divider-header"></div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <div class="container">


    <div class="row">


      <div class="col-lg-8 col-lg-offset-2 animatedParent">
        <div class="text-center">
            <p>
                <br>
                <br>
                <br>
            </p>
            <form action="search">
                <input type="text" placeholder="输入想查询的作者" required="true" name = "name" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject"/>
                <button type="submit" class="btn btn-skin btn-scroll">
                    搜索
                </button>
            </form>
            <p>
                <br>
                <br>
                <br>
            </p>
            <p>
                <br>
            </p>
            <div class="row gallery-item">
                <div class="col-md-3 animated fadeInUp">
                    <a href="img/works/8.jpg">
                        <img src="img/works/8.jpg" onload='if (this.width>180 || this.height>246) if (this.width/this.height>140/226) this.width=180; else this.height=246;' class="img-responsive" alt="img">
                    </a>
                </div>
                <div class="col-md-3 animated fadeInUp slow">
                    <a href="img/works/5.jpg">
                        <img src="img/works/5.jpg" onload='if (this.width>180 || this.height>246) if (this.width/this.height>140/226) this.width=180; else this.height=246;' class="img-responsive" alt="img">
                    </a>
                </div>
                <div class="col-md-3 animated fadeInUp slower">
                    <a href="img/works/6.jpg">
                        <img src="img/works/6.jpg" onload='if (this.width>180 || this.height>246) if (this.width/this.height>140/226) this.width=180; else this.height=246;' class="img-responsive" alt="img">
                    </a>
                </div>
                <div class="col-md-3 animated fadeInUp">
                    <a href="img/works/7.jpg">
                        <img src="img/works/7.jpg" onload='if (this.width>180 || this.height>246) if (this.width/this.height>140/226) this.width=180; else this.height=246;' class="img-responsive" alt="img">
                    </a>
                </div>
            </div>
        </div>
      </div>


    </div>
  </div>

</section>
<!-- /Section: about -->

<!-- Section: works -->
<section id="works" class="home-section color-dark text-center bg-white">
  <div class="container marginbot-50">
    <div class="row">
      <div class="col-lg-8 col-lg-offset-2">
        <div>
          <div class="animatedParent">
            <div class="section-heading text-center">
              <h2 class="h-bold animated bounceInDown">现在有哪些新书？</h2>
              <div class="divider-header"></div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <div class="container">

    <div class="row animatedParent">
      <div class="col-sm-12 col-md-12 col-lg-12" >

        <div class="row gallery-item">
          <div class="col-md-3 animated fadeInUp">
            <a href="img/works/1.jpg">
              <img src="img/works/1.jpg" onload='if (this.width>180 || this.height>246) if (this.width/this.height>140/226) this.width=180; else this.height=246;' class="img-responsive" alt="img">
            </a>
          </div>
          <div class="col-md-3 animated fadeInUp slow">
            <a href="img/works/2.jpg">
              <img src="img/works/2.jpg" onload='if (this.width>180 || this.height>246) if (this.width/this.height>140/226) this.width=180; else this.height=246;' class="img-responsive" alt="img">
            </a>
          </div>
          <div class="col-md-3 animated fadeInUp slower">
            <a href="img/works/3.jpg">
              <img src="img/works/3.jpg" onload='if (this.width>180 || this.height>246) if (this.width/this.height>140/226) this.width=180; else this.height=246;' class="img-responsive" alt="img">
            </a>
          </div>
          <div class="col-md-3 animated fadeInUp">
            <a href="img/works/4.jpg">
              <img src="img/works/4.jpg" onload='if (this.width>180 || this.height>246) if (this.width/this.height>140/226) this.width=180; else this.height=246;' class="img-responsive" alt="img">
            </a>
          </div>
        </div>

      </div>
    </div>
  </div>

</section>
<!-- /Section: works -->

<!-- Section: contact -->
<section id="contact" class="home-section nopadd-bot color-dark bg-gray text-center">
  <div class="container marginbot-50">
    <div class="row">
      <div class="col-lg-8 col-lg-offset-2">
        <div class="animatedParent">
          <div class="section-heading text-center">
            <h2 class="h-bold animated bounceInDown">这个网站很酷？<br>一起做更酷的事情！</h2>
            <div class="divider-header"></div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <div class="container">

    <div class="row marginbot-80">
      <div class="col-md-8 col-md-offset-2">
        <div id="sendmessage">Your message has been sent. Thank you!</div>
        <div id="errormessage"></div>
        <form id="contact-form" action="" method="post" role="form" class="contactForm">
          <div class="row marginbot-20">
            <div class="col-md-6 xs-marginbot-20">
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="你的名字" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required="true" />
                <div class="validation"></div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="你的邮箱" data-rule="email" data-msg="Please enter a valid email" required="true"/>
                <div class="validation"></div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="一起做更酷的事情" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" required="true"/>
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="我们可以，让这个世界更美好。" required="true"></textarea>
                <div class="validation"></div>
              </div>
              <button type="submit" class="btn btn-skin btn-lg btn-block" id="btnContactUs">
                发送消息</button>
            </div>
          </div>
        </form>
      </div>
    </div>


  </div>
</section>
<!-- /Section: contact -->

<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <ul class="footer-menu">
          <li><a href="#">luodian.ink</a></li>
          <li><a href="https://github.com/Luodian">My Github</a></li>
        </ul>
      </div>
      <div class="col-md-6 text-right copyright">
        Contact me with:drluodian@gmail.com
        <div class="credits">
          <!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Bocor
          -->
        </div>
      </div>
    </div>
  </div>
</footer>

<!-- Core JavaScript Files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/jquery.scrollTo.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/stellar.js"></script>
<script src="js/nivo-lightbox.min.js"></script>

<script src="js/custom.js"></script>
<script src="js/css3-animate-it.js"></script>
<script src="contactform/contactform.js"></script>

</body>

</html>
