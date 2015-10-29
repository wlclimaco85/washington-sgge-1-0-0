package com.qat.samples.sysmgmt.produto.model;

import com.qat.samples.sysmgmt.util.ModelCosmeDamiao;

/**
 * This class is a representation of an Account (i.e Checking, Savings, etc.). This represents an account for a transfer
 * setting.
 */
@SuppressWarnings("serial")
public class SubGrupoProd extends ModelCosmeDamiao
{
	/** The SendSolv id for the account. */
	private Integer id;

	private SubGrupo subGrupoId;

	/**
	 * Default constructor.
	 */
	public SubGrupoProd()
	{
		super();
	}

	public SubGrupoProd(Integer id)
	{
		super();
		this.id = id;
	}

	/**
	 * @return the id
	 */
	public Integer getId()
	{
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id)
	{
		this.id = id;
	}

	/**
	 * @return the subGrupoId
	 */
	public SubGrupo getUnimedId()
	{
		return subGrupoId;
	}

	/**
	 * @param subGrupoId the subGrupoId to set
	 */
	public void setUnimedId(SubGrupo subGrupoId)
	{
		this.subGrupoId = subGrupoId;
	}

	@Override
	public String toString()
	{
		return "SubGrupoProd [getId()=" + getId() + ", getUnimedId()=" + getUnimedId() + ", toString()="
				+ super.toString() + "]";
	}

}
