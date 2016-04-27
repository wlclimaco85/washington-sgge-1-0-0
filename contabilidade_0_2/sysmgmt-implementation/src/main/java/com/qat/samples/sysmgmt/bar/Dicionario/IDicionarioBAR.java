package com.qat.samples.sysmgmt.bar.undefined;
import com.qat.framework.model.response.InternalResponse;
import com.qat.framework.model.response.InternalResultsResponse;
import com.qat.samples.sysmgmt.model.request.FetchByIdRequest;
import com.qat.samples.sysmgmt.model.request.PagedInquiryRequest;

/**
 * The Interface DicionarioBAR.. (Data Access Component - DAC)
 */
public interface IDicionarioBAR 
{

	/**
	 * Fetch classes by id.
	 * 
	 * @param request the request
* @return the internal results response
*/
	public Classes fetchClassesById(FetchByIdRequest request);

	/**
* Insert classes.
* 
* @param classes the classes
* 
* @return the internal response
*/
	public InternalResponse insertClasses(Classes classes);

	/**
* Update classes.
* 
* @param classes the classes
* 
* @return the internal response
*/
	public InternalResponse updateClasses(Classes classes);

	/**
* Delete classes.
* 
* @param classes the classes
* 
* @return the internal response
*/
	public InternalResponse deleteClassesById(Classes classes);

	/**
* Delete all classess.
* 
* @return the internal response
*/
	public InternalResponse deleteAllClassess();

	/**
* Fetch all classess.
* 
* @return the list< classes>
*/
	public InternalResultsResponse<Classes> fetchAllClassess(Classes  classes);

	/**
* Fetch classess by request.
* 
* @param request the request
* @return the internal results response
*/
	public InternalResultsResponse<Classes> fetchClassessByRequest(ClassesInquiryRequest request);

	/**
	 * Fetch interface by id.
	 * 
	 * @param request the request
* @return the internal results response
*/
	public Interface fetchInterfaceById(FetchByIdRequest request);

	/**
* Insert interface.
* 
* @param interface the interface
* 
* @return the internal response
*/
	public InternalResponse insertInterface(Interface interface);

	/**
* Update interface.
* 
* @param interface the interface
* 
* @return the internal response
*/
	public InternalResponse updateInterface(Interface interface);

	/**
* Delete interface.
* 
* @param interface the interface
* 
* @return the internal response
*/
	public InternalResponse deleteInterfaceById(Interface interface);

	/**
* Delete all interfaces.
* 
* @return the internal response
*/
	public InternalResponse deleteAllInterfaces();

	/**
* Fetch all interfaces.
* 
* @return the list< interface>
*/
	public InternalResultsResponse<Interface> fetchAllInterfaces(Interface  interface);

	/**
* Fetch interfaces by request.
* 
* @param request the request
* @return the internal results response
*/
	public InternalResultsResponse<Interface> fetchInterfacesByRequest(InterfaceInquiryRequest request);

	/**
	 * Fetch field by id.
	 * 
	 * @param request the request
* @return the internal results response
*/
	public Field fetchFieldById(FetchByIdRequest request);

	/**
* Insert field.
* 
* @param field the field
* 
* @return the internal response
*/
	public InternalResponse insertField(Field field);

	/**
* Update field.
* 
* @param field the field
* 
* @return the internal response
*/
	public InternalResponse updateField(Field field);

	/**
* Delete field.
* 
* @param field the field
* 
* @return the internal response
*/
	public InternalResponse deleteFieldById(Field field);

	/**
* Delete all fields.
* 
* @return the internal response
*/
	public InternalResponse deleteAllFields();

	/**
* Fetch all fields.
* 
* @return the list< field>
*/
	public InternalResultsResponse<Field> fetchAllFields(Field  field);

	/**
* Fetch fields by request.
* 
* @param request the request
* @return the internal results response
*/
	public InternalResultsResponse<Field> fetchFieldsByRequest(FieldInquiryRequest request);

}
