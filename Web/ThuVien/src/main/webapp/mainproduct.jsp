<%@page import="DAO.sach_API,DTO.docgia"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
	sach_API list =(sach_API) session.getAttribute("listSach");
 	int id = (Integer)request.getAttribute("id");
 	docgia dg  = (docgia) session.getAttribute("docgia");
 	String id_dg = dg.getMADG();
 	String masach = list.getList().get(id).getMaSach();
%>
<div class="thumbnail">
<div class="card" style="width:100%;">
  <img class="card-img-top"src=<%=list.getList().get(id).getImg() %> alt="" class="img-responsive">
  <div class="card-body">
    <h3 class="card-title">Sách <%=list.getList().get(id).getTenSach() %></h3>
    <p class="card-text"></p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Tác giả : <%=list.getList().get(id).getTenTacGia()%></li>
    <li class="list-group-item">Nhà xuất bản: <%=list.getList().get(id).getTenNXB() %></li>
      <li class="list-group-item">Thể loại: <%=list.getList().get(id).getTenTheLoai() %></li>
     
  	 <li class="list-group-item">Năm xuất bản  : <%=list.getList().get(id).getNamxb()%></li>
  	  <li class="list-group-item">Số Lượng : <%=list.getList().get(id).getSoLuong() %></li>
    
  </ul>
  <div class="card-body">
  <p>Mô tả : <%=list.getList().get(id).getMota() %></p>
    <div class="btn-ground text-center">
      <form class="form" role="form" method="post" action="order" accept-charset="UTF-8">
         <div class="form-group">
			<button type="submit" class="btn btn-primary btn-block">Đặt sách </button>
			 <input type="hidden" name="madg" value=<%=id_dg%>>
			 <input type="hidden" name="masach" value=<%=masach%>>
        </div>
        </form>
      </div>
  </div>
</div>
</div>