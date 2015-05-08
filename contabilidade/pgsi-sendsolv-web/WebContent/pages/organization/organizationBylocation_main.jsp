<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>

<div class="content list">
	<table id="data_list"></table>
</div>
<jsp:include page="../../scripts/pages/location/location_main.js.jsp" flush="true" />
<jsp:include page="../../scripts/pages/organization/organizationBylocation_main.js.jsp" flush="true" />
<jsp:include page="../../scripts/pages/location/location_actions.js.jsp" flush="true" />
<jsp:include page="../../scripts/pages/organization/organizationBylocation_init.js.jsp" flush="true" />