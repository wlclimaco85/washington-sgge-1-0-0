package com.qat.samples.sysmgmt.produto.dac;

import com.qat.framework.model.response.InternalResultsResponse;
import com.qat.samples.sysmgmt.model.request.PagedInquiryRequest;
import com.qat.samples.sysmgmt.produto.model.Porcao;

/**
 * The Interface IPorcaoDAC.
 */
public interface IPorcaoDAC
{

	/**
	 * Update porcao.
	 * 
	 * @param porcao the porcao
	 * @param response the response
	 * @return the integer
	 */
	public Integer updatePorcao(Porcao porcao, InternalResultsResponse<?> response);

	/**
	 * Insert porcao.
	 * 
	 * @param porcao the porcao
	 * @param statementName the statement name
	 * @param response the response
	 * @return the integer
	 */
	public Integer insertPorcao(Porcao porcao, String statementName, InternalResultsResponse<?> response);

	/**
	 * Delete business porcao.
	 * 
	 * @param porcao the porcao
	 * @param response the response
	 * @return the integer
	 */
	public Integer deletePorcao(Porcao porcao, InternalResultsResponse<?> response);

	/**
	 * Fetch porcao by id.
	 * 
	 * @param id the id
	 * @return the internal results response< porcao>
	 */
	public InternalResultsResponse<Porcao> fetchPorcaoById(Integer id);

	public InternalResultsResponse<Porcao> fetchPorcaoByRequest(PagedInquiryRequest request);

}
