package com.prosperitasglobal.cbof.bai.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.prosperitasglobal.cbof.bai.INameSupplementBAI;
import com.prosperitasglobal.cbof.dac.ICodeValueDAC;
import com.prosperitasglobal.cbof.model.CodeValue;
import com.prosperitasglobal.cbof.model.request.CodeValueRequest;
import com.prosperitasglobal.cbof.model.response.CodeValueResponse;
import com.qat.framework.model.response.InternalResultsResponse;
import com.qat.framework.util.QATInterfaceUtil;

/**
 * The Class NameSupplementBAIImpl.
 */
public class NameSupplementBAIImpl implements INameSupplementBAI
{

	/** The Constant DEFAULT_EXCEPTION_MSG. */
	private static final String DEFAULT_EXCEPTION_MSG = "sendsolv.base.defaultexception";

	/** The Constant CLASS_NAME. */
	private static final String CLASS_NAME = NameSupplementBAIImpl.class.getName();

	/** The Constant LOG. */
	private static final Logger LOG = LoggerFactory.getLogger(NameSupplementBAIImpl.class);

	/** The code value dac. */
	private ICodeValueDAC codeValueDAC; // injected by Spring through setter

	/**
	 * Gets the code value dac.
	 *
	 * @return the code value dac
	 */
	public ICodeValueDAC getCodeValueDAC()
	{
		return codeValueDAC;
	}

	/**
	 * Sets the code value dac.
	 *
	 * @param codeValueDAC the code value dac
	 */
	public void setCodeValueDAC(ICodeValueDAC codeValueDAC)
	{
		this.codeValueDAC = codeValueDAC;
	}

	/*
	 * (non-Javadoc)
	 * @see com.prosperitasglobal.cbof.bai.INameSupplement#fetchAllPrefix(com.prosperitasglobal.cbof.model.request.
	 * CodeValueRequest)
	 */
	@Override
	public CodeValueResponse fetchAllPrefix(CodeValueRequest request)
	{
		CodeValueResponse response = new CodeValueResponse();

		try
		{
			InternalResultsResponse<CodeValue> internalResponse = getCodeValueDAC().fetchAllCodeValueByType(request);

			// Handle the processing for all previous methods regardless of them failing or succeeding.
			QATInterfaceUtil.handleOperationStatusAndMessages(response, internalResponse, true);
		}
		catch (Exception ex)
		{
			QATInterfaceUtil.handleException(LOG, response, ex, DEFAULT_EXCEPTION_MSG, new Object[] {CLASS_NAME});
		}

		return response;
	}

	/*
	 * (non-Javadoc)
	 * @see com.prosperitasglobal.cbof.bai.INameSupplement#fetchAllSuffix(com.prosperitasglobal.cbof.model.request.
	 * CodeValueRequest)
	 */
	@Override
	public CodeValueResponse fetchAllSuffix(CodeValueRequest request)
	{
		CodeValueResponse response = new CodeValueResponse();

		try
		{
			InternalResultsResponse<CodeValue> internalResponse = getCodeValueDAC().fetchAllCodeValueByType(request);

			// Handle the processing for all previous methods regardless of them failing or succeeding.
			QATInterfaceUtil.handleOperationStatusAndMessages(response, internalResponse, true);
		}
		catch (Exception ex)
		{
			QATInterfaceUtil.handleException(LOG, response, ex, DEFAULT_EXCEPTION_MSG, new Object[] {CLASS_NAME});
		}

		return response;
	}

}
