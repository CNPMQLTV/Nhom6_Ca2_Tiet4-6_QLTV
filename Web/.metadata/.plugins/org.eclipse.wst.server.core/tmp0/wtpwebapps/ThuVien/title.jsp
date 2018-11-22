<%@page import="DAO.sach_API"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	sach_API list =(sach_API) session.getAttribute("listSach");
	int size = (int) list.getList().size();
	if(size > 7)
		size = 7;
	
%>
<div class="col-md-4"><!---->
	<div class="panel panel-primary">
		<div class="panel-heading">Sách mới cập nhật</div>
		  <div class="panel-body fixed-panel">
			<div class="outer">
		    	<div class="inner">
		    	<%for(int i = 0;i < size;i++) {
		    			
		    	%>
		         <div class="media">
                    <div class="media-left media-middle">
                          <img class="media-object" src=<%=list.getList().get(i).getImg() %>  height="64" width="64" >
                        </div>
                           <div class="media-body">
                             <h3 class="media-heading"><a href= 'infoSach?id=<%=list.getList().get(i).getId()%>'> <%=list.getList().get(i).getTenSach() %></a> </h3> 
                                  <p><%=list.getList().get(i).getMota() %></p>
                            </div>    
                        </div>
                        <%} %>
		    	</div><!-- end inner -->
			</div><!-- end outer -->
		  </div><!-- end panel-body fixed-panel-title -->
	</div><!-- panel panel-primary -->
	<div class="panel panel-primary">
		<div class="panel-heading">Sách hay</div>
		  <div class="panel-body fixed-panel">
			<div class="outer">
		    	<div class="inner">
		    	<%for(int i = 0;i < size;i++) {
		    			
		    	%>
		         <div class="media">
                    <div class="media-left media-middle">
                          <img class="media-object" src=<%=list.getList().get(i).getImg() %>  height="64" width="64" >
                        </div>
                           <div class="media-body">
                                <h3 class="media-heading"><a href= 'infoSach?id=<%=list.getList().get(i).getId()%>'> <%=list.getList().get(i).getTenSach() %></a> </h3> 
                                  <p><%=list.getList().get(i).getMota() %></p>
                                 
                            </div>    
                        </div>
                        <%} %>
		    	</div><!-- end inner -->
			</div><!-- end outer -->
		  </div><!-- end panel-body fixed-panel-title -->
	</div><!-- panel panel-primary -->
</div> <!--end row col - md -4-->


