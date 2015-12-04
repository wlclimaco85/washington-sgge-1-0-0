package com.qat.samples.sysmgmt.produto.model.request;

import com.qat.samples.sysmgmt.model.request.PagedInquiryRequest;
import com.qat.samples.sysmgmt.produto.model.criteria.ProdutoCriteria;

/**
 * The Class ProdutoInquiryRequest.
 */
public class ServicoInquiryRequest extends PagedInquiryRequest
{

	/** The criteria. */
	private ProdutoCriteria criteria;

	/**
	 * Gets the criteria.
	 * 
	 * @return the criteria
	 */
	public ProdutoCriteria getCriteria()
	{
		if (criteria == null)
		{
			criteria = new ProdutoCriteria();
		}
		return criteria;
	}

	/**
	 * Sets the criteria.
	 * 
	 * @param criteria the criteria
	 */
	public void setCriteria(ProdutoCriteria criteria)
	{
		this.criteria = criteria;
	}

	/*
	 * (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString()
	{
		return "ProdutoInquiryRequest [getCriteria()=" + getCriteria() + ", toString()=" + super.toString() + "]";
	}

}