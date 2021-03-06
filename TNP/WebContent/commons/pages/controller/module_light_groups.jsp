<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt' %>
<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<div id="groups" class="point-detail-container">
	<h3><div class="left"><s:message code="smartpointdetail.actiongroups.groups"/></div>
		<sec:authorize access="hasAnyRole('ROLE_Role.Admin', 'ROLE_Role.System Operator')">
			<a id="add-to-group-link" href="#" class="edit right"><s:message code="smartpointdetail.actiongroups.addtogroup"/></a>
		</sec:authorize>
	</h3>
	<div class="blankslate hide">
		<h5><s:message code="smartpointdetail.actiongroups.addfirstgroup"/></h5>
		<p><s:message code="smartpointdetail.actiongroups.nogroupsthissmartpoint"/></p>
	</div>
	<table id="table-group" class="small-table">
		<tbody></tbody>
	</table>
	<sec:authorize access="hasAnyRole('ROLE_Role.Admin', 'ROLE_Role.System Operator')">
		<fieldset id="add-to-group" class="edit-only two-line hide">
			<ul>
				<li class="ui-widget highlight">
					<label for="groupAddSelect"><s:message code="smartpointdetail.actiongroups.selectgroup"/> <span class="required">*</span></label> <br/>
					<select name="group_add_select" id="group-add-select" class="combobox" size="1"></select>
				</li>
				<li class="submit-row">
					<input id="submit-groups" type="submit" class="submit-short-form" value="<s:message code='smartpointdetail.actiongroups.add.submit'/>" /> <s:message code="action.addtogroup.or"/> <a id="cancel-groups" href="#" class="cancel-edit"><s:message code="smartpointdetail.actiongroups.cancel"/></a>
				</li>
			</ul>
		</fieldset>
	</sec:authorize>
</div>
<script src="commons/scripts/controller/module_light_groups.js"></script>