package com.prosperitasglobal.sendsolv.dac;

import com.prosperitasglobal.sendsolv.model.Eventos;
import com.prosperitasglobal.sendsolv.model.request.PagedInquiryRequest;
import com.qat.framework.model.response.InternalResultsResponse;

/**
 * The Interface IEventosDAC.
 */
public interface IEventosDAC
{

	public Integer updateEvento(Eventos Evento, InternalResultsResponse<?> response);

	/**
	 * Insert Evento.
	 *
	 * @param Evento the Evento
	 * @param statementName the statement name
	 * @param response the response
	 * @return the integer
	 */
	public Integer insertEvento(Eventos Evento, String statementName, InternalResultsResponse<?> response);

	/**
	 * Delete business Evento.
	 *
	 * @param Evento the Evento
	 * @param response the response
	 * @return the integer
	 */
	public Integer deleteEvento(Eventos Evento, InternalResultsResponse<?> response);

	public InternalResultsResponse<Eventos> fetchEventosByRequest(PagedInquiryRequest request);

}
