package com.qat.samples.sysmgmt.produto.model;

import com.qat.framework.model.IIntegerEnum;

public enum CadastroTypeEnum implements IIntegerEnum
{
	MARCA(1), MENU(2), SUBMENU(3), TRIMENU(4), UNIMED(5);

	/** The code. */
	private Integer code;

	/**
	 * Instantiates a new contact purpose enum.
	 * 
	 * @param value the value
	 */
	private CadastroTypeEnum(int value)
	{
		code = value;
	}

	@Override
	public Integer getValue()
	{
		return code;
	}

	/**
	 * This static method is used to convert an internal value into the enum. This is useful when a value from an
	 * external source such as a database needs to be converted to an enum.
	 * 
	 * @param value
	 * @return
	 */
	public static CadastroTypeEnum enumForValue(Integer value)
	{
		for (CadastroTypeEnum e : values())
		{
			if (e.getValue().equals(value))
			{
				return e;
			}
		}

		return null;
	}

	/**
	 * Gets the valid values.
	 * 
	 * @return the valid values
	 */
	public static String getValidValues()
	{
		CadastroTypeEnum[] enums = CadastroTypeEnum.class.getEnumConstants();

		String comma = "";
		StringBuilder sb = new StringBuilder();
		for (CadastroTypeEnum i : enums)
		{
			sb.append(comma + i.getValue());
			comma = ", ";
		}
		return sb.toString();
	}
}
