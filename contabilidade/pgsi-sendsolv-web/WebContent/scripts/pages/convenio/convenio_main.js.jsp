<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt' %>

<sec:authorize access="hasAnyRole('ROLE_DOMAIN ADMIN', 'ROLE_ADMIN', 'ROLE_CSR')">

<script type="text/javascript">
/**
 * @namespace pgsi.pages.location
 * @fileoverview The main namespace for the Location List Page.
 */
pgsi.pages.convenio = {

	fnCreateNomeLink : function (val, type, full)
	{ 		if (type !== "display")
		{
			return val;
		}

		return '<a title="View/Edit ' + full.nome + '" href="#/cidade/view?tab=info&pessoaId=' + full.id + '" class="edit_link">' + full.nome + '</a>';

	},
	fnValor : function (val, type, full)
	{
     	if (type !== "display")
		{
			return val;
		}
		if ((!$.pgsi.isNullOrUndefined(full.valor) && (full.valor != 0))) {
			return '<span>R$</span>' .full.valor;
		}else{
			return full.porcentagem + '<span>%</span>';
		}

	},
	fnMensal: function (val, type, full)
	{
     	if (type !== "display")
		{
			return val;
		}
		if (full.isMensal = 0) {
			return "Sim";
		}else{
			return "Nao";
		}
	},
	fnDataInicial: function (val, type, full)
	{
     	if (type !== "display")
		{
			return val;
		}
		return pgsi.pages.convenio.fndate(full.dataini);
	},
	fnDataFinal: function (val, type, full)
	{
     	if (type !== "display")
		{
			return val;
		}
		return pgsi.pages.convenio.fndate(full.dataFin);
	},


	fndate : function(iDate){

		a = new Date(iDate);
		if (!$.pgsi.isNullOrUndefined(iDate)) {
			return sDate = $.pgsi.date.format(a, "h:i:s A", true);
		}else{return "";}
	},



	convenioTable: {

	}
}
</script>


</sec:authorize>