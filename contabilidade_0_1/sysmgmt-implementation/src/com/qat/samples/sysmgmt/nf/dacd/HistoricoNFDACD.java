package com.qat.samples.sysmgmt.nf.dacd;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.qat.framework.model.response.InternalResultsResponse;
import com.qat.framework.validation.ValidationUtil;
import com.qat.samples.sysmgmt.entidade.dacd.StatusDACD;
import com.qat.samples.sysmgmt.nf.model.HistoricoNF;
import com.qat.samples.sysmgmt.util.AcaoEnum;
import com.qat.samples.sysmgmt.util.CdStatusTypeEnum;
import com.qat.samples.sysmgmt.util.Status;
import com.qat.samples.sysmgmt.util.TabelaEnum;
import com.qat.samples.sysmgmt.util.TypeEnum;
import com.qat.samples.sysmgmt.util.dac.IHistoricoDAC;
import com.qat.samples.sysmgmt.util.dac.IHistoricoNFDAC;
import com.qat.samples.sysmgmt.util.dac.IStatusDAC;

/**
 * Delegate class for the SysMgmt DACs. Note this is a final class with ONLY static methods so everything must be
 * passed into the methods. Nothing injected.
 */
public final class HistoricoNFDACD extends SqlSessionDaoSupport
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
	public static Integer maintainHistoricoNFAssociations(List<HistoricoNF> historicoNFList,
			InternalResultsResponse<?> response, Integer parentId, TypeEnum type, AcaoEnum acaoType,
			TabelaEnum tabelaEnum, IHistoricoNFDAC historicoNFDAC, IStatusDAC statusDAC, IHistoricoDAC historicoDAC,
			Integer empId,
			String UserId, Integer processId, Integer historicoId)
	{
		Integer count = 0;
		// First Maintain Empresa
		if (ValidationUtil.isNullOrEmpty(historicoNFList))
		{
			return count;
		}
		// For Each Contact...
		for (HistoricoNF historicoNF : historicoNFList)
		{
			// Make sure we set the parent key
			historicoNF.setParentId(parentId);
			historicoNF.setProcessId(processId);

			if (ValidationUtil.isNull(historicoNF.getModelAction()))
			{
				continue;
			}
			switch (historicoNF.getModelAction())
			{
				case INSERT:
					count = historicoNFDAC.insertHistoricoNF(historicoNF,
							"insertHistoricoNF", response);
					if (count > 0)
					{
						Status status = new Status();
						status.setStatus(CdStatusTypeEnum.ATIVO);
						List<Status> statusList = new ArrayList<Status>();
						count =
								StatusDACD.maintainStatusAssociations(statusList, response, count, null,
										AcaoEnum.INSERT, UserId, empId, TabelaEnum.PROFISSAO, statusDAC, historicoDAC,
										processId, historicoId);
					}
					break;
				case UPDATE:
					count = historicoNFDAC.updateHistoricoNF(historicoNF, response);
					if (count > 0)
					{
						count =
								StatusDACD.maintainStatusAssociations(historicoNF.getStatusList(), response,
										historicoNF.getId(),
										null, AcaoEnum.UPDATE, UserId, empId, TabelaEnum.PROFISSAO, statusDAC,
										historicoDAC, processId, historicoId);
					}
					break;
				case DELETE:

					Status status = new Status();
					status.setStatus(CdStatusTypeEnum.DELETADO);
					List<Status> statusList = new ArrayList<Status>();
					count =
							StatusDACD.maintainStatusAssociations(statusList, response, historicoNF.getId(), null,
									AcaoEnum.DELETE, UserId, empId, TabelaEnum.PROFISSAO, statusDAC, historicoDAC,
									processId, historicoId);

					break;
			}
		}

		return count;
	}
}
