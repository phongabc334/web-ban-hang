<%@page import="org.springframework.web.servlet.ModelAndView"%>
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
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- partial -->
<div class="container-fluid page-body-wrapper">

<%@include file="/WEB-INF/views/layouts/admin/menu.jsp" %>
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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Thống kê&nbsp;&nbsp;</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <c:if test="${ InfoAdmin.role == 1 }" >
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body dashboard-tabs p-0">
                  <ul class="nav nav-tabs px-4" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="overview-tab" data-toggle="tab" href="#overview" role="tab"
                        aria-controls="overview" aria-selected="true">Tổng quát</a>
                    </li>
                  </ul>
                  <div class="tab-content py-0 px-0">
                    <div class="tab-pane fade show active" id="overview" role="tabpanel" aria-labelledby="overview-tab">
                      <div class="d-flex flex-wrap justify-content-xl-between">
                        <div class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                          <i class="mdi  mdi-account-check mr-3 icon-lg text-info"></i>
                          <div class="d-flex flex-column justify-content-around">
                            <small class="mb-1 text-muted">Số khách hàng</small>
                            <h5 class="mr-2 mb-0">${ SoUser }</h5>
                          </div>
                        </div>
                        
                        <div class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                          <i class="mdi  mdi-cart mr-3 icon-lg text-primary"></i>
                          <div class="d-flex flex-column justify-content-around">
                            <small class="mb-1 text-muted">Số sản phẩm đã bán</small>
                            <h5 class="mr-2 mb-0">${ TongDaBan }</h5>
                          </div>
                        </div>
                        <div class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                          <i class="mdi  mdi-package-variant-closed mr-3 icon-lg text-success"></i>
                          <div class="d-flex flex-column justify-content-around">
                            <small class="mb-1 text-muted">Tổng sản phẩm</small>
                            <h5 class="mr-2 mb-0">
                            	${ TongSoSP }
                            </h5>
                          </div>
                        </div>
                        <div class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                          <i class="mdi mdi-currency-usd mr-3 icon-lg text-danger"></i>
                          <div class="d-flex flex-column justify-content-around">
                            <small class="mb-1 text-muted">Doanh thu</small>
                            <h5 class="mr-2 mb-0"><fmt:formatNumber type="number" groupingUsed="true" value="${TongDoanhThu}" /> VNĐ</h5>
                          </div>
                        </div>
                        
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          
          
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body dashboard-tabs p-0">
                	
                	<div class="row nav nav-tabs">
	               		<div class="col-md-auto nav-item">
	               			<span class="nav nav-link active mt-2 ml-2">Thống kê đơn hàng 
	               			</span>
	               		</div>
                     
                     <div class="col-md-6 nav-item">
                		<select onchange="location.href=this.value" class="nav-link">
				          <option value="<c:url value="?s=DATE"/>" <c:if test="${ statusDonHang == 'DATE' || statusDonHang == '' }"> selected</c:if> >Hôm Nay</option>
				          <option value="<c:url value="?s=WEEK"/>" <c:if test="${ statusDonHang == 'WEEK'  }"> selected</c:if> >Tuần Này</option>
				          <option value="<c:url value="?s=MONTH"/>" <c:if test="${ statusDonHang == 'MONTH'  }"> selected</c:if> >Tháng Này</option>
				          <option value="<c:url value="?s=YEAR"/>" <c:if test="${ statusDonHang == 'YEAR'  }"> selected</c:if> >Năm Này</option>
				          <option value="<c:url value="?s=ALL"/>" <c:if test="${ statusDonHang == 'ALL'  }"> selected</c:if> >Tất cả</option>
				        </select>
                	</div>
                	</div>
                  <div class="tab-content py-0 px-0">
                    <div class="tab-pane fade active show" id="overview1" role="tabpanel" aria-labelledby="overview-tab1">
                      <div class="d-flex flex-wrap justify-content-xl-between">
	                      	<div class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
	                         <i class="mdi  mdi-ballot-outline  mr-3 icon-lg text-success"></i>
	                         <div class="d-flex flex-column justify-content-around">
	                             <small class="mb-1 text-muted">Tổng đơn hàng</small>
	                             <h5 class="mr-2 mb-0">
	                                 ${ tongdonhang.size() }
	                             </h5>
	                         </div>
	                        </div>
	                        <div class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
	                            <i class="mdi  mdi-cart mr-3 icon-lg text-primary"></i>
	                            <div class="d-flex flex-column justify-content-around">
	                                <small class="mb-1 text-muted">Số sản phẩm đã bán</small>
	                                <h5 class="mr-2 mb-0">${ DaBan }</h5>
	                            </div>
	                        </div>
	                        <div class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
	                            <i class="mdi mdi-currency-usd mr-3 icon-lg text-danger"></i>
	                            <div class="d-flex flex-column justify-content-around">
	                                <small class="mb-1 text-muted">Doanh thu</small>
	                                <h5 class="mr-2 mb-0"><fmt:formatNumber type="number" groupingUsed="true" value="${DoanhThu}" /> VNĐ</h5>
	                            </div>
	                        </div>
                        
                      	</div>
                      <div class="row mt-5">
                      <div class="col-md-2 mb-5"></div>
                      	<div class="col-md-8 mb-5">
                      		
                      		<canvas id="myChart"></canvas>
                      		<h5 class="nav nav-link mt-2 ml-2" style="text-align:center">Biểu đồ trạng thái đơn hàng</h5>
                      		<script>
		                        const data = {
		                            labels: [
		                                'Đang chờ',
		                                'Đang chuẩn bị hàng',
		                                'Đang giao hàng',
		                                'Giao thành công',
		                                'Đã Hủy'
		                            ],
		                            datasets: [{
		                                label: 'Trạng Thái Đơn Hàng',
		                                data: [${DangCho},
		                                	${ ChuanBi }, 
		                                	${ DangGiao },
		                                	${ ThanhCong },
		                                	${ DaHuy },
		                                	],
		                                backgroundColor: [
		                                	'#e1e1e1',
		                                    'rgb(237, 220, 165)',
		                                    'rgb(111, 138, 237)',
		                                    'rgb(104, 188, 49)',
		                                    'rgb(255, 99, 132)',
		                                    
		                                ],
		                                borderWidth: 1,
		                                borderColor: '#777',
		                                hoverBorderWidth: 2,
		                                hoverBorderColor: '#000',
		                                hoverOffset: 5
		                            }]
		                        };
		
		                        const config = {
		                            type: 'bar',
		                            data: data,
		                        };
		                    </script>
		                    <script>
		                        const myCharts = new Chart(
		                            document.getElementById('myChart'),
		                            config
		                        );
		                    </script>
                      	</div>
                      
                      </div>
                    </div>
                    
                  </div>
                </div>
               		
               </div>
              	
              		
              </div>
             </div>
             
             <div class="row">
                        <div class="col-md-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body dashboard-tabs p-0">
                                    <ul class="nav nav-tabs px-4" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="overview-tab" data-toggle="tab" href="#overview" role="tab" aria-controls="overview" aria-selected="true">Top 5 Sản phẩm bán chạy</a>
                                        </li>
                                    </ul>
                                    <div class="table-responsive pt-3 card-body">
                                        <table id="recent-purchases-listing" class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        #
                                                    </th>
                                                    <th>
                                                        Mã sản phẩm
                                                    </th>
                                                    <th>
                                                        Tên sản phẩm
                                                    </th>
                                                    <th>
                                                        Số lượng đã bán
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <% int i =1; %>
                                            <c:forEach var="item" items="${ SPBanChay }" begin='1' end='5'>
                                                <tr>
                                                    <td>
                                                        <% out.print(i); i++; %>
                                                    </td>
                                                    <td>
                                                       	${ item.id_product }
                                                    </td>
                                                    <td>
                                                        ${ item.name }
                                                    </td>
                                                    <td>
                                                        ${ item.daban }
                                                    </td>
                                                </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
          </c:if>

        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
      </div>
      <!-- main-panel ends -->
      </div>
 </c:if>