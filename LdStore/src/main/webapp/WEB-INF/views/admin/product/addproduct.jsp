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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý sản phẩm&nbsp;&nbsp;/&nbsp;Thêm sản phẩm</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 grid-margin">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Thêm mới sản phẩm</h4>
                <c:if test="${ not empty AdminAddProductStatus }">
                	<c:if test="${ AdminAddProductStatus == 'ok' }">
                		<div class="alert alert-success" role="alert">
						  Thêm thành công
						</div>
                	</c:if>
                	<c:if test="${ AdminAddProductStatus != 'ok' }">
                		<div class="alert alert-danger" role="alert">
					  ${ AdminAddProductStatus }
					</div>
                	</c:if>
				</c:if>
				
				
				
                <form:form action="them-san-pham" modelAttribute="AdminAddProudct" method="POST" enctype="multipart/form-data">  
                  <p class="card-description">
                    Nhập thông tin sản phẩm
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
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Tiêu đề</label>
                        <div class="col-sm-9">
                        	<form:input class="form-control" path="create_by" value="${ InfoAdmin.username }" type="hidden" />
                          <form:textarea class="form-control" path="title" />
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Tên sản phẩm</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="name" required="required"/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Hãng sản xuất</label>
                        <div class="col-sm-9">
                        	<form:select path="id_hangsx" class="form-control" required="required">
                        		<c:forEach var="item" items="${ AdminListProvider }">
                          			<form:option label="${ item.name }" value="${ item.id }"/>
                          		</c:forEach>
                        	</form:select>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Số lượng</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="soluong" type="number" required="required"/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Dây đeo</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="strap" />
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Giá bán</label>
                        <div class="col-sm-9">
                        	<form:input class="form-control" path="price" type="number" required="required"/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Giảm giá</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="sale" type="number"/>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Hệ điều hành</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="os" />
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">CPU</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="cpu" />
                        </div>
                      </div>
                    </div>
                  </div><div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Màn hình</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="screen" />
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Kích thước</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="size" />
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Trọng lượng</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="weight" />
                        </div>
                      </div>
                    </div>
                    
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Chuẩn chống nước,kháng bụi</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="waterproof" />
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Loa, mic</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="mic" />
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Pin</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="pin" />
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group row">
                        <label class="col-form-label" style="width:12.5%;font-weight: bold;padding-left: 10px;">Bài viết</label>
                        <div class="col-sm-10">
                          <form:textarea class="form-control" path="detail" />
                          <script>
							config = {};
							config.entities_latin = false;
							config.language = "vi";
							config.height = 400;
							CKEDITOR.replace( 'detail' , config );
						</script>
                        </div>
                      </div>
                    </div>
                    
                  </div>
                  <div class="d-flex justify-content-center">
                    <a class="nav-link mr-2" href="<c:url value="/admin/quan-ly-san-pham"/>">
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