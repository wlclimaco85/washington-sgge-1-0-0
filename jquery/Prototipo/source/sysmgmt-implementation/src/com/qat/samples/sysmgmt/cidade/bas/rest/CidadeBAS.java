package com.qat.samples.sysmgmt.cidade.bas.rest;

import com.qat.samples.sysmgmt.cidade.bai.ICidadeBAI;
import com.qat.samples.sysmgmt.cidade.bas.ICidadeRESTBAS;
import com.qat.samples.sysmgmt.cidade.model.request.CidadeInquiryRequest;
import com.qat.samples.sysmgmt.cidade.model.request.CidadeMaintenanceRequest;
import com.qat.samples.sysmgmt.cidade.model.response.CidadeResponse;
import com.qat.samples.sysmgmt.model.request.FetchAllRequest;
import com.qat.samples.sysmgmt.model.request.FetchByIdRequest;
import com.qat.samples.sysmgmt.model.request.RefreshRequest;

/**
 * Standard implementation of a BAS where the operations are delegated to a BAI.
 * Note the BAI is injected by Spring.
 */
public class CidadeBAS implements ICidadeRESTBAS
{

	/** The cidade bai. */
	private ICidadeBAI cidadeBAI; // injected by Spring through setter

	/**
	 * Sets the cidade bai.
	 * 
	 * @param cidadeBAI the new cidade bai
	 */
	public void setCidadeBAI(ICidadeBAI cidadeBAI)
	{
		this.cidadeBAI = cidadeBAI;
	}

	/**
	 * Gets the cidade bai.
	 * 
	 * @return the cidade bai
	 */
	public ICidadeBAI getCidadeBAI()
	{
		return cidadeBAI;
	}

	/*
	 * (non-Javadoc)
	 * @see com.qat.samples.sysmgmt.bas.ICidadeRESTBAS#insertCidade(com.qat.samples.sysmgmt.model.request.
	 * CidadeMaintenanceRequest)
	 */
	@Override
	public CidadeResponse insertCidade(CidadeMaintenanceRequest request)
	{
		return getCidadeBAI().insertCidade(request);
	}

	/*
	 * (non-Javadoc)
	 * @see com.qat.samples.sysmgmt.bas.ICidadeRESTBAS#updateCidade(com.qat.samples.sysmgmt.model.request.
	 * CidadeMaintenanceRequest)
	 */
	@Override
	public CidadeResponse updateCidade(CidadeMaintenanceRequest request)
	{
		return getCidadeBAI().updateCidade(request);
	}

	/*
	 * (non-Javadoc)
	 * @see com.qat.samples.sysmgmt.bas.ICidadeRESTBAS#deleteCidade(com.qat.samples.sysmgmt.model.request.
	 * CidadeMaintenanceRequest)
	 */
	@Override
	public CidadeResponse deleteCidade(CidadeMaintenanceRequest request)
	{
		return getCidadeBAI().deleteCidade(request);
	}

	/*
	 * (non-Javadoc)
	 * @see
	 * com.qat.samples.sysmgmt.bas.ICidadeRESTBAS#refreshCidades(com.qat.samples.sysmgmt.model.request.RefreshRequest)
	 */
	@Override
	public CidadeResponse refreshCidades(RefreshRequest request)
	{
		// This method is demo code only. Do not view this as a QAT Global Standard.
		return getCidadeBAI().refreshCidades(request);
	}

	/*
	 * (non-Javadoc)
	 * @see
	 * com.qat.samples.sysmgmt.bas.ICidadeRESTBAS#fetchAllCidades(com.qat.samples.sysmgmt.model.request.FetchAllRequest)
	 */
	@Override
	public CidadeResponse fetchAllCidades(FetchAllRequest request)
	{
		return getCidadeBAI().fetchAllCidades(request);
	}

	/*
	 * (non-Javadoc)
	 * @see
	 * com.qat.samples.sysmgmt.bas.ICidadeRESTBAS#fetchCidadeById(com.qat.samples.sysmgmt.model.request.FetchByIdRequest
	 * )
	 */
	@Override
	public CidadeResponse fetchCidadeById(FetchByIdRequest request)
	{
		return getCidadeBAI().fetchCidadeById(request);
	}

	/*
	 * (non-Javadoc)
	 * @see com.qat.samples.sysmgmt.bas.ICidadeRESTBAS#fetchCidadesByRequest(com.qat.samples.sysmgmt.model.request.
	 * PagedInquiryRequest)
	 */
	@Override
	public CidadeResponse fetchCidadesByRequest(CidadeInquiryRequest request)
	{
		return getCidadeBAI().fetchCidadesByRequest(request);
	}
}
