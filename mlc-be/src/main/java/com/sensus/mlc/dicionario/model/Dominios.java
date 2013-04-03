package com.sensus.mlc.dicionario.model;

import java.util.List;

import com.sensus.common.model.SensusModel;
import com.sensus.mlc.user.model.Alterinse;

// TODO: Auto-generated Javadoc
/**
 * The Class Dominios.
 */
public class Dominios extends SensusModel
{

    /** The nmtabela. */
    private Tabela nmtabela;

    /** The nmatribu. */
    private Atributos nmatribu;

    /** The dsdomini. */
    private String dsdomini;

    /** The vrdomini. */
    private String vrdomini;

	/** The listinsalt. */
	private List<Alterinse> listinsalt;

	/**
	 * Gets the nmtabela.
	 *
	 * @return the nmtabela
	 */
	public Tabela getNmtabela() {
		return nmtabela;
	}

	/**
	 * Sets the nmtabela.
	 *
	 * @param nmtabela the new nmtabela
	 */
	public void setNmtabela(Tabela nmtabela) {
		this.nmtabela = nmtabela;
	}

	/**
	 * Gets the nmatribu.
	 *
	 * @return the nmatribu
	 */
	public Atributos getNmatribu() {
		return nmatribu;
	}

	/**
	 * Sets the nmatribu.
	 *
	 * @param nmatribu the new nmatribu
	 */
	public void setNmatribu(Atributos nmatribu) {
		this.nmatribu = nmatribu;
	}

	/**
	 * Gets the dsdomini.
	 *
	 * @return the dsdomini
	 */
	public String getDsdomini() {
		return dsdomini;
	}

	/**
	 * Sets the dsdomini.
	 *
	 * @param dsdomini the new dsdomini
	 */
	public void setDsdomini(String dsdomini) {
		this.dsdomini = dsdomini;
	}

	/**
	 * Gets the vrdomini.
	 *
	 * @return the vrdomini
	 */
	public String getVrdomini() {
		return vrdomini;
	}

	/**
	 * Sets the vrdomini.
	 *
	 * @param vrdomini the new vrdomini
	 */
	public void setVrdomini(String vrdomini) {
		this.vrdomini = vrdomini;
	}

	/**
	 * Gets the listinsalt.
	 *
	 * @return the listinsalt
	 */
	public List<Alterinse> getListinsalt() {
		return listinsalt;
	}

	/**
	 * Sets the listinsalt.
	 *
	 * @param listinsalt the new listinsalt
	 */
	public void setListinsalt(List<Alterinse> listinsalt) {
		this.listinsalt = listinsalt;
	}

	/* (non-Javadoc)
	 * @see com.sensus.common.model.SensusModel#toString()
	 */
	@Override
	public String toString() {
		return "Dominios [nmtabela=" + nmtabela + ", nmatribu=" + nmatribu
				+ ", dsdomini=" + dsdomini + ", vrdomini=" + vrdomini
				+ ", listinsalt=" + listinsalt + ", getNmtabela()="
				+ getNmtabela() + ", getNmatribu()=" + getNmatribu()
				+ ", getDsdomini()=" + getDsdomini() + ", getVrdomini()="
				+ getVrdomini() + ", getListinsalt()=" + getListinsalt() + "]";
	}



}
