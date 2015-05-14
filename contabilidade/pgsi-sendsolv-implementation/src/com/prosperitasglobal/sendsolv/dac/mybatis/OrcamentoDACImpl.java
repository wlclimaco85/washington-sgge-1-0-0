package com.prosperitasglobal.sendsolv.dac.mybatis;

import java.util.Map;

import com.prosperitasglobal.sendsolv.dac.ICnaeDAC;
import com.prosperitasglobal.sendsolv.dac.IEmailDAC;
import com.prosperitasglobal.sendsolv.dac.IEnderecoDAC;
import com.prosperitasglobal.sendsolv.dac.IEventoDAC;
import com.prosperitasglobal.sendsolv.dac.IOrcamentoDAC;
import com.prosperitasglobal.sendsolv.dac.ISociosDAC;
import com.prosperitasglobal.sendsolv.dac.ITelefoneDAC;
import com.prosperitasglobal.sendsolv.dacd.mybatis.PagedResultsDACD;

/**
 * The Class OrcamentoDACImpl.
 */
public class OrcamentoDACImpl extends SqlSessionDaoSupport implements IOrcamentoDAC
{

	/** The Constant EMPRESA_NAMESPACE. */
	private static final String EMPRESA_NAMESPACE = "OrcamentoMap.";

	/** The Constant CBOF_NAMESPACE. */
	private static final String CBOF_NAMESPACE = "CBOFMap.";

	/** The Constant EMPRESA_STMT_FETCH_COUNT. */
	private static final String EMPRESA_STMT_FETCH_COUNT = EMPRESA_NAMESPACE + "fetchOrcamentoRowCount";

	/** The Constant EMPRESA_STMT_FETCH_ALL_BY_REQUEST. */
	private static final String EMPRESA_STMT_FETCH_ALL_BY_REQUEST = EMPRESA_NAMESPACE
			+ "fetchAllOrcamentosByRequest";

	/** The Constant EMPRESA_STMT_FETCH_BY_ID. */
	private static final String EMPRESA_STMT_FETCH_BY_ID = EMPRESA_NAMESPACE + "fetchOrcamentoById";

	/** The Constant EMPRESA_STMT_INSERT. */
	private static final String EMPRESA_STMT_INSERT = EMPRESA_NAMESPACE + "insertOrcamento";

	/** The Constant EMPRESA_STMT_ASSOC_ORG_TO_CONTACT. */
	private static final String EMPRESA_STMT_ASSOC_ORG_TO_CONTACT = EMPRESA_NAMESPACE
			+ "associateOrcamentoWithContact";

	/** The Constant EMPRESA_STMT_UPDATE. */
	private static final String EMPRESA_STMT_UPDATE = EMPRESA_NAMESPACE + "updateOrcamento";

	/** The Constant EMPRESA_STMT_DELETE. */
	private static final String EMPRESA_STMT_DELETE = EMPRESA_NAMESPACE + "deleteOrcamentoById";

	/** The Constant EMPRESA_DOCUMENT_STMT_UPDATE. */
	private static final String EMPRESA_DOCUMENT_STMT_UPDATE = EMPRESA_NAMESPACE
			+ "updateOrcamentoDocument";

	/** The Constant EMPRESA_STMT_ASSOC_ORG_TO_DOCUMENT. */
	private static final String EMPRESA_STMT_ASSOC_ORG_TO_DOCUMENT = EMPRESA_NAMESPACE
			+ "associateOrcamentoWithDocument";

	/** The Constant EMPRESA_STMT_DELETE_DOCUMENT. */
	private static final String EMPRESA_STMT_DELETE_DOCUMENT = EMPRESA_NAMESPACE
			+ "deleteOrcamentoDocument";

	/** The Constant STMT_VERSION. */
	private static final String EMPRESA_STMT_VERSION = EMPRESA_NAMESPACE + "fetchVersionNumber";

	/** The Constant EMPRESA_STMT_UPDATE_EMPRESA_STATUS. */
	private static final String EMPRESA_STMT_UPDATE_EMPRESA_STATUS = CBOF_NAMESPACE
			+ "updateBusinessStatus";

	/** The Constant LOG. */
	private static final org.slf4j.Logger LOG = LoggerFactory.getLogger(OrcamentoDACImpl.class);

	/** The valid sort fields for an orcamento inquiry. Will be injected by Spring. */
	private Map<String, String> orcamentoInquiryValidSortFields;

	private IEnderecoDAC enderecoDAC;

	private IEmailDAC emailDAC;

	private ITelefoneDAC telefoneDAC;

	private ICnaeDAC cnaeDAC;

	private ISociosDAC socioDAC;

	private IEventoDAC eventosDAC;

	/**
	 * @return the enderecoDAC
	 */
	public IEnderecoDAC getEnderecoDAC()
	{
		return enderecoDAC;
	}

	/**
	 * @param enderecoDAC the enderecoDAC to set
	 */
	public void setEnderecoDAC(IEnderecoDAC enderecoDAC)
	{
		this.enderecoDAC = enderecoDAC;
	}

	/**
	 * @return the emailDAC
	 */
	public IEmailDAC getEmailDAC()
	{
		return emailDAC;
	}

	/**
	 * @param emailDAC the emailDAC to set
	 */
	public void setEmailDAC(IEmailDAC emailDAC)
	{
		this.emailDAC = emailDAC;
	}

	/**
	 * @return the telefoneDAC
	 */
	public ITelefoneDAC getTelefoneDAC()
	{
		return telefoneDAC;
	}

	/**
	 * @param telefoneDAC the telefoneDAC to set
	 */
	public void setTelefoneDAC(ITelefoneDAC telefoneDAC)
	{
		this.telefoneDAC = telefoneDAC;
	}

	/**
	 * @return the cnaeDAC
	 */
	public ICnaeDAC getCnaeDAC()
	{
		return cnaeDAC;
	}

	/**
	 * @param cnaeDAC the cnaeDAC to set
	 */
	public void setCnaeDAC(ICnaeDAC cnaeDAC)
	{
		this.cnaeDAC = cnaeDAC;
	}

	/**
	 * @return the socioDAC
	 */
	public ISociosDAC getSocioDAC()
	{
		return socioDAC;
	}

	/**
	 * @param socioDAC the socioDAC to set
	 */
	public void setSocioDAC(ISociosDAC socioDAC)
	{
		this.socioDAC = socioDAC;
	}

	/**
	 * @return the eventosDAC
	 */
	public IEventoDAC getEventosDAC()
	{
		return eventosDAC;
	}

	/**
	 * @param eventosDAC the eventosDAC to set
	 */
	public void setEventosDAC(IEventoDAC eventosDAC)
	{
		this.eventosDAC = eventosDAC;
	}

	/**
	 * Get the valid sort fields for the orcamento inquiry. Attribute injected by Spring.
	 *
	 * @return The valid sort fields for the orcamento inquiry.
	 */
	public Map<String, String> getOrcamentoInquiryValidSortFields()
	{
		return orcamentoInquiryValidSortFields;
	}

	/**
	 * Set the valid sort fields for the orcamento inquiry. Attribute injected by Spring.
	 *
	 * @param orcamentoInquiryValidSortFields The valid sort fields for the orcamento inquiry to set.
	 */
	public void setOrcamentoInquiryValidSortFields(Map<String, String> orcamentoInquiryValidSortFields)
	{
		this.orcamentoInquiryValidSortFields = orcamentoInquiryValidSortFields;
	}

	/*
	 * (non-Javadoc)
	 * @see
	 * com.prosperitasglobal.sendsolv.dac.IOrcamentoDAC#insertOrcamento(com.prosperitasglobal.sendsolv.model
	 * .Orcamento)
	 */
	@Override
	public InternalResultsResponse<Orcamento> insertOrcamento(Orcamento orcamento)
	{
		Integer insertCount = 0;
		InternalResultsResponse<Orcamento> response = new InternalResultsResponse<Orcamento>();

		// First insert the root
		// Is successful the unique-id will be populated back into the object.
		insertCount = QATMyBatisDacHelper.doInsert(getSqlSession(), EMPRESA_STMT_INSERT, orcamento, response);

		if (response.isInError())
		{
			return response;
		}
		// Next traverse the object graph and "maintain" the associations
		insertCount += maintainOrcamentoAssociations(orcamento, response);

		insertCount += maintainOrcamentoAssociationsCnae(orcamento, response);

		insertCount += maintainOrcamentoAssociationsEmail(orcamento, response);

		insertCount += maintainOrcamentoAssociationsTelefone(orcamento, response);

		// Finally, if something was inserted then add the Orcamento to the result.
		if (insertCount > 0)
		{
			response.addResult(orcamento);
		}

		return response;
	}

	/*
	 * (non-Javadoc)
	 * @see
	 * com.prosperitasglobal.sendsolv.dac.IOrcamentoDAC#updateOrcamento(com.prosperitasglobal.sendsolv.model
	 * .Orcamento)
	 */
	@Override
	public InternalResultsResponse<Orcamento> updateOrcamento(Orcamento orcamento)
	{
		Integer updateCount = 0;
		InternalResultsResponse<Orcamento> response = new InternalResultsResponse<Orcamento>();

		// First update the root if necessary.
		if (!ValidationUtil.isNull(orcamento.getModelAction())
				&& (orcamento.getModelAction() == QATModel.PersistanceActionEnum.UPDATE))
		{
			updateCount =
					QATMyBatisDacHelper.doUpdate(getSqlSession(), EMPRESA_STMT_UPDATE, orcamento,
							response);
		}

		if (response.isInError())
		{
			return response;
		}
		// Next traverse the object graph and "maintain" the associations
		updateCount += maintainOrcamentoAssociations(orcamento, response);

		updateCount += maintainOrcamentoAssociationsCnae(orcamento, response);

		updateCount += maintainOrcamentoAssociationsEmail(orcamento, response);

		updateCount += maintainOrcamentoAssociationsTelefone(orcamento, response);

		// Finally, if something was updated then add the Person to the result.
		if (updateCount > 0)
		{
			response.addResult(orcamento);
		}

		return response;
	}

	/*
	 * (non-Javadoc)
	 * @see
	 * com.prosperitasglobal.sendsolv.dac.IOrcamentoDAC#deleteOrcamento(com.prosperitasglobal.sendsolv.model
	 * .Orcamento)
	 */
	@Override
	public InternalResponse deleteOrcamento(Orcamento orcamento)
	{
		InternalResponse response = new InternalResponse();
		QATMyBatisDacHelper.doRemove(getSqlSession(), EMPRESA_STMT_DELETE, orcamento, response);

		return response;
	}

	/*
	 * (non-Javadoc)
	 * @see com.prosperitasglobal.sendsolv.dac.IOrcamentoDAC#fetchOrcamentoById(FetchByIdRequest)
	 */
	@Override
	public InternalResultsResponse<Orcamento> fetchOrcamentoById(FetchByIdRequest request)
	{
		InternalResultsResponse<Orcamento> response = new InternalResultsResponse<Orcamento>();
		QATMyBatisDacHelper.doQueryForList(getSqlSession(), EMPRESA_STMT_FETCH_BY_ID, request, response);
		return response;
	}

	/*
	 * (non-Javadoc)
	 * @see
	 * com.prosperitasglobal.sendsolv.dac.IOrcamentoDAC#fetchOrcamentoByRequest(com.prosperitasglobal.sendsolv
	 * .model.request.PagedInquiryRequest)
	 */
	@Override
	public InternalResultsResponse<Orcamento> fetchOrcamentoByRequest(PagedInquiryRequest request)
	{
		InternalResultsResponse<Orcamento> response = new InternalResultsResponse<Orcamento>();

		/*
		 * Helper method to translation from the user friendly" sort field names to the
		 * actual database column names.
		 */
		QATMyBatisDacHelper.translateSortFields(request, getOrcamentoInquiryValidSortFields());

		PagedResultsDACD.fetchObjectsByRequest(getSqlSession(), request, EMPRESA_STMT_FETCH_COUNT,
				EMPRESA_STMT_FETCH_ALL_BY_REQUEST, response);
		return response;
	}

	/**
	 * Maintain orcamento associations.
	 *
	 * @param orcamento the orcamento
	 * @param response the response
	 * @return the integer
	 */
	private Integer maintainOrcamentoAssociations(Orcamento orcamento,
			InternalResultsResponse<Orcamento> response)
	{
		Integer count = 0;
		// First Maintain Orcamento
		if (ValidationUtil.isNullOrEmpty(orcamento.getEnderecos()))
		{
			return count;
		}
		// For Each Contact...
		for (Endereco endereco : orcamento.getEnderecos())
		{
			// Make sure we set the parent key
			endereco.setParentKey(orcamento.getId());

			if (ValidationUtil.isNull(endereco.getModelAction()))
			{
				continue;
			}
			switch (endereco.getModelAction())
			{
				case INSERT:
					count = getEnderecoDAC().insertEndereco(endereco,
							EMPRESA_STMT_ASSOC_ORG_TO_CONTACT, response);
					break;
				case UPDATE:
					count = getEnderecoDAC().updateEndereco(endereco, response);
					break;
				case DELETE:
					count = 1; // getEnderecoDAC().deleteEndereco(endereco, response);
					break;
				default:
					if (LOG.isDebugEnabled())
					{
						LOG.debug("ModelAction for Orcamento missing!");
					}
					break;
			}
		}
		return count;
	}

	private Integer maintainOrcamentoAssociationsCnae(Orcamento orcamento,
			InternalResultsResponse<Orcamento> response)
	{
		Integer count = 0;
		// First Maintain Orcamento
		if (ValidationUtil.isNullOrEmpty(orcamento.getCnaes()))
		{
			return count;
		}
		// For Each Contact...
		for (Cnae cnae : orcamento.getCnaes())
		{
			// Make sure we set the parent key
			cnae.setParentKey(orcamento.getId());

			if (ValidationUtil.isNull(cnae.getModelAction()))
			{
				continue;
			}
			// switch (cnae.getModelAction())
			// {
			// case INSERT:
			// count = getCnaeDAC().insertCnae(cnae,
			// EMPRESA_STMT_ASSOC_ORG_TO_CONTACT, response);
			// break;
			// case UPDATE:
			// count = getCnaeDAC().updateCnae(cnae, response);
			// break;
			// case DELETE:
			// count = getCnaeDAC().deleteCnae(cnae, response);
			// break;
			// default:
			// if (LOG.isDebugEnabled())
			// {
			// LOG.debug("ModelAction for Orcamento missing!");
			// }
			// break;
			// }
		}
		return count;
	}

	private Integer maintainOrcamentoAssociationsTelefone(Orcamento orcamento,
			InternalResultsResponse<Orcamento> response)
	{
		Integer count = 0;
		// First Maintain Orcamento
		if (ValidationUtil.isNullOrEmpty(orcamento.getCnaes()))
		{
			return count;
		}
		// For Each Contact...
		for (Telefone telefone : orcamento.getTelefones())
		{
			// Make sure we set the parent key
			// contact.setParentKey(orcamento.getId());
			//
			// if (ValidationUtil.isNull(orcamento.getModelAction()))
			// {
			// continue;
			// }
			// switch (orcamento.getModelAction())
			// {
			// case INSERT:
			// count = getTelefoneDAC().insertTelefone(telefone,
			// EMPRESA_STMT_ASSOC_ORG_TO_CONTACT, response);
			// break;
			// case UPDATE:
			// count = getTelefoneDAC().updateTelefone(telefone, response);
			// break;
			// case DELETE:
			// count = getTelefoneDAC().deleteTelefone(telefone, response);
			// break;
			// default:
			// if (LOG.isDebugEnabled())
			// {
			// LOG.debug("ModelAction for Orcamento missing!");
			// }
			// break;
			// }
		}
		return count;
	}

	private Integer maintainOrcamentoAssociationsEmail(Orcamento orcamento,
			InternalResultsResponse<Orcamento> response)
	{
		Integer count = 0;
		// First Maintain Orcamento
		if (ValidationUtil.isNullOrEmpty(orcamento.getEmails()))
		{
			return count;
		}
		// For Each Contact...
		for (Email email : orcamento.getEmails())
		{
			// Make sure we set the parent key
			email.setParentKey(orcamento.getId());

			if (ValidationUtil.isNull(orcamento.getModelAction()))
			{
				continue;
			}
			// switch (email.getModelAction())
			// {
			// case INSERT:
			// count = getEmailDAC().insertEmail(email,
			// EMPRESA_STMT_ASSOC_ORG_TO_CONTACT, response);
			// break;
			// case UPDATE:
			// count = getEmailDAC().updateEmail(email, response);
			// break;
			// case DELETE:
			// count = getEmailDAC().deleteEmail(email, response);
			// break;
			// default:
			// if (LOG.isDebugEnabled())
			// {
			// LOG.debug("ModelAction for Orcamento missing!");
			// }
			// break;
			// }
		}
		return count;
	}

	private Integer maintainOrcamentoAssociationsDocs(Orcamento orcamento,
			InternalResultsResponse<Orcamento> response)
	{
		Integer count = 0;
		// First Maintain Orcamento
		if (ValidationUtil.isNullOrEmpty(orcamento.getDocumentos()))
		{
			return count;
		}
		// For Each Contact...
		for (Documento documentos : orcamento.getDocumentos())
		{
			// Make sure we set the parent key
			documentos.setParentKey(orcamento.getId());

			if (ValidationUtil.isNull(documentos.getModelAction()))
			{
				continue;
			}
			// switch (documentos.getDocumentos())
			// {
			// case INSERT:
			// count = getDocumentoDAC().insertDocumento(documentos,
			// EMPRESA_STMT_ASSOC_ORG_TO_CONTACT, response);
			// break;
			// case UPDATE:
			// count = getDocumentoDAC().updateDocumento(documentos, response);
			// break;
			// case DELETE:
			// count = getDocumentoDAC().deleteDocumento(documentos, response);
			// break;
			// default:
			// if (LOG.isDebugEnabled())
			// {
			// LOG.debug("ModelAction for Orcamento missing!");
			// }
			// break;
			// }
		}
		return count;
	}

	@Override
	public InternalResultsResponse<Orcamento> fetchAllOrcamentos()
	{
		// TODO Auto-generated method stub
		return null;
	}
}
