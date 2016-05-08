package com.qat.samples.sysmgmt.contabilidade.model;

import java.util.Date;
import java.util.List;

import com.qat.samples.sysmgmt.produto.model.PlanoByServico;
import com.qat.samples.sysmgmt.produto.model.Servico;
import com.qat.samples.sysmgmt.produto.model.Preco;
import com.qat.samples.sysmgmt.util.model.Imagem;
import com.qat.samples.sysmgmt.util.model.ModelCosmeDamiao;

/**
 * The Class Document represents a generic formal business or personal document, such as driver's license or bylaws.
 */
@SuppressWarnings("serial")
public class Plano extends ModelCosmeDamiao
{

	private Integer id;

	private Long dataInicio;

	private Long dataFinal;

	private List<Preco> preco;

	private Integer numeroContrato;

	private List<Servico> servicos;

	private String descricao;

	private String titulo;

	public Plano(Integer id)
	{
		super();
	}

	/**
	 * The Constructor.
	 */
	public Plano()
	{

	}

	public Plano(int i, String string) {

		this.id = i;
		this.titulo = string;
		setModifyDateUTC((new Date()).getTime());
		setModifyUser("system");
	}

	/**
	 * @return the dataInicio
	 */
	public Long getDataInicio()
	{
		return dataInicio;
	}

	/**
	 * @param dataInicio the dataInicio to set
	 */
	public void setDataInicio(Long dataInicio)
	{
		this.dataInicio = dataInicio;
	}

	/**
	 * @return the dataFinal
	 */
	public Long getDataFinal()
	{
		return dataFinal;
	}

	/**
	 * @param dataFinal the dataFinal to set
	 */
	public void setDataFinal(Long dataFinal)
	{
		this.dataFinal = dataFinal;
	}

	/**
	 * @return the numeroContrato
	 */
	public Integer getNumeroContrato()
	{
		return numeroContrato;
	}

	/**
	 * @param numeroContrato the numeroContrato to set
	 */
	public void setNumeroContrato(Integer numeroContrato)
	{
		this.numeroContrato = numeroContrato;
	}

	public List<Servico> getServicos() {
		return servicos;
	}

	public void setServicos(List<Servico> servicos) {
		this.servicos = servicos;
	}

	/**
	 * @return the preco
	 */
	public List<Preco> getPreco()
	{
		return preco;
	}

	/**
	 * @param preco the preco to set
	 */
	public void setPreco(List<Preco> preco)
	{
		this.preco = preco;
	}

	public String getDescricao()
	{
		return descricao;
	}

	public void setDescricao(String descricao)
	{
		this.descricao = descricao;
	}

	public String getTitulo()
	{
		return titulo;
	}

	public void setTitulo(String titulo)
	{
		this.titulo = titulo;
	}

	public Integer getId()
	{
		return id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	@Override
	public String toString()
	{
		return "Plano [getDataInicio()=" + getDataInicio() + ", getDataFinal()=" + getDataFinal()
				+ ", getNumeroContrato()=" + getNumeroContrato() + ", getServicos()=" + getServicos() + ", getPreco()="
				+ getPreco()  + ", getDescricao()=" + getDescricao()
				+ ", getTitulo()=" + getTitulo() + ", getId()=" + getId() + ", toString()=" + super.toString() + "]";
	}

}