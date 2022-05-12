<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
 <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="deco" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Trang chủ</title>
  <link rel="stylesheet" href="<c:url value="/template/admin/vendors/mdi/css/materialdesignicons.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/template/admin/vendors/base/vendor.bundle.base.css"/>">
  <link rel="stylesheet" href="<c:url value="/template/admin/vendors/datatables.net-bs4/dataTables.bootstrap4.css"/>">
  <link rel="stylesheet" href="<c:url value="/template/admin/css/style.css"/>">
  <link rel="shortcut icon" href="<c:url value="/template/admin/images/favicon.png"/>" />
  <script type="text/javascript" src="<c:url value="/template/admin/ckeditor/ckeditor.js"/>"></script>
</head>

<body>
  <div class="container-scroller">
    
      
      <deco:body/>
    </div>
    <!-- page-body-wrapper ends -->
  <!-- container-scroller -->

  <script src="<c:url value="/template/admin/vendors/base/vendor.bundle.base.js"/>"></script>
  <script src="<c:url value="/template/admin/vendors/chart.js/Chart.min.js"/>"></script>
  <script src="<c:url value="/template/admin/vendors/datatables.net/jquery.dataTables.js"/>"></script>
  <script src="<c:url value="/template/admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"/>"></script>
  <script src="<c:url value="/template/admin/js/off-canvas.js"/>"></script>
  <script src="<c:url value="/template/admin/js/hoverable-collapse.js"/>"></script>
  <script src="<c:url value="/template/admin/js/template.js"/>"></script>
  <script src="<c:url value="/template/admin/js/dashboard.js"/>"></script>
  <script src="<c:url value="/template/admin/js/data-table.js"/>"></script>
  <script src="<c:url value="/template/admin/js/jquery.dataTables.js"/>"></script>
  <script src="<c:url value="/template/admin/js/dataTables.bootstrap4.js"/>"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <deco:getProperty property="page.scriptadmin"></deco:getProperty>
</body>

</html>
