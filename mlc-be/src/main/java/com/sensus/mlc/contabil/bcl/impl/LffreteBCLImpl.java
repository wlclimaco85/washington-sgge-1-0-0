package com.sensus.mlc.contabil.bcl.impl;

import static com.sensus.mlc.base.util.LCActionUtil.createMessageInfoNone;
import static com.sensus.mlc.base.util.LCActionUtil.createMessageWarningOther;
import static com.sensus.mlc.base.util.LCHelp.createInquiryLightRequest;
import static com.sensus.mlc.base.util.LCHelp.createProcessItemWithFailure;
import static com.sensus.mlc.base.util.LCHelp.createProcessRequest;
import static com.sensus.mlc.base.util.LCPropertiesExtractorUtil.extractLightId;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.sensus.common.model.Message;
import com.sensus.common.model.Message.MessageLevel;
import com.sensus.common.model.Message.MessageSeverity;
import com.sensus.common.model.MessageInfo;
import com.sensus.common.model.response.InternalResponse;
import com.sensus.common.model.response.InternalResponse.Status;
import com.sensus.common.model.response.InternalResultsResponse;
import com.sensus.common.util.SensusAppContext;
import com.sensus.common.validation.ValidationUtil;
import com.sensus.mlc.base.model.MLCSortExpression;
import com.sensus.mlc.base.util.LCDateUtil;
import com.sensus.mlc.base.util.LCHelp;
import com.sensus.mlc.process.bcl.IProcessBCL;
import com.sensus.mlc.process.model.LCAction;
import com.sensus.mlc.process.model.LCActionParameter;
import com.sensus.mlc.process.model.LCActionTypeEnum;
import com.sensus.mlc.process.model.Process;
import com.sensus.mlc.process.model.ProcessItemStatusEnum;
import com.sensus.mlc.process.model.ProcessStatusReasonEnum;
import com.sensus.mlc.process.model.request.ProcessRequest;
import com.sensus.mlc.smartpoint.bcl.ISmartPointAccessorBCL;
import com.sensus.mlc.smartpoint.model.Light;
import com.sensus.mlc.smartpoint.model.LightOrderByEnum;
import com.sensus.mlc.smartpoint.model.LightStatusEnum;
import com.sensus.mlc.smartpoint.model.PropertyEnum;
import com.sensus.mlc.smartpoint.model.SearchLight;
import com.sensus.mlc.smartpoint.model.SearchParameter;
import com.sensus.mlc.smartpoint.model.request.InquiryLightRequest;
import com.sensus.mlc.smartpoint.model.request.LightRequest;
import com.sensus.mlc.lffrete.bcl.ILffreteBCL;
import com.sensus.mlc.lffrete.dac.ILffreteDAC;
import com.sensus.mlc.lffrete.model.Lffrete;
import com.sensus.mlc.lffrete.model.request.InquiryLffreteRequest;
import com.sensus.mlc.lffrete.model.request.LffreteRequest;

/** 
 * The Class LffreteBCLImpl. 
 */ 
public class LffreteBCLImpl implements ILffreteBCL
{

	/**  The Constant SEPARATOR. */ 
	private static final String SEPARATOR = " - ";

	/**  The lffrete dac. */ 
	private ILffreteDAC lffreteDAC;



	/**  The process bcl. */ 
	private IProcessBCL processBCL;

	/**  The lc help. */ 
	private LCHelp lcHelp;


	/** 
	 * Gets the lc help.
	 * 
	 * @return the lc help 
	 */ 
	public LCHelp getLcHelp() 
	{ 
		return lcHelp;
	} 

	/** 
	 * Sets the lc help.
	 *
	 * @param lcHelp the new lc help  
	 */ 
	public void setLcHelp(LCHelp lcHelp) 
	{ 
		this.lcHelp = lcHelp;
	} 

	/** 
	 * Spring Sets the lffrete dac. 
	 *  
	 * @param iLffreteDAC the new lffrete dac 
	 */ 
	public void setLffreteDAC(ILffreteDAC iLffreteDAC)
	{ 
		lffreteDAC = iLffreteDAC;
	} 

	/** 
	 * Gets the lffrete dac. 
	 * 
	 * @return the lffrete dac 
	 */ 
	public ILffreteDAC getLffreteDAC()
	{
		return lffreteDAC;
	}

	/** 
	 * Gets the process bcl.
	 * 
	 * @return the process bcl 
	 */ 
	public IProcessBCL getProcessBCL() 
	{
		return processBCL;
	}

	/** 
	 * Sets the process bcl.
	 *  
	 * @param processBCL the new process bcl  
	 */ 
	public void setProcessBCL(IProcessBCL processBCL)
	{ 
		this.processBCL = processBCL;
	} 
	/*  
	 * (non-Javadoc)
	 * @see com.sensus.mlc.lffrete.bcl.ILffreteBCL#fetchAllLffretes(InquiryLffreteRequest) 
	 */ 
	@Override 
	public InternalResultsResponse<Lffrete> fetchAllLffrete(InquiryLffreteRequest inquiryLffreteRequest)
	{
		return getLffreteDAC().fetchAllLffrete(inquiryLffreteRequest);
	}

	/*  
	 * (non-Javadoc)  
	 * @see com.sensus.mlc.lffrete.bcl.ILffreteBCL#fetchLffreteById(com.sensus.mlc.lffrete.model.request.LffreteRequest)  
	 */ 
	@Override
	public InternalResultsResponse<Lffrete> fetchLffreteById(LffreteRequest lffreteRequest)
	{ 
		return getLffreteDAC().fetchLffreteById(lffreteRequest);
	}
	/*  
	 * (non-Javadoc) 
	 * @see com.sensus.mlc.lffrete.bcl.ILffreteBCL#insertLffrete(com.sensus.mlc.lffrete.model.request.LffreteRequest) 
	 */ 
	@Override 
	public InternalResultsResponse<Lffrete> insertLffrete(LffreteRequest lffreteRequest) 
	{  

		InternalResultsResponse<Lffrete> response = getLffreteDAC().insertLffrete(lffreteRequest);

		if (!response.isInError())
		{  
			Lffrete lffrete = response.getFirstResult();
			lffreteRequest.setLffrete(lffrete);

			SearchParameter lffreteParameter = new SearchParameter(PropertyEnum.LFFRETE_ID, String.valueOf(lffrete.getId()));
			lffreteRequest.getSearchLight().addSearchParameter(lffreteParameter);
			InternalResultsResponse<Process> processResponse = 
					this.insertProcess(lffreteRequest, LCActionTypeEnum.INSERT_LFFRETE, null);
			lffreteRequest.getSearchLight().getSearchParameters().remove(lffreteParameter);

			response.setStatus(processResponse.getStatus());
			response.addMessages(processResponse.getMessageInfoList());
		} 
		return response;

	}  

	/* 
	 * (non-Javadoc) 
	 * @see com.sensus.mlc.lffrete.bcl.ILffreteBCL#deleteLffrete(com.sensus.mlc.lffrete.model.request.LffreteRequest)
	 */ 
	@Override 
	public InternalResponse deleteLffrete(LffreteRequest lffreteRequest)
	{
		InternalResultsResponse<Lffrete> lffreteResponse = getLffreteDAC().fetchLffreteById(lffreteRequest);
		InternalResponse response = new InternalResponse();

		if (lffreteResponse.isInError()) 
		{
			response.setStatus(lffreteResponse.getStatus());
			response.addMessages(lffreteResponse.getMessageInfoList());
			return response;
		} 

		response = getLffreteDAC().deleteLffrete(lffreteRequest);

		if (response.isInError()) 
		{
			return response;
		}

		Lffrete lffrete = lffreteResponse.getFirstResult();
		lffreteRequest.setLffrete(lffrete);

		SearchParameter lffreteParameter = new SearchParameter(PropertyEnum.LFFRETE_ID, String.valueOf(lffrete.getId()));
		lffreteRequest.getSearchLight().addSearchParameter(lffreteParameter);

		InternalResultsResponse<Process> processResponse =  
				this.insertProcess(lffreteRequest, LCActionTypeEnum.DELETE_TAG, null);
		lffreteRequest.getSearchLight().getSearchParameters().remove(lffreteParameter);

		if (processResponse.isInError())  
		{
			response.setStatus(processResponse.getStatus());
			response.addMessages(processResponse.getMessageInfoList());
		} 

		return response;
	}  
   
	/*  
	 * (non-Javadoc) 
	 * @see com.sensus.mlc.lffrete.bcl.ILffreteBCL#updateLffrete(com.sensus.mlc.lffrete.model.request.LffreteRequest)
	 */ 
	@Override 
	public InternalResultsResponse<Lffrete> updateLffrete(LffreteRequest lffreteRequest)
	{ 
		InternalResultsResponse<Lffrete> response = getLffreteDAC().updateLffrete(lffreteRequest);

		if (!response.isInError()) 
		{ 
			InternalResponse processResponse = insertProcess(lffreteRequest, LCActionTypeEnum.UPDATE_GROUP, null);

			response.addMessages(processResponse.getMessageInfoList());
		}
		return response;

	} 

	/** 
	 * Insert process.
	 * 
	 * @param lffreteRequest the lffrete request 
	 * @param lcActionType the lc action type 
	 * @param processDescription the process description 
	 * @return the internal results response  
	 */ 
	private InternalResultsResponse<Process> insertProcess(LffreteRequest lffreteRequest, LCActionTypeEnum lcActionType,
			String processDescription) 
			{  
		return insertProcess(lffreteRequest, lcActionType, processDescription, null);
			}

	/** 
	 * Insert process. 
	 *  
	 * @param lffreteRequest the lffrete request 
	 * @param lcActionType the lc action type 
	 * @param processDescription the process description 
	 * @param deactivatedLights the deactivated lights   
	 * @return the internal results response 
	 */ 
	private InternalResultsResponse<Process> insertProcess(LffreteRequest lffreteRequest, LCActionTypeEnum lcActionType,
			String processDescription, List<Light> deactivatedLights)  
	{
		if(ValidationUtil.isNull(lffreteRequest.getLffrete()))
		{ 
			InternalResultsResponse<Process> response = new InternalResultsResponse<Process>();
			response.setStatus(Status.ExceptionError);
			return response;
		} 

		Lffrete lffrete = lffreteRequest.getLffrete();

		List<LCActionParameter> actionParameters = new ArrayList<LCActionParameter>();
		actionParameters.add(new LCActionParameter(PropertyEnum.EMPRESA_ID, String.valueOf(lffrete.getCodemp())));
   actionParameters.add(new LCActionParameter(PropertyEnum.EMPRESA_ID, lffrete.getCodemp().toString()));
   InquiryLightRequest lightRequest = createInquiryLightRequest(lffreteRequest);
   Integer lightAmount = 1;

		LCAction action = new LCAction(lcActionType);
		action.setActionParameters(actionParameters);
		Process process = LCHelp.generateProcess(false, action, lightAmount);
		process.setIsProcessComplete(true);
		process.setEndTime(LCDateUtil.getNewDateUTC());

		if (!ValidationUtil.isNullOrEmpty(processDescription)) 
		{
			process.setDescription(processDescription);
		} 

		ProcessRequest processRequest = createProcessRequest(lffreteRequest, process);
		processRequest.setProcessItemFailureList(  
				createProcessItemWithFailure(  
						deactivatedLights,   
						ProcessItemStatusEnum.MLCFAILURE,
						ProcessStatusReasonEnum.LIGHT_DEACTIVATED));

		return getProcessBCL().insertProcess(processRequest);
	} 
} 


 
 
