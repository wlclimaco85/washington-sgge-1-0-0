package com.sensus.mlc.analytics.validation;

import static com.sensus.common.validation.ValidationUtil.isNull;

import java.util.List;

import com.sensus.common.model.MessageInfo;
import com.sensus.common.validation.IValidator;
import com.sensus.common.validation.ValidationContext;
import com.sensus.common.validation.ValidationUtil;
import com.sensus.mlc.analytics.model.AnalyticsDateTypeEnum;
import com.sensus.mlc.analytics.model.AnalyticsTypeEnum;
import com.sensus.mlc.base.model.MLCPersistanceActionEnum;
import com.sensus.mlc.smartpoint.model.StatusExceptionTypeEnum;

/**
 * The Class AnalyticsTypeValidator.
 */
public class AnalyticsTypeValidator implements IValidator
{

	/** The Constant SENSUS_MLC_ANALYTICS_VALIDATOR_ANALYTICS_TYPE_REQUIRED. */
	private static final String SENSUS_MLC_ANALYTICS_VALIDATOR_ANALYTICS_TYPE_REQUIRED =
			"sensus.mlc.analytics.validator.analytics.type.required";

	/** The Constant SENSUS_MLC_ANALYTICS_VALIDATOR_ANALYTICS_DATE_TYPE_REQUIRED. */
	private static final String SENSUS_MLC_ANALYTICS_VALIDATOR_ANALYTICS_DATE_TYPE_REQUIRED =
			"sensus.mlc.analytics.validator.analytics.date.type.required";

	/** The Constant SENSUS_MLC_ANALYTICS_VALIDATOR_STATUS_EXCEPTION_TYPE_REQUIRED. */
	private static final String SENSUS_MLC_ANALYTICS_VALIDATOR_STATUS_EXCEPTION_TYPE_REQUIRED =
			"sensus.mlc.analytics.validator.status.exception.type.required";

	/*
	 * (non-Javadoc)
	 * @see com.sensus.common.validation.IValidator#validate(com.sensus.common.validation.ValidationContext)
	 */
	@Override
	public void validate(ValidationContext context)
	{
		MLCPersistanceActionEnum action =
				(MLCPersistanceActionEnum)context.getValidationArguments().get(
						MLCPersistanceActionEnum.getSlcActionName());

		if (isNull(action))
		{
			return;
		}

		List<MessageInfo> list = context.getMessages();
		AnalyticsTypeEnum analyticsTypeEnum =
				(AnalyticsTypeEnum)context.getObjectToBeValidated(AnalyticsTypeEnum.class.getSimpleName());
		AnalyticsDateTypeEnum analyticsDateTypeEnum =
				(AnalyticsDateTypeEnum)context.getObjectToBeValidated(AnalyticsDateTypeEnum.class.getSimpleName());
		StatusExceptionTypeEnum statusExceptionTypeEnum =
				(StatusExceptionTypeEnum)context.getObjectToBeValidated(StatusExceptionTypeEnum.class.getSimpleName());

		switch (action)
		{
			case FETCH_ANALYTICS_BY_GROUP:
			case FETCH_ANALYTICS_BY_DATE:
				validateAnalyticsTypeEnum(list, analyticsTypeEnum);
				validateAnalyticsDateTypeEnum(list, analyticsDateTypeEnum);
				return;

			case FETCH_ANALYTICS_BY_STATUS_ID:
				validatStatusExceptionType(list, statusExceptionTypeEnum);
				return;

			case GENERATE_FILE_CSV:
				validateAnalyticsTypeEnum(list, analyticsTypeEnum);
				return;

			default:
				return;
		}

	}

	/**
	 * Validate analytics type enum.
	 * 
	 * @param list the list
	 * @param analyticsTypeEnum the analytics type enum
	 */
	private void validateAnalyticsTypeEnum(List<MessageInfo> list, AnalyticsTypeEnum analyticsTypeEnum)
	{
		ValidationUtil.isNull(analyticsTypeEnum, SENSUS_MLC_ANALYTICS_VALIDATOR_ANALYTICS_TYPE_REQUIRED,
				list);
	}

	/**
	 * Validate analytics date type.
	 * 
	 * @param list the list
	 * @param analyticsDateTypeEnum the date type enum
	 */
	private void validateAnalyticsDateTypeEnum(List<MessageInfo> list, AnalyticsDateTypeEnum analyticsDateTypeEnum)
	{
		ValidationUtil.isNull(analyticsDateTypeEnum, SENSUS_MLC_ANALYTICS_VALIDATOR_ANALYTICS_DATE_TYPE_REQUIRED,
				list);
	}

	/**
	 * Validate status exception type.
	 * 
	 * @param list the list
	 * @param statusExceptionTypeEnum the status exception type enum
	 */
	private void validatStatusExceptionType(List<MessageInfo> list, StatusExceptionTypeEnum statusExceptionTypeEnum)
	{
		ValidationUtil.isNull(statusExceptionTypeEnum, SENSUS_MLC_ANALYTICS_VALIDATOR_STATUS_EXCEPTION_TYPE_REQUIRED,
				list);
	}

}
