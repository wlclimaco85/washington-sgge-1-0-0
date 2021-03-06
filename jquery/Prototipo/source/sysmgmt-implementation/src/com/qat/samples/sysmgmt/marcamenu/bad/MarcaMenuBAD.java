package com.qat.samples.sysmgmt.marcamenu.bad;

import java.math.BigDecimal;
import java.util.Random;

/**
 * Delegate class for the Procedure BAC. Note this is a final class with ONLY static methods so everything must be
 * passed into the methods. Nothing injected.
 */
public final class MarcaMenuBAD
{

	private static Random PRICE = new Random();

	private MarcaMenuBAD()
	{
	}

	/**
	 * Calculate procedure price.
	 * 
	 * @param i the i
	 * 
	 * @return the big decimal
	 */
	public static BigDecimal calculatePrice(int i)
	{
		return BigDecimal.valueOf(PRICE.nextInt(i));
	}
}
