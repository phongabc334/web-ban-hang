<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<style>
	.col-sm-3{
	    font-weight: bold;
	}
	.form-group {
    margin-bottom: 0;
	}
	img{
		max-width:100%;
		height:auto;
	}
	iframe{
		max-width:100%;
	}
	.view-more .more-text{
		display:block;
	}
	.view-more .less-text{
		display:none;
	}
</style>
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
<c:if test="${ InfoAdmin.role == 1 || InfoAdmin.role == 4 }" >
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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý sản phẩm&nbsp;&nbsp;/&nbsp;Thêm tin tức</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 grid-margin">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Thêm mới tin tức</h4>
                <c:if test="${ not empty AdminAddNewsStatus }">
                	<c:if test="${ AdminAddNewsStatus == 'ok' }">
                		<div class="alert alert-success" role="alert">
						  Thêm thành công
						</div>
                	</c:if>
                	<c:if test="${ AdminAddNewsStatus != 'ok' }">
                		<div class="alert alert-danger" role="alert">
					  ${ AdminAddNewsStatus }
					</div>
                	</c:if>
				</c:if>
                <form:form action="them-tin-tuc" modelAttribute="AdminAddNews" method="POST" enctype="multipart/form-data">  
                  <p class="card-description">
                    Nhập thông tin tin tức
                  </p>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label for="ufile"   class="col-sm-3 col-form-label">Ảnh sản phẩm *</label>
                        <div class="col-sm-9">
                        	<img id="output" class="img-rounded" alt="Ảnh" width="200px" src='<c:url value="/template/user/images/none-icon-0.jpg" />' />
                          	<input name="file" class="mt-2 mb-2" id="ufile" type=file onchange="loadFile(event)"  />
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group row">
                        <label class="col-form-label" style="width:12.5%;font-weight: bold;padding-left: 10px;">Bài viết</label>
                        <div class="col-sm-10">
                        	<form:input class="form-control" path="create_by" value="${ InfoAdmin.username }" type="hidden"/>
                          <form:textarea class="form-control" path="title"  required="required"/>
                        </div>
                      </div>
                    </div>
                   </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group row">
                        <label class="col-form-label" style="width:12.5%;font-weight: bold;padding-left: 10px;">Nội dung</label>
                        <div class="col-sm-10">
                          <form:textarea class="form-control" path="content" required="required"/>
                          <script>
							config = {};
							config.entities_latin = false;
							config.language = "vi";
							config.height = 400;
							CKEDITOR.replace( 'content' , config );
						</script>
                        </div>
                      </div>
                    </div>
                    
                  </div>
                  <div class="d-flex justify-content-center">
                    <a class="nav-link mr-2" href="<c:url value="/admin/quan-ly-tin-tuc"/>">
                      <span class="menu-title btn btn-outline-danger btn-fw">Quay lại</span>
                    </a>
                    <div class="nav-link ml-2">
						<button type="submit" class="menu-title btn btn-outline-success btn-fw" >Thêm mới</button>
					</div>
                  </div>
                </form:form>
              </div>
            </div>
          </div>
        </div>
      </div>
      </c:if>
      </div>
</c:if>
<content tag="scriptadmin">
	<script>
	    var loadFile = function (event) {
	        var image = document.getElementById("output");
	        image.src = URL.createObjectURL(event.target.files[0]);
	    };
	</script>
</content>