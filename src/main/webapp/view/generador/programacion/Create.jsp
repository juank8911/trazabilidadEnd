<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="es">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>sdstrp - Crea Programacion</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png"
	href="assets/images/icon/favicon.ico">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/metisMenu.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.min.css">
<link rel="stylesheet" href="assets/css/coloresInst.css">

<!-- amchart css -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://www.amcharts.com/lib/3/plugins/export/export.css" -->
<!-- 	type="text/css" media="all" /> -->
<!-- others css -->
<link rel="stylesheet" href="assets/css/typography.css">
<link rel="stylesheet" href="assets/css/default-css.css">
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<link rel="stylesheet" href="assets/css/checkbox.css" >
<!-- modernizr css -->



</head>

<body>
	<%@include file="../sidebarNavbar.jsp"%>
	<!-- main content area start -->
	<div class="main-content">

		<!-- page title area start -->
		<div>
			<div class="row align-items-center">
				<div class="col-sm-7">
					<div class="breadcrumbs-area">
						<h4 class="page-title pull-left">Crear de Programación</h4>
						<ul class="breadcrumbs pull-left">
							<li><span>configuradas de recogidas de residuos</span></li>
						</ul>
					</div>
				</div>
				<!-- FIN DE MENU  -->
			</div>
		</div>
		<!-- page title area end -->
		<!-- main content area inicio -->
		<br>
		<div class="main-content-inner">
			<div class="row ">
				<!-- Server side start -->


				<form method="post"
					action="controlGenerador?action=programaRGuardaGenera"
					class="needs-validation form-control">
							
						
						<div class="row justify-content-md-center">
					<div class="col-md-auto">
						<div class="custom-control custom-checkbox checkbox-lg">
							<input type="checkbox" class="custom-control-input"
								name="btnInterna" id="btnInterna" onchange="interna(this.form.btnInterna.checked)"> <label
								class="custom-control-label" for="btnInterna">Interna</label>
						</div>
					</div>
						</div>
						
					<div class="row row-cols-2" name="traz" id="traz">
						<div class="col-md-6">
							<label for="txtTrans">Transportador: </label>
							<select
								name="chekTrans" id="chekTrans" class="form-control">
								<option>--------SELECCIONE TRANSPORTADOR--------</option>
								<c:forEach items="${listaSedeProgTrans}" var="sed">
								<option value="${sed.sed_id}">
								 ${sed.empresaSed.emp_nombre_comercial} :: ${sed.sed_nombre} :: ${sed.sed_direccion} 
								 </option>
								</c:forEach>
								
							</select>
						</div>
						<div class="col-md-6">
							<label for="txtGes">Gestor</label> 
							<select name="txtGes" id="txtGes" class="form-control">
								<option>-------- SELECCIONE TRANSPORTADOR --------</option>
							</select>
						</div>
					</div>
					
					<div class="row justify-content-md-center m-3">
					<div class="form-group col-md-8">
								<label for="txtPrueba" class="form-label">Residuos</label> 
								<select class="form-select form-select-lg mb-6" name="txtPrueba[]" id="txtPrueba" multiple aria-label="multiple select example" disabled="">
									<c:forEach var="dato" items="${listaResiduosGenId}">
										<option value="${dato.get(0)}">${dato.get(1)}</option>
									</c:forEach>
								</select>						
					</div>
					</div>
					
					<div class="row row-cols-2">

								<div class="form-group col-md-5">
  								<label for="txtFactual" class="form-label">Fecha: </label>
  								<input type="date" name="txtFactual" class="form-control" id="txtFactual" placeholder="">
								</div>
								
								<div class="form-group col-md-5">
								<label for="txtRep" class="form-label">Se Repite? :</label>
								<select class="form-control" name="txtRep" onChange="mostrarF(this.value);">
								<option value="1">Nunca</option>
								<option value="2">Todos los Dias</option>
								<option value="3">Cada Semana</option>
								<option value="4">Cada Mes</option>
								<option value="5">Cada Año</option>
							</select>
								</div>


					</div>
					
					<div class="form-row m-2">
						<div class="form-grup">														
							<label for="txtFfinal" id="hastaFL"
								style="display: none">Hasta </label>
							<input type="date" name="txtFfinal" class="form-control"
								id="fechaActual2" style="display: none" placeholder="" value="">
						</div>
											
					</div>
					

					<div class="form-row m-3" id="diasSemana" style="display: none">
						<div class="form-check form-check-inline col-md-12">
							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnLunes" id="btnLunes"> <label
									class="custom-control-label" for="btnLunes">Lunes</label>
							</div>

							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnMartes" id="btnMartes"> <label
									class="custom-control-label" for="btnMartes">Martes</label>
							</div>


							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnMiercoles" id="btnMiercoles"> <label
									class="custom-control-label" for="btnMiercoles">Miercoles</label>
							</div>


							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnJueves" id="btnJueves"> <label
									class="custom-control-label" for="btnJueves">Jueves</label>
							</div>

							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnViernes" id="btnViernes"> <label
									class="custom-control-label" for="btnViernes">Viernes</label>
							</div>


							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnSabado" id="btnSabado"> <label
									class="custom-control-label" for="btnSabado">Sabado</label>
							</div>


							<!-- 														------------------------------ -->
							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnDomingo" id="btnDomingo"> <label
									class="custom-control-label" for="btnDomingo">Domingo</label>
							</div>

						</div>
					</div>




					<button class="btn btn-success mb-3" type="submit">Crear Programacion</button>
					<button class="btn btn-success mb-3" type="submit">
						<a href="controlGenerador?action=programaRGuardaGenera" class="text-white">Cancelar</a>
					</button>
					&nbsp;
				</form>

			</div>
			<!-- Server side end -->
		</div>
		<!-- main content area end -->
	</div>
	<!-- footer area start-->
	<footer>
		<div class="footer-area">
			<p>
				Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos
				los derechos reservados.
			</p>
		</div>
	</footer>
	<!-- footer area end-->
	</div>
	<!-- page container area end -->

	<!-- jquery latest version -->
	<script src="assets/js/jquery.min.js"></script>
	<!-- bootstrap 4 js -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/metisMenu.min.js"></script>
	<script src="assets/js/jquery.slimscroll.min.js"></script>
	<script src="assets/js/jquery.slicknav.min.js"></script>

	<!-- start chart js -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
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
	<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/scripts.js"></script>
	<script src="assets/js/validaciones.js"></script>
	<script src="assets/js/jquery.multiselect.js" type="text/javascript"></script>
	<script src="assets/js/listSTG.js"></script>
	
</body>

</html>
