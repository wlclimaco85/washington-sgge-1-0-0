package com.qat.samples.sysmgmt.unittest.dac.mybatis;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.Date;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.qat.framework.model.QATModel.PersistanceActionEnum;
import com.qat.framework.model.response.InternalResponse.Status;
import com.qat.framework.model.response.InternalResultsResponse;
import com.qat.samples.sysmgmt.model.request.FetchByIdRequest;
import com.qat.samples.sysmgmt.produto.dac.IUniMedDAC;
import com.qat.samples.sysmgmt.produto.model.UniMed;
import com.qat.samples.sysmgmt.produto.model.request.UniMedInquiryRequest;
import com.qat.samples.sysmgmt.util.CdStatusTypeEnum;

@ContextConfiguration(locations = {
		"classpath:com/qat/samples/sysmgmt/unittest/conf/unittest-datasource-txn-context.xml",
		"classpath:com/qat/samples/sysmgmt/unittest/conf/aoplogger-context.xml",
		"classpath:conf/web/conf/qat-sysmgmt-base-dac-context.xml"})
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = true)
@Transactional
@ActiveProfiles("postgres")
public class UniMedDACTest extends AbstractTransactionalJUnit4SpringContextTests
{

	private static final Logger LOG = LoggerFactory.getLogger(ClassificacaoDACTest.class);
	private IUniMedDAC unimedDAC; // injected by Spring through setter @resource

	// below

	public IUniMedDAC getUniMedDAC()
	{
		return unimedDAC;
	}

	@Resource
	public void setUniMedDAC(IUniMedDAC unimedDAC)
	{
		this.unimedDAC = unimedDAC;
	}

	@Test
	public void testupdateUniMed() throws Exception
	{

		UniMed funcionario = new UniMed();
		funcionario = insertUniMed(PersistanceActionEnum.INSERT);
		InternalResultsResponse<UniMed> response = new InternalResultsResponse<UniMed>();
		Integer a = getUniMedDAC().insertUniMed(funcionario, "", response);

		assertEquals(response.getStatus(), Status.OperationSuccess);
		funcionario = response.getFirstResult();
		funcionario.setModelAction(PersistanceActionEnum.UPDATE);
		funcionario.setId(response.getFirstResult().getId());
		response = new InternalResultsResponse<UniMed>();

		a = getUniMedDAC().updateUniMed(funcionario, response);
		assertEquals(response.getStatus(), Status.OperationSuccess);

	}

	@Test
	public void testinsertUniMed() throws Exception
	{

		UniMed funcionario = new UniMed();
		funcionario = insertUniMed(PersistanceActionEnum.INSERT);

		InternalResultsResponse<UniMed> response = new InternalResultsResponse<UniMed>();

		Integer a = getUniMedDAC().insertUniMed(funcionario, "INSERT", response);
		assertEquals(response.getStatus(), Status.OperationSuccess);

		funcionario = new UniMed();
		funcionario = insertUniMed(PersistanceActionEnum.INSERT);
		response = new InternalResultsResponse<UniMed>();

		a = getUniMedDAC().insertUniMed(funcionario, "", response);
		assertEquals(response.getStatus(), Status.OperationSuccess);
		// FetchByIdRequest request = new FetchByIdRequest();
		// request.setFetchId(response.getFirstResult().getId());
		InternalResultsResponse<UniMed> responseA = getUniMedDAC().fetchUniMedById(response.getFirstResult().getId());
		assertTrue(responseA.getResultsList().size() == 1);
		assertEquals(responseA.getStatus(), Status.OperationSuccess);

	}

	@Test
	public void testdeleteUniMed() throws Exception
	{

		UniMed funcionario = new UniMed();
		funcionario = insertUniMed(PersistanceActionEnum.INSERT);
		InternalResultsResponse<UniMed> response = new InternalResultsResponse<UniMed>();
		Integer a = getUniMedDAC().insertUniMed(funcionario, "", response);
		assertEquals(response.getStatus(), Status.OperationSuccess);
		funcionario = response.getFirstResult();
		response = new InternalResultsResponse<UniMed>();
		funcionario.setModelAction(PersistanceActionEnum.DELETE);
		Integer b = getUniMedDAC().deleteUniMed(funcionario, response);
		assertEquals(response.getStatus(), Status.OperationSuccess);
		// FetchByIdRequest request = new FetchByIdRequest();
		// request.setFetchId(response.getFirstResult().getId());
		InternalResultsResponse<UniMed> responseA =
				getUniMedDAC().fetchUniMedById(response.getFirstResult().getId());
		assertTrue(responseA.getResultsList().get(0).getStatusList().get(0).getStatus() == CdStatusTypeEnum.DELETADO);

	}

	@Test
	public void testfetchUniMedById() throws Exception
	{
		// check for valid and precount
		FetchByIdRequest request = new FetchByIdRequest();
		request.setFetchId(3);
		InternalResultsResponse<UniMed> response = getUniMedDAC().fetchUniMedById(1);
		assertTrue(response.getResultsSetInfo().getPageSize() == 1);
		assertEquals(response.getStatus(), Status.OperationSuccess);
	}

	@Test
	public void testfetchUniMedById2() throws Exception
	{
		// check for valid and precount
		FetchByIdRequest request = new FetchByIdRequest();
		request.setFetchId(3);
		InternalResultsResponse<UniMed> response = getUniMedDAC().fetchUniMedById(1);
		assertTrue(response.getResultsSetInfo().getPageSize() == 1);
		assertEquals(response.getStatus(), Status.OperationSuccess);
	}

	@Test
	public void testfetchUniMedByRequest() throws Exception
	{
		// check for valid and precount
		UniMedInquiryRequest request = new UniMedInquiryRequest();
		request.setPreQueryCount(true);
		request.setStartPage(0);
		request.setPageSize(4);
		InternalResultsResponse<UniMed> response = getUniMedDAC().fetchUniMedByRequest(request);
		assertTrue(response.getResultsSetInfo().getPageSize() == 4);
		assertTrue(response.getResultsSetInfo().getTotalRowsAvailable() > 0);
	}

	public UniMed insertUniMed(PersistanceActionEnum action)
	{
		UniMed exame = new UniMed();
		Date a = new Date();
		exame.setId(1);
		exame.setModelAction(action);
		// exame.setNome("Nome");
		// exame.setDataUniMed((int)a.getTime());
		// exame.setMedicoResponsavel("Resposnsavel");
		// exame.setLaboratorio("Laboratorio");

		return exame;
	}

	@Before
	public void setup()
	{
		executeSqlScript("com/qat/samples/sysmgmt/unittest/conf/insertBanco.sql", false);
	}
}
