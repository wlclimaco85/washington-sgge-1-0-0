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
</head>
<body>
<div id="wdothertabs">
	<ul>
		<li><a href="stocks/stocks.jsp" title="wdothertab-1"><span>Stocks YQL</span></a></li>
	</ul>
	<div class="tabscontent">
		<div id="wdothertab-1"></div>
	</div>
</div>
<script type="text/javascript" src="../commons/scripts/util/wd_tabs_actions.js"></script>
</body>
</html>
