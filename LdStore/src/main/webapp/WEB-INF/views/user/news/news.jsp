<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>${ news.title }</title>
<div class="container">
    <nav class="woocommerce-breadcrumb"><a href="<c:url value="/"/>">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i></span><a href="<c:url value="/tin-tuc"/>">Tin tức Smartwatch</a><span class="delimiter"><i class="fa fa-angle-right"></i></span>${ news.title }</nav>
    <div class="row">
		<div class="col-md-2"></div>
        <main id="main" class="site-main col-8">
            <article id="post-16849" class="post-16849 post type-post status-publish format-standard has-post-thumbnail hentry category-tin-tuc-smartwatch">
                <div class="media-attachment"><img width="800" height="800" src="<c:url value="/template/user/images/${news.img }"/>" class="attachment-electro_blog_medium size-electro_blog_medium wp-post-image" alt="" loading="lazy" sizes="(max-width: 800px) 100vw, 800px"></div>
                <header class="entry-header">
                    <h1 class="entry-title">${ news.title }</h1>
                    <div class="entry-meta">
                        <span class="cat-links">
							<a href="<c:url value="/tin-tuc"/>" rel="category tag">Tin tức Smartwatch</a></span>
                        <span class="posted-on">
                        	<time class="entry-date published" datetime="">
                        		<fmt:formatDate  value="${ news.create_date }" type="date" dateStyle="short" />  
                       		</time> 
                       		<time class="updated" datetime="">${ news.create_date }</time>
                       	</span>
                    </div>
                </header>
                <!-- .entry-header -->
                <div class="entry-content">
					${ news.content }
                </div>
                <!-- .entry-content -->
            </article>
            <!-- #post-## -->
        </main>
    </div>
</div>