 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%String mes = (String )session.getAttribute("mes"); %>
  <ul class="nav navbar-nav navbar-right">
    <li class="dropdown">
  <% if(mes == null){%>
		  <jsp:include page="newLogin.jsp"></jsp:include>
	 <%} else{%>
	  	 <jsp:include page="hasLogin.jsp"></jsp:include>
  		<% }%>
    </li>
</ul>