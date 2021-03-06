<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>
<%
	response.setContentType("text/html; charset=utf-8");
	response.setHeader("Cache-Control", "no-cache, private, must-revalidate, max-stale=0, post-check=0, pre-check=0 no-store"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setDateHeader("Expires", 0); // Proxies.
%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" href="../styles/common_grid.css" rel="stylesheet" />
<link type="text/css" href="../styles/slick.pager.css" rel="stylesheet" />
<style type="text/css">
.hide{display:none;}
.ui-menu { width: 450px; }
</style>
</head>
<body>
<ul id="menu">
  <li>Acoes
    <ul>
      <li id='addSup' class='items'>Adicionar produto a Supermercado</li>
      <li id='remSup' class='items'>Remover produto do Supermercado</li>
	  <li id='addPro' class='items'>Adicionar produto promo�ao</li>
	  <li id='remPro' class='items'>Remover produto da promo��o</li>
    </ul>
  </li>
</ul>
	 <div class="export-select">
	     <ul class="link-list">
	         <li class="last export-type"><small><strong>Export</strong>:<a href="" class="csv">CSV</a></small></li>
	     </ul>
	 </div>
	<div style="width:100%;height:100%;float:left;">
		<div class="grid-header" style="width:100%">
		    <span id="listprodDialog" style="float:left; width: 16px; height: 16px; background-image:url('../images/text_list.png')" title="List Procedures"></span>
			<sec:authorize access="hasAnyRole('ROLE_DOMAIN USERS', 'ROLE_DOMAIN ADMINS')">
		    <span id="refreshprodDialog" style="float:right" class="ui-icon ui-icon-refresh" title="Rebuild Procedures"></span>
			</sec:authorize>
		</div>
		<div id="prodGridDialog" style="width:100%; height:95%;" class="wdgrid" ></div>
		<div id="pager" style="width:100%; height:3%;"></div>
	</div>
<dd><input type="text" name="supId" id="supId" size="32" maxlength="60" class="hide" /></dd>
<dd><input type="text" name="tableId" id="tableId" size="32" maxlength="60" class="hide" /></dd>
<div id="action-produto-dialog1" class="action-dialog"></div>
<jsp:include page="../../commons/scripts/util/app_reuse_functions.js.jsp" flush="true"/>
<jsp:include page="../../scripts/pages/produto/produto_dialog_mvc_bas_main.js.jsp" flush="true"/>
<jsp:include page="../../scripts/pages/produto/produto_dialog_mvc_bas_init.js.jsp" flush="true"/>
<jsp:include page="../../scripts/util/util_mvc_bas_main.js.jsp" flush="true"/>
</body>
</html>