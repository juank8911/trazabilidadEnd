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
                                    <li><span>Gestor</span></li>
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
                                <div class="col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg1">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-layout-media-right"></i> Enviadas</div>
                                                <h2>${dashEnviadasGes}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="ti-truck"></i> Aprobadas</div>
                                                <h2>${dashAprovadasGes}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-3">
                                    <div class="card">
                                        <div class="seo-fact sbg2">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i>Finalizadas</div>
                                                <h2>${dashFinalizadasGes}</h2>
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
                                                <h2>${dashRechasadasGes}</h2>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-3 mt-1">
                                    <div class="card">
                                        <div class="seo-fact sbg3">
                                            <div class="p-3 d-flex justify-content-between align-items-center">
                                                <div class="seofct-icon"><i class="fa fa-industry"></i> Rechazadas Gestor</div>
                                                <h2>${dashRechaGesGes}</h2>
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
                    <footer>
                        <div class="footer-area">
                            <p>Copyright ?? 2021 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
                        </div>
                    </footer>
                    <!-- footer area end-->
                </div>
                <!-- page container area end -->

                <!-- jquery latest version -->

                <!-- bootstrap 4 js -->
                <script src="assets/js/popper.min.js"></script>
                <script src="assets/js/owl.carousel.min.js"></script>
                <script src="assets/js/jquery.slimscroll.min.js"></script>
                <script src="assets/js/jquery.slicknav.min.js"></script>

                <!-- start chart js -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
                <!-- start highcharts js -->
                <script src="https://code.highcharts.com/highcharts.js"></script>
                <!-- start zingchart js -->
                <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
                <script>
                    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
                    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
                </script>
                <!-- all line chart activation -->
                <script src="assets/js/line-chart.js"></script>
                <!-- all pie chart -->
                <script src="assets/js/pie-chart.js"></script>
                <!-- others plugins -->
                <script src="assets/js/plugins.js"></script>
                <script src="assets/js/scripts.js"></script>
                
                </body>

                </html>
