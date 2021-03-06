<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>sdstrp - Crear Empresa </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/metisMenu.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.min.css">
        <link rel="stylesheet" href="assets/css/coloresInst.css">
        <!-- amchart css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
        <!-- others css -->
        <link rel="stylesheet" href="assets/css/typography.css">
        <link rel="stylesheet" href="assets/css/default-css.css">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <!-- modernizr css -->
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
        
    </head>

    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- preloader area start -->
       <%@include file ="../sidebarNavbar.jsp" %>
            <!-- main content area start -->
            <div class="main-content">

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Crear empresas</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> en el sistema de informaci??n</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <!-- main content area inicio -->
                <div class="main-content-inner">
                    <div class="row">

                                            <form method="post" action="control?" class="needs-validation form-control" >
                                                <div class="form-row">
                                                        <div class="form-group col-md-2">
                                                         <label for="validationCustom01">Razon Social:</label>
                                                        </div>
                                                         <div class="form-group col-md-10">
                                                         <input type="text" name="txtRaSoc" class="form-control is-valid" id="txtRaSoc" placeholder="" value="" required="">
                                                         </div>
                                                        <div class="form-group col-md-2">
                                                         <label for="validationCustom01">Nombre Comercial:</label>
                                                        </div>
                                                         <div class="form-group col-md-10">
                                                         <input type="text" name="txtNomComer"class="form-control is-valid" id="txtNomComer" placeholder="" value="" required="">
                                                         </div>
                                                </div>

                                                    
                                                         <div class="form-row">
                                                             <div class="form-group col-md-2">
                                                                <label for="validationCustom01">NIT:</label>
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                <input type="number" name="txtNit" class="form-control is-valid" id="txtNit"  value="" required="">
                                                                </div>
                                                             <div class="form-group col-md-2">   
                                                         <label for="example-text-input" class="col-form-label">CIUU:</label>
                                                             </div>
                                                         <div class="form-group col-md-4"> 
                                                         <select class="form-control is-valid" name="txtCiiu" required="">
                                                         <c:forEach items="${listCiiu}" var="cii">
                                                           <option value="${cii.cii_id}">${cii.cii_id} / ${cii.cii_nombre}</option>     
                                                         </c:forEach>
                                                            </select>
                                                            </div>
                                                         </div>

                                                    
                                                         <div class="form-row">
                                                             <div class="form-group col-md-2">
                                                        <label for="validationCustom01">Departamento:</label>
                                                             </div>
                                                        <div class="form-group col-md-4">
                                                        <select class="form-control is-valid" name="txtDepar">
                                                        <c:forEach items="${listaDepar}" var="dep">
                                                        <option value="${dep.id_dept}">${dep.dept_nombre}</option>
                                                        </c:forEach>
                                                            </select>
                                                        </div>
                                                        <div class="form-group col-md-2">
                                                        <label for="example-text-input" class="col-form-label">Municipio:</label>
                                                        </div>
                                                        <div class="form-group col-md-4">
                       										<select class="form-control is-valid" name="txtMun" id="txtMun">
															</select>
                                                        </div>
                                                             </div>
                                                        <div class="form-row">

                                                        <div class="form-group col-md-2">
                                                         <label for="validationCustom01">Direccion:</label>
                                                         </div>
                                                         <div class="form-group col-md-4">
                                                         <input type="text" name="txtDirecc" class="form-control is-valid" id="txtDirecc"  value="" required="">
                                                         </div>
                                                         
                                                         <div class="form-group col-md-2">
                                                         <label for="example-text-input" class="col-form-label">Telefono:</label>
                                                         </div>
                                                         <div class="form-group col-md-2">
                                                         <input type="text" name="txtTel" class="form-control is-valid" id="txtTel"  value="" required="">
                                                         </div>
                                                         <div class="form-group col-md-1">
                                                         <label for="example-text-input" class="col-form-label">Ext:</label>
                                                         </div>
                                                         <div class="form-group col-md-1">
                                                         <input type="text" name="txtExt" class="form-control is-valid" id="txtExt"  value="" required="">
                                                         </div>
                                                         </div>
                                                         <div class="form-row">
                                                         
                                                         <div class="form-group col-md-2">
                                                         <label for="validationCustom01">CC Representante:</label>
                                                         </div>
                                                         <div class="form-group col-md-4">
                                                         <input type="number" name="txtReprCed" class="form-control is-valid" id="txtReprCed"  value="" required="">
                                                         </div>
                                                         
                                                         <div class="form-group col-md-2">
                                                         <label for="example-text-input" class="col-form-label">Email Representante:</label>
                                                         </div>
                                                         <div class="form-group col-md-4">
                                                         <input type="email" name="txtEmail" class="form-control is-valid" id="txtEmail"  value="" required="">
                                                         </div>
                                                         </div>
                                                    
                                                        <div class="form-row">
                                                             <div class="form-group col-2">
                                                            <label for="validationCustom01">Nombre Representante:</label>
                                                            </div>
                                                        <div class="form-group col-10">
                                                        <input type="text" name="txtRepr" class="form-control is-valid" id="txtRepr" required="">
                                                        </div>
                                                        </div>
                                                <div class="form-row">
                                                <div class="align-items-center">
                                                         <button class="btn btn-success" type="submit" name="action" value="empresaRegistro">Registrar</button>
                                                         <button class="btn btn-success" type="submit"><a href="control?action=empresaListar" class="text-white">Cancelar</a></button>
                                                </div>
                                                </div>
                                            </form>

                                        
                                 
                                <!-- Server side end -->

                            
                    </div>
                    <!-- main content area end -->
                </div>
                <!-- footer area start-->
                <footer>
                    <div class="footer-area">
                        <p>Copyright ?? 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
                    </div>
                </footer>
                <!-- footer area end-->
            </div>
            <!-- page container area end -->
            <!-- offset area start -->
            <div class="offset-area">
                <div class="offset-close"><i class="ti-close"></i></div>
                <ul class="nav offset-menu-tab">
                    <li><a class="active" data-toggle="tab" href="#activity">Activity</a></li>
                    <li><a data-toggle="tab" href="#settings">Settings</a></li>
                </ul>
                <div class="offset-content tab-content">
                    <div id="activity" class="tab-pane fade in show active">
                        <div class="recent-activity">
                            <div class="timeline-task">
                                <div class="icon bg1">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-check"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Added</h4>
                                    <span class="time"><i class="ti-time"></i>7 Minutes Ago</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-exclamation-triangle"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>You missed you Password!</h4>
                                    <span class="time"><i class="ti-time"></i>09:20 Am</span>
                                </div>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="fa fa-bomb"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Member waiting for you Attention</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="ti-signal"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>You Added Kaji Patha few minutes ago</h4>
                                    <span class="time"><i class="ti-time"></i>01 minutes ago</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg1">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Ratul Hamba sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Hello sir , where are you, i am egerly waiting for you.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-exclamation-triangle"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-exclamation-triangle"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="fa fa-bomb"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="ti-signal"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div id="settings" class="tab-pane fade">
                        <div class="offset-settings">
                            <h4>General Settings</h4>
                            <div class="settings-list">
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Notifications</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch1" />
                                            <label for="switch1">Toggle</label>
                                        </div>
                                    </div>
                                    <p>Keep it 'On' When you want to get all the notification.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Show recent activity</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch2" />
                                            <label for="switch2">Toggle</label>
                                        </div>
                                    </div>
                                    <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Show your emails</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch3" />
                                            <label for="switch3">Toggle</label>
                                        </div>
                                    </div>
                                    <p>Show email so that easily find you.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Show Task statistics</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch4" />
                                            <label for="switch4">Toggle</label>
                                        </div>
                                    </div>
                                    <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Notifications</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch5" />
                                            <label for="switch5">Toggle</label>
                                        </div>
                                    </div>
                                    <p>Use checkboxes when looking for yes or no answers.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- offset area end -->
            <!-- jquery latest version -->
            <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
            <!-- bootstrap 4 js -->
            <script src="assets/js/popper.min.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/owl.carousel.min.js"></script>
            <script src="assets/js/metisMenu.min.js"></script>
            <script src="assets/js/jquery.slimscroll.min.js"></script>
            <script src="assets/js/jquery.slicknav.min.js"></script>
			<script src="assets/js/listSTG.js"></script>
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
