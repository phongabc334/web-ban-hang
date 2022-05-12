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
<c:if test="${ InfoAdmin.role == 1 }" >
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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý danh mục&nbsp;&nbsp;/&nbsp;Thêm danh mục</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 grid-margin">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Thêm mới hãng sản xuất</h4>
                <c:if test="${ not empty statusAddProviser }">
                	<c:if test="${ statusAddProviser == 'ok' }">
                		<div class="alert alert-success" role="alert">
						  Thêm thành công
						</div>
                	</c:if>
                	<c:if test="${ statusAddProviser != 'ok' }">
                		<div class="alert alert-danger" role="alert">
					  ${ statusAddProviser }
					</div>
                	</c:if>
				</c:if>
                <form:form action="them-danh-muc" modelAttribute="provider" method="POST">  
                  <p class="card-description">
                    Nhập thông tin hãng sản xuất
                  </p>
                  <div class="row">
                  
                  	<div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Tên hãng *</label>
                        <div class="col-sm-9">
                        <form:input class="form-control" path="name" placeholder="Mời nhập tên hãng" required="required"/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Miêu tả *</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="description" placeholder="Mời nhập mô tả" required="required"/>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="d-flex justify-content-center">
                    <a class="nav-link mr-2" href="<c:url value="/admin/quan-ly-danh-muc"/>">
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