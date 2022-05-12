<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="navbar-brand-wrapper d-flex justify-content-center">
        <div class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">
          <a class="navbar-brand brand-logo" href="<c:url value="/admin/index"/>"><img
              src="<c:url value="/template/user/images/ld-store-logo-bluemind.png"/>" alt="logo" /></a>
          <a class="navbar-brand brand-logo-mini" href="<c:url value="/admin/index"/>"><img
              src="<c:url value="/template/user/images/ld-store-logo-bluemind.png"/>" alt="logo" /></a>
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-sort-variant"></span>
          </button>
        </div>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <ul class="navbar-nav navbar-nav-right">

          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img
                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLTV_Q9PEpanZDpvpboBdIfVWyPDBsJTn1hg&usqp=CAU"
                alt="profile" />
              <span class="nav-profile-name">${ InfoAdmin.username }</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <!-- <a class="dropdown-item">
                <i class="mdi mdi-settings text-primary"></i>
                Settings
              </a> -->
              <a href="<c:url value="/admin/dang-xuat"/>" class="dropdown-item">
                <i class="mdi mdi-logout text-primary"></i>
                Đăng xuất
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
          data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    