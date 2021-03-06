<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>
<!doctype html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>WebDaptive - Angular</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <!-- Place favicon.ico in the root directory -->
        <!-- Needs images, font...  -->
        <link rel="stylesheet" href="thirdparty/font-awesome/css/font-awesome.min.css">
        <!-- end Needs images -->
        <link rel="stylesheet" href="thirdparty/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="thirdparty/angular-toastr/angular-toastr.min.css"></link>
		<link rel="stylesheet" href="thirdparty/angular-ag/ag-grid.css"></link>
		<link rel="stylesheet" href="thirdparty/angular-ag/theme-fresh.css"></link>
		<link rel="stylesheet" href="thirdparty/angular-chartjs/angular-chart.min.css">
		<link rel="stylesheet" href="thirdparty/angular/angular-csp.css">
	    <link rel="stylesheet" href="styles/wd_main.css">
		<link rel="stylesheet" href="thirdparty/angular-datatables-master/dist/plugins/bootstrap/datatables.bootstrap.css">
		<link rel="stylesheet" href="thirdparty/AdminLTE-2.3.0/dist/css/skins/_all-skins.min.css">
		 <link rel="stylesheet" href="https://rawgit.com/esvit/ng-table/master/dist/ng-table.min.css">

    </head>
	<div class="loader" ng-hide="initialized">
		Loading...
	</div>
    <body data-ng-app="wdApp"
          id="wdApp"
          class="wdApp"
          data-off-canvas-nav
          data-ng-controller="WDAppController"
          data-ng-class=" {'layout-boxed': admin.layout === 'boxed' } ">
        <section data-ng-include=" 'views/header.html' "
                 id="header"
                 class="header-container "
                 data-ng-class=" {'header-fixed': admin.fixedHeader} "></section>

        <div class="main-container">
            <aside data-ng-include=" 'views/nav.html' "
                   id="nav-container"
                   class="nav-container"
                   data-ng-class=" {'nav-fixed': admin.fixedSidebar, 'nav-vertical': admin.menu === 'vertical', 'nav-horizontal': admin.menu === 'horizontal'}">
            </aside>

            <section data-ng-view data-ng-cloak id="content" class="content-container animate-fade-up"></section>
        </div>
        <!-- thirdparty libraries-->
		<script src="http://maps.googleapis.com/maps/api/js?v=3&libraries=visualization"></script>
        <script src="thirdparty/jquery/jquery-2.2.2.min.js"></script>
        <script src="thirdparty/angular/angular.min.js"></script>
		<script src="https://rawgit.com/esvit/ng-table/master/dist/ng-table.min.js"></script>
        <script src="thirdparty/angular-route/angular-route.min.js"></script>
        <script src="thirdparty/angular-animate/angular-animate.min.js"></script>
        <script src="thirdparty/angular-bootstrap/ui-bootstrap-tpls-1.2.5.min.js"></script>
        <script src="thirdparty/angular-textangular/textAngular-rangy.min.js"></script>
        <script src="thirdparty/angular-textangular/textAngular-sanitize.min.js"></script>
        <script src="thirdparty/angular-textangular/textAngular.min.js"></script>
        <script src="thirdparty/angular-ui-tree/angular-ui-tree.min.js"></script>
        <script src="thirdparty/angular-ngmaps/ng-map.min.js"></script>
        <script src="thirdparty/angular-ng-tags-input/ng-tags-input.min.js"></script>
		<script src="thirdparty/angular-loading/loading-bar.min.js"></script>
		<script src="thirdparty/angular-ngmaps/ng-map.min.js"></script>
		<script src="thirdparty/angular-ag/ag-grid.js"></script>
		<script src="thirdparty/angular-toastr/angular-toastr.tpls.min.js"></script>
		<script src="thirdparty/angular-local-storage/angular-local-storage.min.js"></script>
		<script src="thirdparty/angular-base64/angular-base64.min.js"></script>
        <script src="thirdparty/jquery-spinner/jquery.spinner.min.js"></script>
        <script src="thirdparty/seiyria-bootstrap-slider/bootstrap-slider.min.js"></script>
        <script src="thirdparty/jquery-steps/jquery.steps.min.js"></script>
        <script src="thirdparty/bootstrap-file-input/bootstrap.file-input.js"></script>
        <script src="thirdparty/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <script src="thirdparty/raphael/raphael-min.js"></script>
        <script src="thirdparty/morrisjs/morris.js"></script>
        <script src="thirdparty/jquery-sparkline/jquery.sparkline.min.js"></script>
        <script src="thirdparty/flot/jquery.flot.js"></script>
        <script src="thirdparty/flot/jquery.flot.resize.js"></script>
        <script src="thirdparty/flot/jquery.flot.pie.js"></script>
        <script src="thirdparty/flot/jquery.flot.orderBars.js"></script>
        <script src="thirdparty/flot/jquery.flot.stack.js"></script>
        <script src="thirdparty/flot-tooltip/jquery.flot.tooltip.min.js"></script>
        <script src="thirdparty/flot/jquery.flot.time.js"></script>
        <script src="thirdparty/flot/jquery.flot.animator.min.js"></script>
        <script src="thirdparty/jquery-easy-pie-chart/angular.easypiechart.min.js"></script>
        <script src="thirdparty/angular-chartjs/Chart.min.js"></script>
        <script src="thirdparty/angular-chartjs/angular-chart.min.js"></script>
        <script src="thirdparty/angular-echarts/echarts-all.js"></script>
        <script src="thirdparty/angular-echarts/ngecharts.js"></script>

		<script src="thirdparty/angular-datatables-master/ng-table.js"></script>
        <script src="thirdparty/angular-datatables-master/ng-table-export.src.js"></script>

        <!-- datatables -->
		<script src="thirdparty/angular-datatables-master/dist/angular-datatables.min.js"></script>

        <!--webdaptive -->
        <script src="scripts/wdapp.js"></script>
        <script src="scripts/commons/wdapp.controllers.js"></script>
        <script src="scripts/commons/wdapp.directives.js"></script>
        <script src="scripts/commons/wdapp.localization.all.js"></script>
        <script src="scripts/commons/wdapp.demodata.factory.js"></script>
        <script src="scripts/commons/wdapp.authentication.factory.js"></script>
        <script src="scripts/commons/wdapp.httpinterceptors.factory.js"></script>
        <script src="scripts/models/domain.objects.js"></script>
        <script src="scripts/models/request.objects.js"></script>
        <script src="scripts/ui/ui.controllers.js"></script>
        <script src="scripts/forms/forms.directives.js"></script>
        <script src="scripts/forms/forms.controllers.js"></script>
        <script src="scripts/tables/tables.controllers.js"></script>
        <script src="scripts/tasks/tasks.all.js"></script>
		<script src="scripts/charts/charts.chartjs.controllers.js"></script>
        <script src="scripts/charts/charts.flot.controllers.js"></script>
        <script src="scripts/charts/charts.morris.controllers.js"></script>
        <script src="scripts/charts/charts.other.controllers.js"></script>
		<script src="scripts/charts/charts.echarts.controllers.js"></script>
        <script src="scripts/charts/charts.directives.js"></script>
        <script src="scripts/pages/pages.controllers.js"></script>
        <script src="scripts/apps/stocks.controllers.js"></script>
        <script src="scripts/apps/stocks.factory.js"></script>
        <script src="scripts/apps/counties.controllers.js"></script>
        <script src="scripts/apps/procedures.controllers.js"></script>
        <script src="scripts/apps/sysmgmt.data.factory.js"></script>
        <script src="scripts/apps/estado/estado.controllers.js"></script>


		<!-- EU -->
		<script src="thirdparty/AdminLTE-2.3.0/dist/js/demo.js"></script>
    </body>
</html>