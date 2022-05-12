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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý tài khoản&nbsp;&nbsp;/&nbsp;Thêm tài khoản</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 grid-margin">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Thêm mới tài khoản</h4>
                <c:if test="${ not empty AdminAddUserStatus }">
                	<c:if test="${ AdminAddUserStatus == 'ok' }">
                		<div class="alert alert-success" role="alert">
						  Thêm thành công
						</div>
                	</c:if>
                	<c:if test="${ AdminAddUserStatus != 'ok' }">
                		<div class="alert alert-danger" role="alert">
					  ${ AdminAddUserStatus }
					</div>
                	</c:if>
				</c:if>
                <form:form action="them-tai-khoan" modelAttribute="AdminAddUser" method="POST">  
                  <p class="card-description">
                    Nhập thông tin tài khoản
                  </p>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Tên tài khoản *</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="username" placeholder="Mời nhập tên hãng" required="required"/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Email *</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" type="email" path="email" placeholder="Mời nhập email" required="required"/>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Họ *</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="firstname" placeholder="Mời nhập họ"/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Tên</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="lastname" placeholder="Mời nhập tên"/>
                        </div>
                      </div>
                    </div>
                    
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Địa chỉ</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="address" placeholder="Mời nhập địa chỉ"/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Số điện thoại</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" type="number" path="phone" placeholder="Mời nhập số điện thoại"/>
                        </div>
                      </div>
                    </div>
                    
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-md-3 col-form-label">Mật khẩu *</label>
                        <div class="col-md-9">
                          <form:password class="form-control" path="password" placeholder="Mời nhập mật khẩu" required="required"/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-md-3 col-form-label">Nhóm quyền</label>
                        <div class="col-md-9">
                        	<form:select path="role" class="form-control">
                        		<option value="0">Người dùng</option>
                        		<option value="1">Quản trị viên</option>
                        		<option value="2">Quản lý sản phẩm</option>
                        		<option value="3">Quản lý đơn hàng</option>
                        		<option value="4">Quản lý tin tức</option>
                        	</form:select>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="d-flex justify-content-center">
                    <a class="nav-link mr-2" href="<c:url value="/admin/quan-ly-tai-khoan"/>">
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