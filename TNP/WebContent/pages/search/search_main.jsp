<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt' %>
<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

            <div class="yui-ge point-type-navigation header rounded-top-corners">
                <div class="yui-u first">
                    <ul class="tabs">
                       <li><a class="afilter" href="smartpoint/ajax.list.action?sd=true"><s:message code="search.tabs.search" /></a></li>
                      <%-- <li><a id="ajax-button" href="search/ajax.advanced.action" class="gradient-vert alist"><s:message code="search.tabs.advanced" /></a></li> --%>
	        		   <li><a href="#" class="active gradient-vert"><s:message code="search.tabs.saved" /></a></li>
                    </ul>
                </div>
            </div>
        <%-- START Main Page Content --%>
		<div class="content-inner">
		<!-- Messaging -->
		<div id="messaging-main" class="messaging" style="display: none;"><span	class="message"></span><a href="" class="remove"><s:message code="message.action.close" /></a></div>

		<%-- START Main Content Container --%>
			<div class="yui-main">
                <div id="yui-main">
                	<%-- Header --%>
                	<div class="content-header">
	                	<h1><s:message code="search.saved.page.header" /></h1>
    	                <p class="description"><s:message code="search.saved.page.intro" /></p>
        			</div>

                    <!-- blank slate -->
                    <div id="blankslate" class="blankslate" style="display: none;">
                    	<h5><s:message code="widgets.blankslate.search.saved.noresults" /></h5>
                        <p><s:message code="widgets.blankslate.search.saved.detail" /></p>
                    </div>

        			<%-- START Saved Search List Section --%>
                    <%-- The Saved Search Table --%>
                    <table id="saved-table" class="list">
                    	<thead>
                            <tr>
                             	<th class="hide">&nbsp;</th>
                                <th><span id="cs.custom_search_name"><s:message code="search.saved.table.header.name" /></span></th>
                                <th><span><s:message code="search.saved.table.header.description" /></span></th>
                                <th><span><s:message code="search.saved.table.header.filters" /></span></th>
                                <th><span id="cs.create_date"><s:message code="search.saved.table.header.date" /></span></th>
                                <th class="hide">&nbsp;</th>
                                <th class="hide">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
			  </div>
		</div>
      </div>

    <%@ include file="../../scripts/pages/saved_main.js.jsp" %>
	<%@ include file="../../scripts/pages/saved_init.js.jsp" %>
