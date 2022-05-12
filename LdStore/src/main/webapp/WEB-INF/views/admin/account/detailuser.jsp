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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý tài khoản&nbsp;&nbsp;/&nbsp;Thông tin tài khoản</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 grid-margin">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Thông tin tài khoản</h4>
                  <div class="row">
                    <div class="col-md-6">
                      <div class=" form-group row">
                        <label class="col-sm-3">Tên tài khoản : </label>
                        <label class="col-sm-9">${ AdmindetailUser.username } </label>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3">Email : </label>
                        <label class="col-sm-9">${ AdmindetailUser.email } </label>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3">Họ : </label>
                        <label class="col-sm-9">${ AdmindetailUser.firstname } </label>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3">Tên : </label>
                        <label class="col-sm-9">${ AdmindetailUser.lastname } </label>
                      </div>
                    </div>
                    
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3">Địa chỉ : </label>
                        <label class="col-sm-9">${ AdmindetailUser.address } </label>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3">Số điện thoại : </label>
                        <label class="col-sm-9">${ AdmindetailUser.phone } </label>
                      </div>
                    </div>
                    
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3">Trạng thái : </label>
                        <label class="col-sm-9">
                        	<c:if test="${ AdmindetailUser.status == false }">Hoạt động</c:if>
                        	<c:if test="${ AdmindetailUser.status == true }">Khóa</c:if>
                         </label>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3">Nhóm quyền : </label>
                        <label class="col-sm-9">
                        	<c:if test="${ AdmindetailUser.role == 1}">Quản trị viên</c:if>
                        	<c:if test="${ AdmindetailUser.role == 0}">Người dùng</c:if>
                        	<c:if test="${ AdmindetailUser.role == 2 }">Quản lý sản phẩm</c:if>
                        	<c:if test="${ AdmindetailUser.role == 3 }">Quản lý đơn hàng</c:if>
                        	<c:if test="${ AdmindetailUser.role == 4 }">Quản lý tin tức</c:if>
                        </label>
                      </div>
                    </div>
                  </div>
                  
                  <div class="d-flex justify-content-center">
                    <a class="nav-link mr-2" href="<c:url value="/admin/quan-ly-tai-khoan"/>">
                      <span class="menu-title btn btn-outline-danger btn-fw">Quay lại</span>
                    </a>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </c:if>
      </div>
</c:if>