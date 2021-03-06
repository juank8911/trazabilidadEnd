<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header>
<title>sdstrp - Panel de Control</title>
</demo:header>
    <body>
        <%@include file ="sidebarNavbar.jsp" %>
        
            <!-- main content area start -->
            <div class="main-content">

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Panel de Control</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>Transportador</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <div class="main-content-inner">
                    <div class="row">
                        <!-- seo fact area start -->
                        <div class="col-lg-10 mt-4">
                            <div class="row">
                                <div class="col-3 ">
                                    <div class="card">
                                        <div class="seo-fact sbg1">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-archive"></i>No Enviadas</div>
<!--                                                   <h2>   -->
<%--                                                 	<c:choose> --%>
<%--                             							<c:when test="${not empty declartrn.get(1)? declartrn.get(1) : 0}"> --%>
<%--                                 							${declartrn.get(1)}			                                							 --%>
<%--                             							</c:when> --%>
<%--                         							</c:choose> --%>
<!--                         						</h2> -->
                                                  <h2>                                             	
                        							${dashNoEnviadasTrn}
                        						</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg1">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-layout-media-right"></i> Enviadas</div>
                                                  <h2> ${dashEnviadasTrn}
                        						</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-truck"></i> Aprobadas</div>

                                                  <h2> ${dashAprovadasTrn}
                        						</h2>

                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i>Finalizadas</div>
                                                  <h2> ${dashFinalizadasTrn}
                        						</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                            <div class="col-lg-10 mt-3">
                                <div class="row">
                                                                
                                <div class="col-3 mt-1">
                                    <div class="card">
                                        <div class="seo-fact sbg3">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-truck"></i>Rechazadas Transportador</div>
                                                  <h2> ${dashRechasadasTrn}
                        						</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-3 mt-1">
                                    <div class="card">
                                        <div class="seo-fact sbg3">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i> Rechazadas Gestor</div>

                                                  <h2>  ${dashRechaGesTrn}</h2>

                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                                </div>
                        </div>
                        <!-- seo fact area end -->
                    </div>
                    <!-- page title area end -->
                    <div class="main-content-inner">

                    </div>
                    <!-- main content area end -->
                    <!-- footer area start-->
                    <demo:footer/>                
                </body>

                </html>
