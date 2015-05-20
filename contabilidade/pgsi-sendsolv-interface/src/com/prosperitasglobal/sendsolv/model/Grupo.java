package com.prosperitasglobal.sendsolv.model;

/**
 * This class is a representation of an Account (i.e Checking, Savings, etc.). This represents an account for a transfer
 * setting.
 */
@SuppressWarnings("serial")
public class Grupo extends ModelCosmeDamiao
{
	/** The SendSolv id for the account. */
	private Integer id;

	/** The type of an account. */
	private String type;

	/** The description. */
	private String tabela;

	/** The estado. */
	private String acao;

	/** The bairro. */
	private String registro;

	/** The numero. */
	private Integer data;

	/** The cep. */
	private String usuario;

	/** The tipo endereco. */
	private Integer empresa;

	/**
	 * Default constructor.
	 */
	public Grupo()
	{
		super();
	}

	/**
	 * Gets the id.
	 *
	 * @return the id
	 */
	public Integer getId()
	{
		return id;
	}

	/**
	 * Sets the id.
	 *
	 * @param id the new id
	 */
	public void setId(Integer id)
	{
		this.id = id;
	}

	/**
	 * Gets the type.
	 *
	 * @return the type
	 */
	public String getType()
	{
		return type;
	}

	/**
	 * Sets the type.
	 *
	 * @param type the new type
	 */
	public void setType(String type)
	{
		this.type = type;
	}

	/**
	 * Gets the tabela.
	 *
	 * @return the tabela
	 */
	public String getTabela()
	{
		return tabela;
	}

	/**
	 * Sets the tabela.
	 *
	 * @param tabela the new tabela
	 */
	public void setTabela(String tabela)
	{
		this.tabela = tabela;
	}

	/**
	 * Gets the acao.
	 *
	 * @return the acao
	 */
	public String getAcao()
	{
		return acao;
	}

	/**
	 * Sets the acao.
	 *
	 * @param acao the new acao
	 */
	public void setAcao(String acao)
	{
		this.acao = acao;
	}

	/**
	 * Gets the registro.
	 *
	 * @return the registro
	 */
	public String getRegistro()
	{
		return registro;
	}

	/**
	 * Sets the registro.
	 *
	 * @param registro the new registro
	 */
	public void setRegistro(String registro)
	{
		this.registro = registro;
	}

	/**
	 * Gets the data.
	 *
	 * @return the data
	 */
	public Integer getData()
	{
		return data;
	}

	/**
	 * Sets the data.
	 *
	 * @param data the new data
	 */
	public void setData(Integer data)
	{
		this.data = data;
	}

	/**
	 * Gets the usuario.
	 *
	 * @return the usuario
	 */
	public String getUsuario()
	{
		return usuario;
	}

	/**
	 * Sets the usuario.
	 *
	 * @param usuario the new usuario
	 */
	public void setUsuario(String usuario)
	{
		this.usuario = usuario;
	}

	/**
	 * Gets the empresa.
	 *
	 * @return the empresa
	 */
	public Integer getEmpresa()
	{
		return empresa;
	}

	/**
	 * Sets the empresa.
	 *
	 * @param empresa the new empresa
	 */
	public void setEmpresa(Integer empresa)
	{
		this.empresa = empresa;
	}

	/*
	 * (non-Javadoc)
	 * @see com.prosperitasglobal.sendsolv.model.ModelCosmeDamiao#toString()
	 */
	@Override
	public String toString()
	{
		return "Grupo [getId()=" + getId() + ", getType()=" + getType() + ", getTabela()=" + getTabela()
				+ ", getAcao()=" + getAcao() + ", getRegistro()=" + getRegistro() + ", getData()=" + getData()
				+ ", getUsuario()=" + getUsuario() + ", getEmpresa()=" + getEmpresa() + ", getParentKey()="
				+ getParentKey() + ", toString()=" + super.toString() + "]";
	}

}