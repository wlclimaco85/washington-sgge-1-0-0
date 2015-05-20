<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt' %>

<sec:authorize access="hasAnyRole('ROLE_DOMAIN ADMIN', 'ROLE_ADMIN', 'ROLE_CSR')">

<script type="text/javascript">
/**
 * @namespace pgsi.pages.location
 * @fileoverview The main namespace for the Location List Page.
 */
pgsi.pages.regime = {
		 fnCreateRequest function(sModelAction){

			 oRegime = new Regime({
				 id 		  : parseInt($('#regime').val(),10),
				 nome 		  : $('#regime').val(),
				 sModelAction : sModelAction
			 })
			return oRegime;
		}

}
</script>

</sec:authorize>