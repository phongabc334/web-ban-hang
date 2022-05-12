<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="vi" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="xmlrpc.php">
	<link rel="shortcut icon" type="image/png" href="<c:url value="/template/user/images/Ldstore-favicon.png"/>" />
    <title><decorator:title default="Ld Store"></decorator:title></title>
    <meta name='robots' content='max-image-preview:large' />
    <link rel='dns-prefetch' href='http://fonts.googleapis.com/' />
    
    <link href="<c:url value="/template/user/css/style.css" />" rel="stylesheet" type="text/css" />
    
    <link href='https://fonts.gstatic.com/' crossorigin rel='preconnect' />
    <link rel="alternate" type="application/rss+xml" title="Dòng thông tin LD Store &raquo;" href="feed/index.html" />
    <link rel="alternate" type="application/rss+xml" title="Dòng phản hồi LD Store &raquo;" href="comments/feed/index.html" />
	<script src="https://kit.fontawesome.com/6a1290c2eb.js" crossorigin="anonymous"></script>
    <link rel='stylesheet' id='wp-block-library-css' href='<c:url value="/template/user/wp-includes/css/dist/block-library/style.min69c8.css?ver=5.8.4" />' type='text/css' media='all' />
    <link rel='stylesheet' id='wc-blocks-vendors-style-css' href='<c:url value="/template/user/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-vendors-styled03b.css?ver=5.5.1" />' type='text/css' media='all' />
    <link rel='stylesheet' id='wc-blocks-style-css' href='<c:url value="/template/user/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-styled03b.css?ver=5.5.1" />' type='text/css' media='all' />
    <link rel='stylesheet' id='mas-wc-brands-style-css' href='<c:url value="/template/user/wp-content/plugins/mas-woocommerce-brands/assets/css/style4b68.css?ver=1.0.4" />' type='text/css' media='all' />
    <link rel='stylesheet' id='rs-plugin-settings-css' href='<c:url value="/template/user/wp-content/plugins/revslider/public/assets/css/rs6e434.css?ver=6.4.11" />' type='text/css' media='all' />
    <link rel='stylesheet' id='electro-fonts-css' href='https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&amp;display=swap" />' type='text/css' media='all' />
    <link rel='stylesheet' id='font-electro-css' href='<c:url value="/template/user/wp-content/themes/electro/assets/css/font-electro7c45.css?ver=3.0.6" />' type='text/css' media='all' />
    <link rel='stylesheet' id='fontawesome-css' href='<c:url value="/template/user/wp-content/themes/electro/assets/vendor/fontawesome/css/all.min7c45.css?ver=3.0.6" />'  type='text/css' media='all' />
    <link rel='stylesheet' id='animate-css-css' href='<c:url value="/template/user/wp-content/themes/electro/assets/vendor/animate.css/animate.min7c45.css?ver=3.0.6" />' type='text/css' media='all' />
    <link rel='stylesheet' id='electro-style-css' href='<c:url value="/template/user/wp-content/themes/electro/style.min7c45.css?ver=3.0.6" />' type='text/css' media='all' />
    <link rel='stylesheet' id='electro-color-css' href='<c:url value="/template/user/wp-content/themes/electro/assets/css/colors/yellow.min7c45.css?ver=3.0.6" />' type='text/css' media='all' />
    <link rel='stylesheet' id='js_composer_front-css' href='<c:url value="/template/user/wp-content/plugins/js_composer/assets/css/js_composer.minbdeb.css?ver=6.7.0" />' type='text/css' media='all' />
    <script type='text/javascript' src='<c:url value="/template/user/wp-includes/js/jquery/jquery.minaf6c.js?ver=3.6.0" />' id='jquery-core-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-includes/js/jquery/jquery-migrate.mind617.js?ver=3.3.2" />' id='jquery-migrate-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/revslider/public/assets/js/rbtools.minb7f2.js?ver=6.4.8" />' id='tp-tools-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/revslider/public/assets/js/rs6.mine434.js?ver=6.4.11" />' id='revmin-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.mincf7c.js?ver=2.7.0-wc.5.6.2" />' id='jquery-blockui-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min4c7e.js?ver=5.6.2" />' id='wc-add-to-cart-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/js_composer/assets/js/vendors/woocommerce-add-to-cartbdeb.js?ver=6.7.0" />' id='vc_woocommerce-add-to-cart-js-js'></script>
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="xmlrpc0db0.php?rsd" />
    <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="wp-includes/wlwmanifest.xml" />
    <meta name="generator" content="WordPress 5.8.4" />
    <meta name="generator" content="WooCommerce 5.6.2" />
    <link rel='shortlink' href='index.html' />
    <meta name="framework" content="Redux 4.2.14" />
    <meta name="generator" content="Powered by WPBakery Page Builder - drag and drop page builder for WordPress." />
    <meta name="generator" content="Powered by Slider Revolution 6.4.11 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface." />

    <style type="text/css" id="wp-custom-css">
        @import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&amp;display=swap');
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
        }
        
        .woocommerce-breadcrumb {
            padding: 5px 0;
        }
        
        .footer-bottom-widgets .widgettitle {
            font-size: 1rem;
            font-weight: bold;
            display: block;
            border-bottom: 1px solid #fed700;
            padding-bottom: 7px;
            margin-bottom: 9px;
        }
        
        .footer-bottom-widgets ul.menu {
            list-style: disc;
            margin-left: 16px;
            color: #999;
        }
        
        .footer-bottom-widgets .widget_tag_cloud .tagcloud a {
            font-size: 1em !important;
            margin: 0px 5px 0 0;
            padding: 0 5px 0 0;
            border-width: 0 1px 0 0;
            border-color: #999
        }
        
        .footer-bottom-widgets a strong {
            color: #0084cb
        }
        
        .footer-bottom-widgets .widget_tag_cloud .tagcloud a:hover {
            background: none;
            color: #1565c0
        }
        
        .footer-gray {
            background: #eee;
        }
        
        .desktop-footer .footer-bottom-widgets {
            padding-bottom: 0px;
            box-shadow: 0 0 10px #ccc;
            margin-left: calc(-50vw + 50% - 0px);
        }
        
        .entry-summary hr {
            margin: 10px 0px;
        }
        
        .single-product .action-buttons {
            display: none;
        }
        
        .single-product.full-width .woocommerce-product-details__short-description {
            margin-bottom: 1em;
        }
        
        .entry-summary .nhom-qua {
            border-radius: 4px;
            padding: 12px 10px 10px;
            border: 1px dashed #e0524f;
            position: relative;
            margin-top: 22px;
            background: #FFFDF9
        }
        
        .entry-summary .nhom-qua>div {
            color: #e0524f;
            background: #fff;
            position: absolute;
            top: -18px;
            padding: 0 5px;
            left: 5px;
            font-weight: 500;
            text-transform: uppercase;
        }
        
        .entry-summary .nhom-qua>div .fa {
            font-size: 20px;
            margin: 5px
        }
        
        .entry-summary .qua {
            list-style: none;
            margin: 0;
            padding: 0px;
        }
        
        .entry-summary .qua .fa {
            color: #3fb846;
            margin: 5px;
        }
        
        .entry-summary .qua li span {
            color: #e0524f;
        }
        
        ul.servies {
            background: #fff;
            list-style: none;
            padding: 0;
            margin: 0 0 10px;
        }
        
        ul.servies li {
            padding: 12px 15px;
            border-bottom: 1px dashed #ddd;
            cursor: pointer;
        }
        
        ul.servies li i {
            float: left;
            font-size: 26px;
            margin: 12px 22px 5px 5px;
        }
        
        ul.servies li span {
            font-size: 14px;
        }
        
        ul.servies li:hover {
            background: #f9f9f9;
        }
        
        ul.servies li:hover .fa,
        ul.servies li:hover span {
            color: #fff;
        }
        
        .order-other .col-sm-6 {
            padding-left: 5px;
            padding-right: 5px;
        }
        
        .order-other.row {
            text-align: center;
            margin-left: -5px;
            margin-right: -5px;
        }
        
        .order-other .order-tel,
        .order-other .order-spe,
        .order-other .order-laz,
        .order-other .order-fb {
            margin-bottom: 10px;
            color: #fff !important;
            padding: 6px 5px;
            border-radius: 4px;
            line-height: 1.5
        }
        
        .order-other .order-tel a,
        .order-other .order-spe a,
        .order-other .order-laz a,
        .order-other .order-fb a {
            color: #fff;
        }
        
        .order-other .order-tel span,
        .order-other .order-spe span,
        .order-other .order-laz span,
        .order-other .order-fb span {
            font-weight: 600;
            font-size: 16px;
            color: #fff !important;
        }
        
        .order-other .order-fb {
            background: #3b5998;
            /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(#4f78cd, #3b5998);
            /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(#4f78cd, #3b5998);
            /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(#4f78cd, #3b5998);
            /* For Firefox 3.6 to 15 */
            background: linear-gradient(#4f78cd, #3b5998);
            /* Standard syntax */
        }
        
        .order-other .order-fb a {
            color: #fff;
        }
        
        .order-other .order-tel {
            background: #4bafd7;
            /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(#5bc3eb, #4bafd7);
            /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(#5bc3eb, #4bafd7);
            /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(#5bc3eb, #4bafd7);
            /* For Firefox 3.6 to 15 */
            background: linear-gradient(#5bc3eb, #4bafd7);
            /* Standard syntax */
        }
        
        .order-other .order-spe {
            background: #f57224 !important;
            /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(#f48340, #f57224) !important;
            /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(#f48340, #f57224) !important;
            /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(#f48340, #f57224) !important;
            /* For Firefox 3.6 to 15 */
            background: linear-gradient(#f48340, #f57224) !important;
            /* Standard syntax */
        }
        
        .order-other .order-laz {
            background: #e0524f;
            /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(#ed5a56, #e0524f);
            /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(#ed5a56, #e0524f);
            /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(#ed5a56, #e0524f);
            /* For Firefox 3.6 to 15 */
            background: linear-gradient(#ed5a56, #e0524f);
            /* Standard syntax */
        }
        
        @media (max-width: 767px) {
            .order-other .col-sm-6 {
                padding-left: 10px;
                padding-right: 10px;
            }
        }
        
        .single-product .cart .quantity {
            display: none
        }
        
        .single-product .cart .single_add_to_cart_button.button {
            margin: 0 0 5px;
            padding: 0px 5px;
            border: none !important;
            text-indent: 0;
            width: 100%;
            height: 50px !important;
            border-radius: 6px !important;
            text-transform: uppercase;
            font-size: 16px;
            line-height: 50px;
            background: #f57224 !important;
            /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(#f48340, #f57224) !important;
            /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(#f48340, #f57224) !important;
            /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(#f48340, #f57224) !important;
            /* For Firefox 3.6 to 15 */
            background: linear-gradient(#f48340, #f57224) !important;
            /* Standard syntax */
        }
        
        .single-product .cart .single_add_to_cart_button.button:hover {
            background: #f26511 !important;
            /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(#f57224, #f26511) !important;
            /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(#f57224, #f26511) !important;
            /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(#f57224, #f26511) !important;
            /* For Firefox 3.6 to 15 */
            background: linear-gradient(#f57224, #f26511) !important;
            /* Standard syntax */
        }
        
        .handheld-footer .handheld-widget-menu .columns {
            background: none
        }
        
        .handheld-footer a.external {
            float: none !important;
            margin-bottom: 10px
        }
        
        .handheld-footer h2.widgettitle {
            font-size: 14px;
            font-weight: bold;
            display: block;
            border-bottom: 1px solid #fed700;
            padding-bottom: 7px;
            margin-bottom: 9px;
        }
        
        @media only screen and (max-width: 600px) {
            .columns-4-1-4 .products-4 ul.products>li.product {
                width: 50%
            }
        }
        /**single product**/
        
        .single-product.full-width .single-product-wrapper {
            padding-bottom: 10px;
            border-bottom: 1px solid #ddd
        }
        
        .single-product-wrapper .product-images-wrapper .electro-wc-product-gallery__image {
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        
        .single-product-wrapper .product-images-wrapper {
            margin-bottom: 10px
        }
        
        .single-product.full-width .wc-tab {
            background: #fff;
            border-radius: 5px;
            padding: 30px;
            border-color: #eaeaea
        }
        
        @media only screen and (min-width: 768px) {
            .single-product-wrapper .product-images-wrapper {
                width: 45%
            }
            .single-product-wrapper .summary {
                width: 35%;
                margin-top: 10px
            }
            .single-product-wrapper .right-single-product {
                flex: 0 0 auto;
                padding: 0;
                border-left: 1px dashed #ddd;
                width: 20%;
            }
            .single-product.full-width .single-product-wrapper {
                margin-bottom: 1em
            }
        }
        /**quick-buy**/
        
        .single-product .cart .single_add_to_cart_button {
            text-transform: none !important;
        }
        
        .single-product .cart .button {
            width: 49% !important;
            display: inline-block;
        }
        
        .single-product .cart button.buy_now_button {
            width: 50%;
            border-radius: 6px;
            height: 50px;
            float: right;
            line-height: 50px;
            margin: 0px 0px 5px;
            padding: 0px 5px;
            font-size: 16px;
            font-weight: bold;
            text-transform: uppercase;
            color: #fff;
            background: #e0524f;
            /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(#ed5a56, #e0524f);
            /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(#ed5a56, #e0524f);
            /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(#ed5a56, #e0524f);
            /* For Firefox 3.6 to 15 */
            background: linear-gradient(#ed5a56, #e0524f);
            /* Standard syntax */
        }
        
        .single-product .cart button.buy_now_button:hover {
            background: #ed5a56;
            /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(#f55f5a, #ed5a56);
            /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(#f55f5a, #ed5a56);
            /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(#f55f5a, #ed5a56);
            /* For Firefox 3.6 to 15 */
            background: linear-gradient(#f55f5a, #ed5a56);
            /* Standard syntax */
        }
        /**tra gop**/
        
        .installment {
            margin-bottom: 10px;
        }
        
        .installment a {
            border: none;
            font-weight: bold;
            color: #fff;
            display: block;
            text-align: center;
            width: 100%;
            height: 50px;
            border-radius: 6px;
            padding: 5px 20px;
            text-transform: uppercase;
            font-size: 14px;
            line-height: 20px;
            background: #189eff;
            /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(#28a2fa, #189eff);
            /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(#28a2fa, #189eff);
            /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(#28a2fa, #189eff);
            /* For Firefox 3.6 to 15 */
            background: linear-gradient(#28a2fa, #189eff);
            /* Standard syntax */
        }
        
        .installment a span {
            font-size: 12px;
            display: block;
            font-weight: 400;
            text-transform: none;
        }
        
        .installment a:hover {
            color: #fff;
            background: #058bed;
            /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(#189eff, #058bed);
            /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(#189eff, #058bed);
            /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(#189eff, #058bed);
            /* For Firefox 3.6 to 15 */
            background: linear-gradient(#189eff, #058bed);
            /* Standard syntax */
        }
        /**descrip product**/
        
        #tab-description h2 {
            font-size: 1.3rem;
            line-height: 1.7rem;
            font-weight: 600;
            margin-bottom: 0.5em;
        }
        
        #tab-description p {
            color: #333;
            margin-bottom: 0.5em;
            font-size: 1.1em;
            line-height: 1.5em;
            text-align: justify;
        }
        
        @media (min-width: 767px) {
            .single-product.full-width .woocommerce-tabs {
                width: 75%;
            }
            .single-product.full-width .right-detail-product {
                width: 25%;
            }
        }
        
        .single-product.full-width .woocommerce-tabs {
            max-height: 600px;
            overflow: hidden;
            position: relative;
            transition: max-height 2s;
        }
        
        .single-product.full-width .woocommerce-tabs.expanded {
            max-height: 10000px;
        }
        
        .single-product.full-width .woocommerce-tabs:after {
            z-index: 9998;
            display: block;
            content: "";
            height: 120px;
            position: absolute;
            bottom: 0px;
            width: 100%;
            left: 0;
            background: rgba(255, 255, 255, 0.6);
            background: linear-gradient(180deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.33) 33%, rgba(255, 255, 255, 0.8) 83%, #fff);
        }
        
        .single-product.full-width .woocommerce-tabs.expanded:after {
            display: none;
        }
        
        .woocommerce-tabs .view-more {
            position: absolute;
            bottom: 0;
            left: 50%;
            width: 120px;
            margin-left: -60px;
            padding: 7px 5px;
            text-align: center;
            background-color: #eaeaea;
            color: #f57f17;
            font-weight: normal;
            outline: none;
            border-radius: 5px;
            box-shadow: none;
            z-index: 9999;
            cursor: pointer;
        }
        
        .woocommerce-tabs .view-more.active .more-text,
        .woocommerce-tabs .view-more .less-text {
            display: none;
        }
        
        .woocommerce-tabs .view-more.active .less-text {
            display: inherit;
        }
        
        .right-detail-product .widget {
            margin-bottom: 20px;
        }
        
        .right-detail-product .widget h3 {
            font-size: 1.3em;
            font-weight: bold;
            border-bottom: 1px solid #fed700;
            padding-bottom: 6px;
            margin-bottom: 10px
        }
        
        .right-detail-product ul {
            padding: 0px;
        }
        
        .right-detail-product li {
            list-style: none;
            margin-bottom: 10px;
            display: table;
            padding-bottom: 10px;
            border-bottom: 1px solid #eee;
        }
        
        .right-detail-product li a.post-thumbnail {
            width: 30%;
            display: inline-block;
            float: left;
        }
        
        .right-detail-product li .post-content {
            display: inline-block;
            width: 70%;
            padding-left: 10px;
        }
        
        .right-detail-product li .post-content a {
            display: block;
            line-height: 1.5em;
            text-align: justify;
            font-weight: 600;
        }
        
        .right-detail-product li .post-content a:hover {
            color: #f57f17
        }
        
        .right-detail-product li .post-content .post-date {
            font-style: italic;
        }
    </style>
    <style type="text/css" data-type="vc_custom-css">
        .breadcrumb {
            display: none;
        }
    </style>
</head>
<body class="home page-template page-template-template-homepage-v4 page-template-template-homepage-v4-php page page-id-8761 theme-electro woocommerce-no-js wpb-js-composer js-comp-ver-6.7.0 vc_responsive">
    <div class="off-canvas-wrapper w-100 position-relative">
        <div id="page" class="hfeed site">
        
        
	<%@include file="/WEB-INF/views/layouts/user/header.jsp" %>
	

	<decorator:body/>


	<%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
	
	
		</div>
        <!-- #page -->
    </div>

    <div class="electro-overlay"></div>

    <div class="back-to-top-wrapper position-absolute bottom-0 pe-none">
        <a href="#" class="btn btn-secondary shadows rounded-cricle d-flex align-items-center justify-content-center p-0 pe-auto position-sticky position-fixed back-to-top-link " aria-label="Scroll to Top"><i class="fa-solid fa-angle-up"></i></a>
    </div>
    <link href="https://fonts.googleapis.com/css?family=Roboto:400&amp;display=swap" rel="stylesheet" property="stylesheet" media="all" type="text/css">

    <script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.mincf3c.js?ver=2.1.4-wc.5.6.2" />' id='js-cookie-js'></script>

    <script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min4c7e.js?ver=5.6.2" />' id='woocommerce-js'></script>

    <script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min4c7e.js?ver=5.6.2" />' id='wc-cart-fragments-js'></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/themes/electro/assets/js/jquery.waypoints.min7c45.js?ver=3.0.6" />' id='waypoints-js-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/themes/electro/assets/js/typeahead.bundle.min7c45.js?ver=3.0.6" />' id='typeahead-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/themes/electro/assets/js/handlebars.min7c45.js?ver=3.0.6" />' id='handlebars-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/themes/electro/assets/js/electro.min7c45.js?ver=3.0.6" />' id='electro-js-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/themes/electro/assets/js/owl.carousel.min7c45.js?ver=3.0.6" />' id='owl-carousel-js-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-includes/js/wp-embed.min69c8.js?ver=5.8.4" />' id='wp-embed-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.minbdeb.js?ver=6.7.0" />' id='wpb_composer_front_js-js'></script>
	
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/themes/electro/assets/js/hidemaxlistitem.min7c45.js?ver=3.0.6" />' id='hidemaxlistitem-js-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-includes/js/jquery/ui/core.min35d0.js?ver=1.12.1" />' id='jquery-ui-core-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-includes/js/jquery/ui/mouse.min35d0.js?ver=1.12.1" />' id='jquery-ui-mouse-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-includes/js/jquery/ui/slider.min35d0.js?ver=1.12.1" />' id='jquery-ui-slider-js'></script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/woocommerce/assets/js/accounting/accounting.minaffb.js?ver=0.4.2" />' id='accounting-js'></script>
    <script type='text/javascript' id='wc-price-slider-js-extra'>
        /* <![CDATA[ */
        var woocommerce_price_slider_params = {
            "currency_format_num_decimals": "0",
            "currency_format_symbol": "\u20ab",
            "currency_format_decimal_sep": ".",
            "currency_format_thousand_sep": ".",
            "currency_format": "%v\u00a0%s"
        };
        /* ]]> */
    </script>
    <script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/woocommerce/assets/js/frontend/price-slider.min4c7e.js?ver=5.6.2" />' id='wc-price-slider-js'></script>
    
    
    
    
	<script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/woocommerce/assets/js/zoom/jquery.zoom.min13f3.js?ver=1.7.21-wc.5.6.2" />' id='zoom-js'></script>
	<script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/js_composer/assets/lib/flexslider/jquery.flexslider.minbdeb.js?ver=6.7.0" />' id='flexslider-js'></script>
	<script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/woocommerce/assets/js/photoswipe/photoswipe.min58a7.js?ver=4.1.1-wc.5.6.2" />' id='photoswipe-js'></script>
	<script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/woocommerce/assets/js/photoswipe/photoswipe-ui-default.min58a7.js?ver=4.1.1-wc.5.6.2" />' id='photoswipe-ui-default-js'></script>
	<script type='text/javascript' src='<c:url value="/template/user/wp-content/plugins/woocommerce/assets/js/frontend/single-product.min4c7e.js?ver=5.6.2" />' id='wc-single-product-js'></script>
    <script type='text/javascript' id='wc-single-product-js-extra'>
        /* <![CDATA[ */
        var wc_single_product_params = {
            "i18n_required_rating_text": "Vui l\u00f2ng ch\u1ecdn m\u1ed9t m\u1ee9c \u0111\u00e1nh gi\u00e1",
            "review_rating_required": "yes",
            "flexslider": {
                "rtl": false,
                "animation": "slide",
                "smoothHeight": true,
                "directionNav": false,
                "controlNav": true,
                "slideshow": false,
                "animationSpeed": 500,
                "animationLoop": false,
                "allowOneSlide": false
            },
            "zoom_enabled": "1",
            "zoom_options": [],
            "photoswipe_enabled": "1",
            "photoswipe_options": {
                "shareEl": false,
                "closeOnScroll": false,
                "history": false,
                "hideAnimationDuration": 0,
                "showAnimationDuration": 0
            },
            "flexslider_enabled": "1"
        };
        /* ]]> */
    </script>
	<script type='text/javascript' id='electro-js-js-after'>
        jQuery(document).ready(function($) {
            var flex = $('#electro-wc-product-gallery-623320f114af7');
            var flex_args = {
                "selector": ".electro-wc-product-gallery__wrapper > .electro-wc-product-gallery__image",
                "animation": "slide",
                "controlNav": true,
                "directionNav": false,
                "animationLoop": false,
                "slideshow": false,
                "asNavFor": ".woocommerce-product-gallery",
                "itemMargin": 6,
                "itemWidth": 90
            };
            flex_args.asNavFor = flex.siblings(flex_args.asNavFor);
            flex.flexslider(flex_args);
        });
    </script>    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <decorator:getProperty property="page.script"></decorator:getProperty>
    <decorator:getProperty property="page.scriptsearch"></decorator:getProperty>
</body>


</html>