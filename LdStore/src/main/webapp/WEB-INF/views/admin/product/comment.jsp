<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<c:if test="${ empty InfoAdmin }">
	<div>
        <p style="margin-top: 50vh;text-align: center;font-size: x-large;"> Bạn phải <a href="<c:url value="/admin/dang-xuat"/>">Đăng nhập</a> mới có quyền truy cập </p>
    </div>
</c:if>

<c:if test="${ not empty InfoAdmin }" >
<%@include file="/WEB-INF/views/layouts/admin/header.jsp" %>
<!-- partial -->
<div class="container-fluid page-body-wrapper">

<%@include file="/WEB-INF/views/layouts/admin/menu.jsp" %>
<c:if test="${ InfoAdmin.role == 1 || InfoAdmin.role == 2 }" >
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="d-flex justify-content-between flex-wrap">
                <div class="d-flex align-items-end flex-wrap">
                  <div class="mr-md-3 mr-xl-5">
                    <h2>Xin chào, ${ InfoAdmin.username }</h2>
                    <div class="d-flex">
                      <i class="mdi mdi-home text-muted hover-cursor"></i>
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý sản phẩm&nbsp;&nbsp;/&nbsp;Danh sách bình luận</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 grid-margin">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Danh sách bình luận</h4>
                
                <c:if test="${ commentbyidpr.size() <= 0 }">
                	<h4>Sản phẩm này chưa có bình luận</h4>
                </c:if>
                
                <c:if test="${ not empty statusdeletecomment }">
                	<c:if test="${ statusdeletecomment == 'ok' }">
                		<div class="alert alert-success" role="alert">
						  Xóa bình luận thành công
						</div>
                	</c:if>
                	<c:if test="${ statusdeletecomment != 'ok' }">
                		<div class="alert alert-danger" role="alert">
					  ${ statusdeletecomment }
					</div>
                	</c:if>
				</c:if>
                <c:forEach var="item" items="${ commentbyidpr }">
                    <div class="form-group mt-2 row">
                        <br>
                        <div class="col-md-11">
					    	<div class="entry-meta row">
		                        <span class="cat-links col-md-10"><h5>${ item.user }</h5></span>
		                        <span class="posted-on col-md-2">
		                       			<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${ item.create_date }" />  
		                       	</span>
		                    </div>
		                    <p style="background: #f6f6f7;border: 1px solid #edeff2;padding: 15px 20px 20px 20px;">
		                    	 	${ item.content }
		                    </p>
	                    </div>
	                    <div class="col-md-1">
	                    	<a class="nav-link delete mt-4">
                                 <button data-id="${ item.id_cmt }" class="menu-title btn btn-inverse-danger btn-fw pl-3 pr-3 pt-2 pb-2">Xóa</button>
                             </a>
	                    </div>
				  	</div>
			  	</c:forEach>
              </div>
            </div>
          </div>
        </div>
      </div>
      </c:if>
      <!-- main-panel ends -->
    </div>
      <content tag="scriptadmin">
      	<script>
	      $(document).ready(function() {
            $(".delete button").on("click", function() {
                var id = $(this).attr("data-id");
                let text = "Bạn có chắc chắn muốn xóa bình luận có mã là : "+id+" ??? ";
                if (confirm(text) == true) {
                	window.location.assign("<c:url value='/admin/delete-comment/"+id+"'/>");
                } else {
                }
	            });
	        });
	      </script>
      </content>
</c:if>