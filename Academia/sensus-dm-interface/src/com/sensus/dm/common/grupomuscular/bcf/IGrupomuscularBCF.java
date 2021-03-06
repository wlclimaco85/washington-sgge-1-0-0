package com.sensus.dm.common.grupomuscular.bcf;

import com.sensus.dm.common.device.model.response.DeviceResponse;
import com.sensus.dm.common.grupomuscular.model.request.GrupomuscularRequest;
import com.sensus.dm.common.grupomuscular.model.request.InquiryGrupomuscularRequest;
import com.sensus.dm.common.grupomuscular.model.response.GrupomuscularResponse;
import com.sensus.dm.common.grupomuscular.model.response.InquiryGrupomuscularResponse;

/**
 * The Interface IGrupomuscularBCF.
 * 
 * @author Washington.
 * 
 */
public interface IGrupomuscularBCF
{

	/**
	 * Fetch all grupomusculars.
	 * 
	 * @param inquiryGrupomuscularRequest the inquiry grupomuscular request
	 * @return the inquiry grupomuscular response
	 */
	InquiryGrupomuscularResponse fetchAllGrupomusculars(InquiryGrupomuscularRequest inquiryGrupomuscularRequest);

	/**
	 * Fetch grupomuscular by id.
	 * 
	 * @param inquiryGrupomuscularRequest the inquiry grupomuscular request
	 * @return the grupomuscular response
	 */
	GrupomuscularResponse fetchGrupomuscularById(InquiryGrupomuscularRequest inquiryGrupomuscularRequest);

	/**
	 * Fetch grupomuscular by name.
	 * 
	 * @param inquiryGrupomuscularRequest the inquiry grupomuscular request
	 * @return the grupomuscular response
	 */
	GrupomuscularResponse fetchGrupomuscularByName(InquiryGrupomuscularRequest inquiryGrupomuscularRequest);

	/**
	 * Insert grupomuscular.
	 * 
	 * @param grupomuscularRequest the grupomuscular request
	 * @return the grupomuscular response
	 */
	GrupomuscularResponse insertGrupomuscular(GrupomuscularRequest grupomuscularRequest);

	/**
	 * Update grupomuscular.
	 * 
	 * @param grupomuscularRequest the grupomuscular request
	 * @return the grupomuscular response
	 */
	GrupomuscularResponse updateGrupomuscular(GrupomuscularRequest grupomuscularRequest);

	/**
	 * Delete grupomuscular.
	 * 
	 * @param grupomuscularRequest the grupomuscular request
	 * @return the grupomuscular response
	 */
	GrupomuscularResponse deleteGrupomuscular(GrupomuscularRequest grupomuscularRequest);

	/**
	 * Fetch devices by grupomuscular.
	 * 
	 * @param grupomuscularRequest the grupomuscular request
	 * @return the device response
	 */
	DeviceResponse fetchDevicesByGrupomuscular(GrupomuscularRequest grupomuscularRequest);

}
