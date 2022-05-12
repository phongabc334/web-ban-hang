<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="<c:url value="/admin/index"/>">
              <i class="mdi mdi-view-dashboard mr-2"></i>
              <c:if test="${ InfoAdmin.role == 1 }" >
              <span class="menu-title">Thống Kê</span>
              </c:if>
              <c:if test="${ InfoAdmin.role != 1 }" >
              <span class="menu-title">Trang Chủ</span>
              </c:if>
            </a>
          </li>
          <c:if test="${ InfoAdmin.role == 1 || InfoAdmin.role == 2 }" >
          <li class="nav-item">
            <a class="nav-link" href="<c:url value="/admin/quan-ly-san-pham"/>">
              <i class="mdi mdi-cube mr-2"></i>
              <span class="menu-title">Quản Lý Sản Phẩm</span>
            </a>
          </li>
          </c:if>
          <c:if test="${ InfoAdmin.role == 1 || InfoAdmin.role == 4 }" >
          <li class="nav-item">
            <a class="nav-link" href="<c:url value="/admin/quan-ly-tin-tuc"/>">
              <i class="mdi mdi-newspaper   mr-2"></i>
              <span class="menu-title">Quản Lý Tin Tức</span>
            </a>
          </li>
          </c:if>
          <c:if test="${ InfoAdmin.role == 1 }" >
          <li class="nav-item">
            <a class="nav-link" href="<c:url value="/admin/quan-ly-danh-muc"/>">
              <i class="mdi mdi-file-document-box  mr-2"></i>
              <span class="menu-title">Quản Lý Danh Mục</span>
            </a>
          </li>
          </c:if>
          <c:if test="${ InfoAdmin.role == 1 || InfoAdmin.role == 3 }" >
          <li class="nav-item">
            <a class="nav-link" href="<c:url value="/admin/quan-ly-hoa-don"/>">
              <i class="mdi mdi-file-document  mr-2"></i>
              <span class="menu-title">Quản Lý Đơn Hàng</span>
            </a>
          </li>
          </c:if>
          <c:if test="${ InfoAdmin.role == 1 }" >
          <li class="nav-item">
            <a class="nav-link" href="<c:url value="/admin/quan-ly-tai-khoan"/>">
              <i class="mdi mdi-account  mr-2"></i>
              <span class="menu-title">Quản Lý Tài Khoản</span>
            </a>
          </li>
          </c:if>
        </ul>
      </nav>