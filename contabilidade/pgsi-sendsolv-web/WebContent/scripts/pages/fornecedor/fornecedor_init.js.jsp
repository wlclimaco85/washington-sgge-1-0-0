<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt' %>

<sec:authorize access="hasAnyRole('ROLE_DOMAIN ADMIN', 'ROLE_ADMIN', 'ROLE_CSR')">
<script type="text/javascript">
/**
 * @namespace pgsi.pages.fornecedor
 * @description The init namespace for the Location Page.
 */

$(document).ready(function()
{
	<c:choose>
		<c:when test="${not empty refresh}">
			var oFilterPreLoad = "refresh";
		</c:when>
		<c:when test="${empty filters}">
			var	oFilterPreLoad = null;
		</c:when>
		<c:otherwise>
			var	oFilterPreLoad = ${filters};
		</c:otherwise>
	</c:choose>

	$.pgsi.listener.wait({
		eventName 	: "fornecedorList",
		arguments 	: ["table"],
		fnCallback 	: $.pgsi.progressBar.stopGlobal
	});

	/** * jQuery dataTable setup ** */
	pgsi.pages.fornecedor.fornecedorTable = $('#data_list').dataTable($.pgsi.table.setTable(
	{
		id 			: "#data_list",
		sAjaxSource : "api/fornecedor/fetchall",
		bPreLoad	: true,

		ajax :
		{
			sObj		: "fornecedorList",
			oRequest	: PagedInquiryRequest,
			fnRequest 	: function(){}
		},

		aoColumns :
		[
		{
			headerData 		: "CNPJ",
			order			: "name",
			mRender         : pgsi.pages.fornecedor.fnCreateEmpresaNameLink,
			sDefaultContent : "",
			bSortable 		: false,
			sClass          : "name-col"
		},
		{
			headerData 		: "Nome Empresa",
			order			: "organization_column",
			mRender 		: pgsi.pages.fornecedor.fnCreateNomeLink,
			sDefaultContent : "",
			bSortable 		: false
		},
		{
			headerData 		: "Cnae",
			order			: "city_column",
			mRender 		: pgsi.pages.fornecedor.fnCnae,
			mData	 		: "null",
			sDefaultContent : "",
			bSortable 		: false
		},
		{
			headerData 		: "Email",
			order			: "state_column",
			mRender 		: pgsi.pages.fornecedor.fnEmail,
			sDefaultContent : "",
			bSortable 		: false
		},
		{
			headerData 		: "Telefone",
			order			: "country_column",
			mRender 		: pgsi.pages.fornecedor.fnTelefone,
			sDefaultContent : "",
			bSortable 		: false
		},
		{
			headerData 		: "Regime",
			order			: "sdn_status_column",
			mRender 		: pgsi.pages.fornecedor.fnRegime,
			sDefaultContent : "",
			bSortable 		: false
		},
		{
			headerData 		: "Endereco",
			order			: "phone_column",
			mRender 		: pgsi.pages.fornecedor.fnEndereco,
			sDefaultContent : "",
			bSortable 		: false
		},
		{
			headerData 		: "Documentos",
			order			: "phone_column",
			mRender 		: pgsi.pages.fornecedor.fnDocumento,
			sDefaultContent : "",
			bSortable 		: false
		},
		],

		<c:choose>
			<c:when test="${not empty refresh}">
				aaData : "refresh",
			</c:when>
			<c:when test="${empty response}">
				aaData : null,
		    </c:when>
		    <c:otherwise>
		    	aaData : ${response},
		    </c:otherwise>
		</c:choose>

		oSettings :
		{
			sortEnum      	: "",
			iDefaultCol   	: 0
		},

		rowCallback : function(nRow, aData, iDisplayIndex, oColumn) {

			var oActionSummary = "";
			var sButtonStatus = "";
			var sButtonDelete = "";

			<sec:authorize access="hasAnyRole('ROLE_DOMAIN ADMIN', 'ROLE_ADMIN')">

				if (aData.statusValue === 1) {
					sButtonStatus = '<a href="#" class="deactivate"><span class="icon-small-button deactivate icon-nav icon-minus-circle" title="Disable ' + aData.name + '"></a>';
				}

				else if ((aData.statusValue === 2)||(aData.statusValue === 3)|| (aData.statusValue === 4)){
					sButtonStatus = '<a href="#" class="active"><span class="icon-small-button active icon-nav icon-check-mark" title="' + $.pgsi.locale.get("pages.view.activate") + ' ' + aData.name + '"></span></a>';
				}

				sButtonDelete = '<a href="#"  class="icon-nav icon-trash-bin deleteDialog icon-small-button" title="' + $.pgsi.locale.get("commons.pages.delete") + ' ' + aData.name + '"></a>';

			</sec:authorize>

			oActionSummary = $('<div><div><a href="fornecedor/view?tab=info&fornecedorId=' + aData.id + '" title="View '+aData.name+'" id="update" class="icon-nav icon-pencil alist icon-small-button"></a>'
				+ sButtonStatus
				+ sButtonDelete
				+pgsi.util.page.fnInsertButtonSDNSAR(aData,"fornecedor")+"</div></div>");

			oActionSummary.find('a.deleteDialog, a.active, a.deactivate ,a.sarDialog').click(function (e) {
				e.preventDefault();

				if (pgsi.util.page.fnIsSDNFlagged(aData.sdnstatus)) {
					return;
				}

				var fnCallBack = function(oResponse) {

					if (oResponse.operationSuccess == true) {

						// Validations for change pagination when delete one or more groups of last page.
						var iStart;
						var oSettings = pgsi.pages.fornecedor.fornecedorTable.fnSettings();

							// If exist just one group at last page and this group is deleted, the pagination back to previous page.
							if (((oSettings._iRecordsDisplay - 1) % $('.dataTables_length').find('select').val() === 0)) {
								iStart = (oSettings._iRecordsDisplay - 1) - oSettings._iDisplayLength;
							}

						$.pgsi.table.reloadTable({
							table 		: pgsi.pages.fornecedor.fornecedorTable,
							iStart 		: iStart
						});
					}else{
						pgsi.pages.sendsolv.fnDialogMessageError("",{},oResponse,null,$.pgsi.locale.get("commons.dialog.error.title"),true);
					}
				}


				if($(this).hasClass('deleteDialog'))
				{
					// Launch Delete Dialog
					var oRequest = new LocationMaintenanceRequest({fornecedor : {id : aData.id, name: aData.name }});

					pgsi.util.actiondialog.launchActionDialog(
						"deleteDialog",
						 pgsi.pages.business.dialogSettings.deleteDialog(
						 	"api/fornecedor/delete",
						 	 oRequest,
						 	 $.pgsi.locale.get("pages.fornecedor.dialog.title", oRequest.fornecedor.name),
						 	 fnCallBack,
						 	 $.pgsi.locale.get("commons.pages.erroView", $.pgsi.locale.get("commons.pages.fornecedor"))
						 ));

				}else if($(this).hasClass('active')){

					pgsi.util.page.fnUpdateStatus('api/fornecedor/fetch',parseInt(aData.id,10),'fornecedor',1,fnCallBack,"Activate Location for "+ aData.name, "<span>"+$.pgsi.locale.get("pages.person.dialog.status.question",$.pgsi.locale.get("pages.view.activate"),"Location")+"<br>" +$.pgsi.locale.get("pages.person.dialog.status.information",$.pgsi.locale.get("pages.view.activate"))+"<span>",true);
				}else if($(this).hasClass('deactivate')){
					pgsi.util.page.fnUpdateStatus('api/fornecedor/fetch',parseInt(aData.id,10),'fornecedor',2,fnCallBack,"Deactivate Location for "+ aData.name, "<span>"+$.pgsi.locale.get("pages.person.dialog.status.question",$.pgsi.locale.get("pages.view.deactivate"),"Location")+"<br>" +$.pgsi.locale.get("pages.person.dialog.status.information",$.pgsi.locale.get("pages.view.deactivate"))+"<span>",true);
				}else if($(this).hasClass('sarDialog')){
					pgsi.util.actiondialog.launchActionDialog(
							"dialogSARDetail",
							 pgsi.pages.sar.dialogSettings.dialogSARDetail(
								 $.pgsi.locale.get("commons.title.table.SAR"),
								 aData.id,
								 "fornecedor",
								 aData.name,
								 aData.key
							 ));
				}
			});

			$('td:eq(0)', nRow).hover (
				function ()
				{
					$(this).find('.icon-nav').removeClass('hide');
					$(this).append(oActionSummary);
				},

				function ()
				{
					$(this).find('.icon-nav').addClass('hide');
				}
			);
		},

		fnInitComplete: function (oSettings, json)
		{
			$(".dataTables_length select").outerWidth(62).selectmenu({
				appendTo: ".content.list",
  				change: function( event, ui ) {
  					$('#data_list_length').find("select").val(ui.item.value);
  					$("#data_list_length").find("select").trigger("change");
  					$("#load").find(".dataTables_length").find("select").selectmenu("refresh" );
  				}
			});

			$.pgsi.listener.notify({
				eventName 	: "fornecedorList",
				arguments 	: ["table"]
			});
		}
	}
	));

	if (!$.pgsi.isNullOrUndefined(oFilterPreLoad)) {
		// Filters
		var aFilters = ['business'];

		var filters = pgsi.util.filter.filterArrayToObject(aFilters);
		pgsi.util.filter.init(oFilterPreLoad, filters, function(oResponse)
		{
			$.pgsi.filter.create(
			{
				element			: ".filter",
				tagsDiv			: ".filter-results-container div.first",
				title			: $.pgsi.locale.get("commons.pages.filterTitle"),
				table 			:  pgsi.pages.fornecedor.fornecedorTable,
				filters 		: oResponse
			});
		});
	}

	//clear all Filter TODO
	$("#clear-all").on("click", function(e)
	{
		$.address.parameter("organization","");
		$.address.parameter("fornecedor","");
		pgsi.util.page.fnReloadTable(pgsi.pages.fornecedor.fornecedorTable);
	});

});
</script>
</sec:authorize>