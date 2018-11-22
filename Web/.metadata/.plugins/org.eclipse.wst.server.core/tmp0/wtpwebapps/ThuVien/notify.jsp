<%@page import="DAO.sach_API"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	sach_API list =(sach_API) request.getAttribute("listSach");
	%>
 <div class="row">
                <ul class="list-group">
                    <caption><h3>Thông báo</h3></caption>
                        <li class="list-group-item">
                            <div class="media">
                                <a class="media-left" href="#">
                                    <div style="width: 64px; height: 64px">
                                    
                                    <img style="width:100%; height:auto;"  src="http://placehold.it/10000x400" alt="...">
                                    </div>
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading">Tin Tức</h4>
                                        Nội dung
                                </div>
                            </div>
                        </li>
                        
                    </ul>
        </div>