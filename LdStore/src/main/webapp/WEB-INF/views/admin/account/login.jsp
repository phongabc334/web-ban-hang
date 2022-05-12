<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Đăng nhập</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="<c:url value="/template/admin/vendors/mdi/css/materialdesignicons.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/template/admin/vendors/base/vendor.bundle.base.css"/>">
  <link rel="stylesheet" href="<c:url value="/template/admin/css/style.css"/>">
  <link rel="shortcut icon" href="<c:url value="/template/admin/images/favicon.png" />"/>
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="<c:url value="/template/user/images/ld-store-logo-bluemind.png"/>" alt="logo">
              </div>
              <h4>Xin chào! Bắt đầu nào</h4>
              <h6 class="font-weight-light">Đăng nhập để tiếp tục.</h6>
              <c:if test="${not empty statusloginAdmin }">
					<div class="woocommerce-notices-wrapper">
						<div class="alert alert-danger" role="alert">
							 ${ statusloginAdmin }	</div>
					</div>
				</c:if>
              <form:form action="login" modelAttribute="admin" class="pt-3"  method="post">
                <div class="form-group">
                    <form:input class="form-control form-control-lg" type="text" path="username" placeholder="Tên tài khoản hoặc email" />  
                </div>
                <div class="form-group">
                    	<form:input class="form-control form-control-lg" type="password" path="password" placeholder="Mật khẩu" />  
                </div>


				<div class="mt-3">
					<button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" style="width:50%" name="login" value="Đăng nhập">Đăng nhập</button>
				</div>
				</form:form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src=""<c:url value="/template/admin/vendors/base/vendor.bundle.base.js"/>"></script>
  <script src="<c:url value="/template/admin/js/off-canvas.js"/>"></script>
  <script src="<c:url value="/template/admin/js/hoverable-collapse.js"/>"></script>
  <script src="<c:url value="/template/admin/js/template.js"/>"></script>
</body>

</html>
