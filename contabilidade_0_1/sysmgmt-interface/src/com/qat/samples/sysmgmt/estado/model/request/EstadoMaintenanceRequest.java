package com.qat.samples.sysmgmt.estado.model.request;

import com.qat.framework.model.request.MaintenanceRequest;
import com.qat.samples.sysmgmt.estado.Estado;

public class EstadoMaintenanceRequest extends MaintenanceRequest
{

	/** Attributes */
	private Estado Estado;

	/**
	 * The Constructor.
	 */
	public EstadoMaintenanceRequest()
	{

	}

	/**
	 * @return the Estado
	 */
	public Estado getEstado()
	{
		return Estado;
	}

	/**
	 * @param Estado the Estado to set
	 */
	public void setEstado(Estado Estado)
	{
		this.Estado = Estado;
	}

	/*
	 * (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString()
	{
		return "EstadoMaintenanceRequest [getEstado()=" + getEstado() + ", getUserContext()=" + getUserContext()
				+ "]";
	}

}