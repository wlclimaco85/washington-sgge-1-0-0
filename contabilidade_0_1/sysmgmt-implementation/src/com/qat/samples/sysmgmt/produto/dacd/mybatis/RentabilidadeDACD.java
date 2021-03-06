package com.qat.samples.sysmgmt.produto.dacd.mybatis;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.qat.framework.model.response.InternalResultsResponse;
import com.qat.framework.validation.ValidationUtil;
import com.qat.samples.sysmgmt.entidade.dacd.StatusDACD;
import com.qat.samples.sysmgmt.produto.dac.IRentabilidadeDAC;
import com.qat.samples.sysmgmt.produto.model.Rentabilidade;
import com.qat.samples.sysmgmt.util.AcaoEnum;
import com.qat.samples.sysmgmt.util.CdStatusTypeEnum;
import com.qat.samples.sysmgmt.util.Status;
import com.qat.samples.sysmgmt.util.TabelaEnum;
import com.qat.samples.sysmgmt.util.TypeEnum;
import com.qat.samples.sysmgmt.util.dac.IHistoricoDAC;
import com.qat.samples.sysmgmt.util.dac.IStatusDAC;

/**
 * Delegate class for the SysMgmt DACs. Note this is a final class with ONLY static methods so everything must be
 * passed into the methods. Nothing injected.
 */
public final class RentabilidadeDACD extends SqlSessionDaoSupport
{

	/** The Constant ZERO. */
	private static final Integer ZERO = 0;

	/**
	 * Fetch objects by request.
	 * 
	 * @param sqlSession the sql session
	 * @param request the request
	 * @param countStatement the count statement
	 * @param fetchPagedStatement the fetch paged statement
	 * @param response the response
	 */
	@SuppressWarnings("unchecked")
	public static Integer maintainRentabilidadeAssociations(List<Rentabilidade> rentabilidadeList,
			InternalResultsResponse<?> response, Integer parentId, TypeEnum type, AcaoEnum acaoType,
			TabelaEnum tabelaEnum, IRentabilidadeDAC rentabilidadeDAC, IStatusDAC statusDAC,
			IHistoricoDAC historicoDAC,
			Integer empId,
			String UserId, Integer processId)
	{
		Integer count = 0;
		// First Maintain Empresa
		if (ValidationUtil.isNullOrEmpty(rentabilidadeList))
		{
			return count;
		}
		// For Each Contact...
		for (Rentabilidade rentabilidade : rentabilidadeList)
		{
			// Make sure we set the parent key
			rentabilidade.setParentId(parentId);

			if (ValidationUtil.isNull(rentabilidade.getModelAction()))
			{
				continue;
			}
			switch (rentabilidade.getModelAction())
			{
				case INSERT:
					count = rentabilidadeDAC.insertRentabilidade(rentabilidade,
							"insertRentabilidade", response);
					if (count > 0)
					{
						Status status = new Status();
						status.setStatus(CdStatusTypeEnum.ATIVO);
						List<Status> statusList = new ArrayList<Status>();
						count =
								StatusDACD.maintainStatusAssociations(statusList, response, count, null,
										AcaoEnum.INSERT, UserId, empId, TabelaEnum.BANCO, statusDAC, historicoDAC,
										processId, null);
					}
					break;
				case UPDATE:
					count = rentabilidadeDAC.updateRentabilidade(rentabilidade, response);
					if (count > 0)
					{
						count =
								StatusDACD
										.maintainStatusAssociations(rentabilidade.getStatusList(), response,
												rentabilidade.getId(),
												null, AcaoEnum.UPDATE, UserId, empId, TabelaEnum.BANCO, statusDAC,
												historicoDAC, processId, null);
					}
					break;
				case DELETE:

					Status status = new Status();
					status.setStatus(CdStatusTypeEnum.DELETADO);
					List<Status> statusList = new ArrayList<Status>();
					count =
							StatusDACD.maintainStatusAssociations(statusList, response, rentabilidade.getId(), null,
									AcaoEnum.DELETE, UserId, empId, TabelaEnum.BANCO, statusDAC, historicoDAC,
									processId, null);

					break;
			}
		}

		return count;
	}
}
