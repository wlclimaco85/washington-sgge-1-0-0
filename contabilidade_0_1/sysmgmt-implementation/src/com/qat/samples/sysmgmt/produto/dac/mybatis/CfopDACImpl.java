package com.qat.samples.sysmgmt.produto.dac.mybatis;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.LoggerFactory;

import com.qat.framework.model.QATModel;
import com.qat.framework.model.response.InternalResultsResponse;
import com.qat.framework.util.QATMyBatisDacHelper;
import com.qat.framework.validation.ValidationUtil;
import com.qat.samples.sysmgmt.cfop.Cfop;
import com.qat.samples.sysmgmt.cfop.CfopPessoa;
import com.qat.samples.sysmgmt.model.request.PagedInquiryRequest;
import com.qat.samples.sysmgmt.produto.dac.ICfopDAC;

/**
 * The Class CommonBusinessObjectsDACImpl.
 */
public class CfopDACImpl extends SqlSessionDaoSupport implements ICfopDAC
{
	/** The Constant CONTACT_NAMESPACE. */
	private static final String CONTACT_NAMESPACE = "CfopMap.";

	/** The Constant CONTACT_STMT_UPDATE. */
	private static final String CONTACT_STMT_UPDATE = CONTACT_NAMESPACE + "updateCfop";

	/** The Constant CONTACT_STMT_DELETE_BUSINESS_CONTACT. */
	private static final String CONTACT_STMT_DELETE_BUSINESS_CONTACT = CONTACT_NAMESPACE + "deleteBusinessCfop";

	/** The Constant CONTACT_STMT_INSERT. */
	private static final String CONTACT_STMT_INSERT = CONTACT_NAMESPACE + "insertCfop";

	/** The Constant CONTACT_STMT_FETCH_BY_ID. */
	private static final String CONTACT_STMT_FETCH_BY_ID = CONTACT_NAMESPACE + "fetchCfopsById";

	/** The Constant LOG. */
	private static final org.slf4j.Logger LOG = LoggerFactory.getLogger(CfopDACImpl.class);

	/*
	 * (non-Javadoc)
	 * @see
	 * com.prosperitasglobal.cbof.dac.ICommonBusinessObjectsDAC#insertCfop(com.prosperitasglobal.cbof.model.Cfop,
	 * java.lang.String, com.qat.framework.model.response.InternalResultsResponse)
	 */
	@Override
	public Integer insertCfop(Cfop cfop, String string, InternalResultsResponse<?> response)
	{
		response = new InternalResultsResponse<Cfop>();
		Integer insertCount = 0;
		// First insert the root cfop data
		insertCount = QATMyBatisDacHelper.doInsert(getSqlSession(), CONTACT_STMT_INSERT, cfop, response);

		return insertCount;
	}

	/*
	 * (non-Javadoc)
	 * @see
	 * com.prosperitasglobal.cbof.dac.ICfopDAC#deleteBusinessCfop(com.prosperitasglobal.cbof.model.Cfop,
	 * com.qat.framework.model.response.InternalResultsResponse)
	 */
	@Override
	public Integer deleteCfop(Cfop cfop, InternalResultsResponse<?> response)
	{
		return QATMyBatisDacHelper.doRemove(getSqlSession(), CONTACT_STMT_DELETE_BUSINESS_CONTACT, cfop, response);
	}

	/*
	 * (non-Javadoc)
	 * @see
	 * com.prosperitasglobal.cbof.dac.ICommonBusinessObjectsDAC#updateCfop(com.prosperitasglobal.cbof.model.Cfop,
	 * com.qat.framework.model.response.InternalResultsResponse)
	 */
	@Override
	public Integer updateCfop(Cfop cfop, InternalResultsResponse<?> response)
	{
		Integer updateCount = 0;
		response = new InternalResultsResponse<Cfop>();
		// First update the root if necessary.
		if (!ValidationUtil.isNull(cfop.getModelAction())
				&& (cfop.getModelAction() == QATModel.PersistanceActionEnum.UPDATE))
		{
			updateCount = QATMyBatisDacHelper.doUpdate(getSqlSession(), CONTACT_STMT_UPDATE, cfop, response);

			if (updateCount == 1)
			{
				cfop.setModelAction(QATModel.PersistanceActionEnum.NONE);
			}
		}

		return updateCount;
	}

	/*
	 * (non-Javadoc)
	 * @see com.prosperitasglobal.cbof.dac.ICommonBusinessObjectsDAC#fetchCfopById(java.lang.Integer)
	 */
	@Override
	public InternalResultsResponse<Cfop> fetchCfopById(Integer id)
	{
		InternalResultsResponse<Cfop> response = new InternalResultsResponse<Cfop>();

		QATMyBatisDacHelper.doQueryForList(getSqlSession(), CONTACT_STMT_FETCH_BY_ID, id, response);

		return response;
	}

	@Override
	public Integer insertCfopPessoa(CfopPessoa cfop, String string, InternalResultsResponse<?> response)
	{
		Integer insertCount = 0;
		response = new InternalResultsResponse<CfopPessoa>();
		// First insert the root cfop data
		insertCount = QATMyBatisDacHelper.doInsert(getSqlSession(), "CfopMap.insertCfopPessoa", cfop, response);

		return insertCount;
	}

	/*
	 * (non-Javadoc)
	 * @see
	 * com.prosperitasglobal.cbof.dac.ICfopDAC#deleteBusinessCfop(com.prosperitasglobal.cbof.model.Cfop,
	 * com.qat.framework.model.response.InternalResultsResponse)
	 */
	@Override
	public Integer deleteCfopPessoa(CfopPessoa cfop, InternalResultsResponse<?> response)
	{
		return QATMyBatisDacHelper.doRemove(getSqlSession(), CONTACT_STMT_DELETE_BUSINESS_CONTACT, cfop, response);
	}

	/*
	 * (non-Javadoc)
	 * @see
	 * com.prosperitasglobal.cbof.dac.ICommonBusinessObjectsDAC#updateCfop(com.prosperitasglobal.cbof.model.Cfop,
	 * com.qat.framework.model.response.InternalResultsResponse)
	 */
	@Override
	public Integer updateCfopPessoa(CfopPessoa cfop, InternalResultsResponse<?> response)
	{
		Integer updateCount = 0;
		response = new InternalResultsResponse<CfopPessoa>();
		// First update the root if necessary.
		if (!ValidationUtil.isNull(cfop.getModelAction())
				&& (cfop.getModelAction() == QATModel.PersistanceActionEnum.UPDATE))
		{
			updateCount = QATMyBatisDacHelper.doUpdate(getSqlSession(), CONTACT_STMT_UPDATE, cfop, response);

		}

		return updateCount;
	}

	@Override
	public InternalResultsResponse<Cfop> fetchCfopByRequest(PagedInquiryRequest request)
	{
		// TODO Auto-generated method stub
		return null;
	}

}
