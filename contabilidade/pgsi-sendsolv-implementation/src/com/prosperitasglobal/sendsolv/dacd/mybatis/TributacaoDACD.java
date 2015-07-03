package com.prosperitasglobal.sendsolv.dacd.mybatis;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.prosperitasglobal.sendsolv.dac.IHistoricoDAC;
import com.prosperitasglobal.sendsolv.dac.IStatusDAC;
import com.prosperitasglobal.sendsolv.dac.ITributacaoDAC;
import com.prosperitasglobal.sendsolv.model.AcaoEnum;
import com.prosperitasglobal.sendsolv.model.Status;
import com.prosperitasglobal.sendsolv.model.StatusEnum;
import com.prosperitasglobal.sendsolv.model.TabelaEnum;
import com.prosperitasglobal.sendsolv.model.Tributacao;
import com.prosperitasglobal.sendsolv.model.TypeEnum;
import com.qat.framework.model.response.InternalResultsResponse;
import com.qat.framework.validation.ValidationUtil;

/**
 * Delegate class for the SysMgmt DACs. Note this is a final class with ONLY static methods so everything must be
 * passed into the methods. Nothing injected.
 */
public final class TributacaoDACD extends SqlSessionDaoSupport
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
	public static Integer maintainTributacaoAssociations(Tributacao tributacao,
			InternalResultsResponse<?> response, Integer parentId, TypeEnum type, AcaoEnum acaoType,
			TabelaEnum tabelaEnum, ITributacaoDAC tributacaoDAC, IStatusDAC statusDAC, IHistoricoDAC historicoDAC,
			Integer empId,
			String UserId, Integer processId)
	{
		Integer count = 0;
		// First Maintain Empresa
		if (ValidationUtil.isNull(tributacao))
		{
			return count;
		}
		// Make sure we set the parent key
		tributacao.setParentId(parentId);

		switch (tributacao.getModelAction())
		{
			case INSERT:
				count = tributacaoDAC.insertTributacao(tributacao,
						"insertTributacao", response);
				if (count > 0)
				{
					Status status = new Status();
					status.setStatus(StatusEnum.ACTIVE);
					List<Status> statusList = new ArrayList<Status>();
					count =
							StatusDACD.maintainStatusAssociations(statusList, response, count, null,
									AcaoEnum.INSERT, UserId, empId, TabelaEnum.BANCO, statusDAC, historicoDAC,
									processId);
				}
				break;
			case UPDATE:
				count = tributacaoDAC.updateTributacao(tributacao, response);
				if (count > 0)
				{
					count =
							StatusDACD
							.maintainStatusAssociations(tributacao.getStatusList(), response,
									tributacao.getId(),
									null, AcaoEnum.UPDATE, UserId, empId, TabelaEnum.BANCO, statusDAC,
									historicoDAC, processId);
				}
				break;
			case DELETE:

				Status status = new Status();
				status.setStatus(StatusEnum.INACTIVE);
				List<Status> statusList = new ArrayList<Status>();
				count =
						StatusDACD.maintainStatusAssociations(statusList, response, tributacao.getId(), null,
								AcaoEnum.DELETE, UserId, empId, TabelaEnum.BANCO, statusDAC, historicoDAC, processId);

				break;
		}

		return count;
	}
}
