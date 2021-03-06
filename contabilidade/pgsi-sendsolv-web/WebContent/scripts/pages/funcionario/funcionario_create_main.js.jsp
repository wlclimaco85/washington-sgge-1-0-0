<%@ taglib prefix='sec'
	uri='http://www.springframework.org/security/tags'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>

<sec:authorize access="hasAnyRole('ROLE_DOMAIN ADMIN', 'ROLE_ADMIN', 'ROLE_CSR')">

	<script type="text/javascript">
		pgsi.pages.funcionario.form = {



			/**
			 * Validate the fields required at Location Form
			 */
			validator : $("#business-form").validate({
				ignore : "",
				invalidHandler : function(form, validator) {
					$.each(validator.errorList, function(index, value) {
						if (value.element.nodeName.toLowerCase() == 'select') {
							$(value.element).next('span').addClass("error");
						}
							else {
							$(value.element).addClass("error");
						}
					});
				},
				rules: {
					sic: {
						SIC:18
					},
					organizationNaics: {
						NAICS:18
					}
				}
			}),

			/**
			 * Ajax call that will submit the request ajax
			 *
			 * @param {String} sUrlAdress
			 * 			The URL to post
			 * @param {String} sMessage
			 * 			Message that will display after the ajax call
			 */
			ajaxCall : function(sUrlAdress, mainModelAction) {

				// Remove input masks
				pgsi.util.page.business.form.maskFields.fnUnmask();
				// Validate the form
				var bValidForm = pgsi.pages.funcionario.form.validator.form();

				if (!bValidForm)
				{
					pgsi.util.page.business.form.maskFields.fnMask();
					return false;
				}

				var request = pgsi.pages.funcionario.form.fnFillRequestObject(mainModelAction);

				var fnCallback = function (oResponse){
					if (oResponse.operationSuccess == true) {
						$(this).dialog('close');
						if (!$.pgsi.isNullOrUndefined(oResponse.funcionarioList[0]) && !$.pgsi.isNullOrUndefined(oResponse.funcionarioList[0].id)){
							var nLocationId = oResponse.funcionarioList[0].id;
							$.pgsi.pageLoader.load({
								url: "funcionario/view?locationId=" + nLocationId,
								$content: $("#load"),
								bStartProgressBar : false
							});
						}
					}
					else {
						pgsi.pages.sendsolv.fnDialogMessageError("",{},oResponse,null,$.pgsi.locale.get("commons.dialog.error.title"),true);
					}

				};

				// Insert the Location
				$.pgsi.ajax.post({
					sUrl : sUrlAdress,
					oRequest : request,
					fnCallback : fnCallback
				});
			},

			fnFillFuncionario : function(data,sModelAction) {

				pgsi.util.page.form.fnInitForm();

				// fill location-specific fields
				var oFuncionario = new Funcionario(
						id 			: parseInt($('#codigo').val(),10),
						nome		: $('#nome').val(),
						regine  	: pgsi.pages.regime.fnCreateRequest(sModelAction),
						enderecos   : pgsi.pages.endereco.fnCreateRequest(sModelAction),
						documentos	: pgsi.pages.documento.fnCreateRequest(sModelAction),
						emails		: pgsi.pages.email.fnCreateRequest(sModelAction),
						Telefones	: pgsi.pages.telefone.fnCreateRequest(sModelAction),
						socios		: pgsi.pages.socio.fnCreateRequest(sModelAction),
						cnaes		: pgsi.pages.cnae.fnCreateRequest(sModelAction),
						sModelAction: sModelAction
				)
				return oFuncionario;
			},

			fnFillRequestObject : function(sModelAction){
				var request = new FuncionarioMaintenanceRequest();

				// fill common location fields - method returns basic business objects (i.e things locations and orgs have in common)
				request.funcionario = pgsi.pages.funcionario.form.fnFillFuncionario(sModelAction);


				return request;
			}

		};
	</script>

</sec:authorize>