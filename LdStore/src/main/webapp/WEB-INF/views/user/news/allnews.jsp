<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>Tin tức</title>
<div class="container">
<nav class="woocommerce-breadcrumb"><a href="<c:url value="/trang-chu"/>" >Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i></span>Tin tức Smartwatch</nav>
        <div class="row">
        	
        	<c:forEach var="item" items="${ news }">
        	<div class="row">
	        	<div class="col-md-1"></div>
		        	<div class="card mb-4 col-md-10">
		            	<br>
		                <a href="<c:url value="/tin-tuc/${ item.id_news }"/>"><img width="100%" style="max-height:400px" src="<c:url value="/template/user/images/${item.img }"/>" alt="..." /></a>
		                <div class="card-body">
		                    <div class="small text-muted"><fmt:formatDate  value="${ item.create_date }" type="date" dateStyle="short" />  </div>
		                    <h2 class="card-title">${ item.title }</h2>
		                    <a class="btn btn-primary" href="<c:url value="/tin-tuc/${ item.id_news }"/>">Xem thêm →</a>
	                </div>
	            </div>
            </div>
        	</c:forEach>
            <div class="row">
            	<div class="col-md-1"></div>
	            <div class="shop-control-bar-bottom col-md-10">
	                <p class="woocommerce-result-count">
	                    Hiển thị 
	                    <c:if test="${paginateInfo.currentPage == 1 }">1</c:if>
	                    <c:if test="${paginateInfo.currentPage != 1 }">${ totalProductsPage*(paginateInfo.currentPage-1)}</c:if>
	                     &ndash; 
	                     <c:if test="${totalProductsPage*paginateInfo.currentPage > tongso}">${ tongso }</c:if>
	                     <c:if test="${totalProductsPage*paginateInfo.currentPage <= tongso}">${ totalProductsPage*paginateInfo.currentPage }</c:if>
	                      của ${ tongso } kết quả
	                 </p>
	                <c:if test="${ paginateInfo.totalPage > 1 }">
	                 <nav class="woocommerce-pagination">
	                     <ul class='page-numbers' style="justify-content: end;">
	                     <c:forEach var="item" begin="1" end="${paginateInfo.totalPage }" varStatus="loop">
	                     	<c:if test="${ (loop.index) == paginateInfo.currentPage }">
	                     		<li><span aria-current="page" class="page-numbers current">${loop.index }</span></li>
	                     	</c:if>
	                     	<c:if test="${ (loop.index) != paginateInfo.currentPage }">
	                     			<li><a class="page-numbers" href='<c:url value="/tin-tuc/?page=${loop.index }" />'>${loop.index }</a></li>
	                     	</c:if>
	                     </c:forEach>
	                     </ul>
	                 </nav>
	                </c:if>
	            </div>
            </div>
        </div>
    </div>