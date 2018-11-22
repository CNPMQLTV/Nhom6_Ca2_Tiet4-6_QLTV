
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="header.jsp"></jsp:include>
<body>
<jsp:include page="main-navigation.jsp"></jsp:include>
<a href="#"><i class="sc fa fa-hand-pointer-o" id = "cuon" aria-hidden="true"><span class="
glyphicon glyphicon-triangle-top" aria-hidden="true"></span></i></a>

<div class="container">
<jsp:include page="title.jsp"></jsp:include>
    <div class="col-md-8">       
        <div class = "row">
            <jsp:include page="mainproduct.jsp"></jsp:include>
            
        </div><!--end row-->
    </div> <!--end col-md-8-->

</div> <!-- end content-->
<hr>
<!--footer start from here-->
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
<!--footer start from here-->
</body>
</html>