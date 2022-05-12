<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<c:if test="${ empty InfoAdmin }">
	<div>
        <p style="margin-top: 50vh;text-align: center;font-size: x-large;"> Bạn phải <a href="<c:url value="/admin/dang-xuat"/>">Đăng nhập</a> mới có quyền truy cập </p>
    </div>
</c:if>
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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý tin tức&nbsp;&nbsp;/Chi tiết tin tức</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Chi tiết tin tức</h4>
                	<div class="form-sample">
                	
                  <div class="row">
               		  <div class="col-md-12">
	                      <div class="form-group row">
	                        <label class="col-sm-2 col-form-label"><b>Mã tin tức</b></label>
	                        <div class="col-sm-9 col-form-label">
	                          <label class="col-form-label">${ AdminDetailNews.id_news }</label>
	                        </div>
	                      </div>
                      </div>
                  </div>
	                  
                  <div class="row">
                  	<div class="col-md-12">
                      <div class="form-group row">
                        <label class="col-sm-2 col-form-label"><b>Ảnh</b></label>
                        <div class="col-sm-9">
                          <img src="<c:url value="/template/user/images/${AdminDetailNews.img }"/>" alt="default" width="200">
                        </div>
                      </div>
                     </div>
                  </div>
	                  
                  <div class="row">
                  	<div class="col-md-12">
                      <div class="form-group row">
                        <label class="col-sm-2 col-form-label"><b>Tiêu đề</b></label>
                        <div class="col-sm-9">
                        	<label class="col-form-label">${ AdminDetailNews.title }</label>
                        </div>
                      </div>
                      </div>
                  </div>
	                  
                  <div class="row">
                  	<div class="col-md-12">
                      <div class="form-group row">
                        <label class="col-sm-2 col-form-label"><b>Nội dung</b></label>
                        <div class="col-sm-9">
                        	<label class="col-form-label">${ AdminDetailNews.content }</label>
                        </div>
                      </div>
                     </div>
                  </div>
	                  
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Ngày tạo</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailNews.create_date }</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Người tạo</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailNews.create_by }</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Ngày cập nhật</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailNews.update_date }</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Người cập nhật</label>
                        <div class="col-sm-9">
                          <label class="col-form-label">${AdminDetailNews.update_by }</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="d-flex justify-content-center">
                    <a class="nav-link" href="/LdStore/admin/quan-ly-tin-tuc">
                      <span class="menu-title btn btn-outline-danger btn-fw">Quay lại</span>
                    </a>
                  </div>
                  
                  </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>
      </c:if>
      </div>
</c:if>