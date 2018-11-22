
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container">
<div class="col-md-12">
    <div class="header">
    <img src="img/logoHufi.png">
    </div>
</div>
</div>
<div class="col-md-12" background:#3c9ce7>
        <div class="container" >
                <nav class="navbar navbar-default" role="navigation">
                  <div class="container-fluid">
                    <!--  mobile display -->
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                      <a class="navbar-brand" href="index">Trang chủ</a>
                    </div>
                
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                      <ul class="nav navbar-nav">
                       
                        <li><a href="#">Thông tin tài khoản </a></li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" method="post" action="list">Sách <b class="caret"></b></a>
                          <ul class="dropdown-menu">
                            <li><a href="list">Danh sách tài liệu</a></li>
                            
                            <li><a href="#">Yêu cầu sách</a></li>
                          </ul>
                        </li>
                      </ul>
                      <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                          <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Tìm kiếm</button>
                      </form>
                   		<jsp:include page="login.jsp"></jsp:include>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container-fluid -->
                </nav>
                </div>
</div>