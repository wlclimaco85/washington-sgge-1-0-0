
function titleize(text) {

	if((text !== " ") && (text !== "") && (text !== undefined) ){
    // Convertendo primeira letra em maiuscula.
    text = text.charAt(0).toUpperCase() + text.slice(1);

    for (var i = 0; i < text.length; i++) {
        if (text.charAt(i) ===" ") {

            // Convertendo letra ap�s o ESPA�O em maiuscula
            var charToUper = text.charAt(i+1).toUpperCase();

            // Colocando texto de antes do ESPA�O na vari�vel
            var sliceBegin = text.slice(0, (i+1));

            // colocando o texto de depois do ESPA�O na vari�vel
            var sliceEnd = text.slice(i + 2);

            // Juntando tudo
            text = sliceBegin + charToUper + sliceEnd;

        } else {

            // NAO CONSIGO PENSAR EM COMO TRANSFORMAR O RESTANTE DAS LETRAS EM MINUSCULA
        }   
    }
	}
    return text;
}

ControllerTest = function (teste,bar){

	var text = "";
	
	
text = text + '\n';	
text = text + '\n';	
text = text + 'package com.qat.samples.sysmgmt.controller;\n';
text = text + '\n';
text = text + 'import static org.hamcrest.Matchers.containsString;\n';
text = text + 'import static org.hamcrest.Matchers.hasSize;\n';
text = text + 'import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;\n';
text = text + 'import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;\n';
text = text + 'import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;\n';
text = text + 'import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;\n';
text = text + 'import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;\n';
text = text + 'import static org.springframework.test.web.servlet.setup.MockMvcBuilders.webAppContextSetup;\n';
text = text + '\n';
text = text + 'import java.util.ArrayList;\n';
text = text + 'import java.util.List;\n';
text = text + '\n';
text = text + 'import javax.annotation.Resource;\n';
text = text + '\n';
text = text + 'import org.apache.commons.codec.binary.Base64;\n';
text = text + 'import org.junit.Before;\n';
text = text + 'import org.junit.Test;\n';
text = text + 'import org.mockito.Matchers;\n';
text = text + 'import org.mockito.Mockito;\n';
text = text + 'import org.springframework.beans.factory.annotation.Autowired;\n';
text = text + 'import org.springframework.http.MediaType;\n';
text = text + 'import org.springframework.security.web.FilterChainProxy;\n';
text = text + 'import org.springframework.test.context.ContextConfiguration;\n';
text = text + 'import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;\n';
text = text + 'import org.springframework.test.context.web.WebAppConfiguration;\n';
text = text + 'import org.springframework.test.web.servlet.MockMvc;\n';
text = text + 'import org.springframework.web.context.WebApplicationContext;\n';
text = text + '\n';
text = text + 'import com.qat.framework.model.response.InternalResultsResponse;\n';
text = text + 'import com.qat.samples.sysmgmt.bac.I'+titleize(bar)+'BAC;\n';
text = text + 'import com.qat.samples.sysmgmt.model.'+titleize(bar)+';\n';
text = text + 'import com.qat.samples.sysmgmt.model.request.'+titleize(bar)+'MaintenanceRequest;\n';
text = text + 'import com.qat.samples.sysmgmt.model.request.PagedInquiryRequest;\n';
text = text + 'import com.qat.samples.sysmgmt.model.request.RefreshRequest;\n';
text = text + '\n';
text = text + '@WebAppConfiguration\n';
text = text + '@ContextConfiguration(locations = {"classpath:conf/'+nomeM.toLowerCase()+'apicontrollertest-context.xml",\n';
text = text + '		"classpath:conf/qat-sysmgmt-controller-security-context.xml",\n';
text = text + '		"classpath:conf/unittest-base-context.xml"})\n';
text = text + 'public class '+titleize(bar)+'APIControllerTest extends AbstractJUnit4SpringContextTests\n';
text = text + '{\n';
text = text + '	@Resource\n';
text = text + '	private FilterChainProxy springSecurityFilterChain;\n';
text = text + '\n';
text = text + '	private String basicDigestHeaderValue = "Basic " + new String(Base64.encodeBase64(("rod:koala").getBytes()));\n';
text = text + '\n';
text = text + '	private String emptyData = "{}";\n';
text = text + '\n';
text = text + '	private String badData = "{\"userContext\"}";\n';
text = text + '\n';
text = text + '	private String fetchPagedData =\n';
text = text + '			"{\"pageSize\":20,\"startPage\":0,\"sortExpressions\":null,\"preQueryCount\":true,\"maxPreQueryCount\":0}";\n';
text = text + '\n';
text = text + '	private MockMvc mockMvc;\n';
text = text + '	private I'+titleize(bar)+'BAC '+bar.toLowerCase()+'BAC;\n';

for(i=0;i < teste.length;i++){
	

var nome = teste[i].classe.toLowerCase();
nomeM = titleize(nome);
text = text + "\n";
text = text + '///===================================### '+nomeM.toUpperCase()+' ####======================================\n';
text = text + '\n';
text = text + '\n';
text = text + 'private String '+nomeM.toLowerCase()+'MaintenanceData =\n';
text = text + '			"{\"'+nomeM.toLowerCase()+'\": {\"id\": 123, \"description\": \"asdsdasdsads\"}, \"returnList\": true, \"returnListPaged\": true}";\n';
text = text + '\n';
text = text + '	private String bad'+titleize(bar)+'MaintenanceData =\n';
text = text + '			"{\"'+nomeM.toLowerCase()+'\": {\"id\": , \"description\": \"asdsdasdsads\"}, \"returnList\": true, \"returnListPaged\": true}";\n';
text = text + '\n';
}
text = text + '\n';
text = text + '\n';
text = text + '@Autowired\n';
text = text + 'protected WebApplicationContext wac;\n';
text = text + '\n';
text = text + 'public I'+titleize(bar)+'BAC getMock'+titleize(bar)+'BAC()\n';
text = text + '{\n';
text = text + '	return '+nomeM.toLowerCase()+'BAC;\n';
text = text + '}\n';
text = text + '\n';
text = text + '@Resource\n';
text = text + 'public void setMock'+titleize(bar)+'BAC(I'+titleize(bar)+'BAC mockBAC)\n';
text = text + '{\n';
text = text + '	'+nomeM.toLowerCase()+'BAC = mockBAC;\n';
text = text + '}\n';
text = text + '\n';
text = text + '@Before\n';
text = text + 'public void setup() throws Exception\n';
text = text + '{\n';
text = text + '	mockMvc = webAppContextSetup(wac)\n';
text = text + '			.addFilter(springSecurityFilterChain)\n';
text = text + '			.build();\n';
text = text + '}\n';
text = text + '\n';
text = text + 'private InternalResultsResponse<'+titleize(bar)+'> createFetchResponse()\n';
text = text + '{\n';
text = text + '	InternalResultsResponse<'+titleize(bar)+'> response = new InternalResultsResponse<'+titleize(bar)+'>();\n';
text = text + '	List<'+titleize(bar)+'> list = new ArrayList<>();\n';
text = text + '	list.add(new '+titleize(bar)+'(1, "'+nomeM.toLowerCase()+'1desc"));\n';
text = text + '	list.add(new '+titleize(bar)+'(2, "'+nomeM.toLowerCase()+'2desc"));\n';
text = text + '	response.addResults(list);\n';
text = text + '	return response;\n';
text = text + '}\n';
text = text + '\n';


for(i=0;i < teste.length;i++){

var nome = teste[i].classe.toLowerCase();
nomeM = titleize(nome)
text = text + "\n";
text = text + '//===================================### '+nomeM.toUpperCase()+' ####======================================\n';
text = text + '@Test\n';
text = text + 'public void fetch'+nomeM+'sPaged() throws Exception\n';
text = text + '{\n';
text = text + '	Mockito.when(getMock'+titleize(bar)+'BAC().fetch'+nomeM+'sByRequest(Matchers.any(PagedInquiryRequest.class))).thenReturn(\n';
text = text + '			createFetchResponse());\n';
text = text + '	// Good Data & good test\n';
text = text + '	mockMvc.perform(\n';
text = text + '			post("/'+nomeM.toLowerCase()+'/api/fetchPage").contentType(MediaType.APPLICATION_JSON)\n';
text = text + '			.content(fetchPagedData.getBytes())\n';
text = text + '			.header("Authorization", basicDigestHeaderValue))\n';
text = text + '			.andExpect(status().isOk())\n';
text = text + '			.andExpect(jsonPath("$.counties", hasSize(2)))\n';
text = text + '			.andExpect(jsonPath("$.counties[0].description", containsString("'+nomeM.toLowerCase()+'1desc")))\n';
text = text + '			.andDo(print());\n';
text = text + "\n";
text = text + '	// Bad Data & invalid request due to bad data\n';
text = text + '	mockMvc.perform(\n';
text = text + '			post("/'+nomeM.toLowerCase()+'/api/fetchPage").contentType(MediaType.APPLICATION_JSON).content(badData.getBytes())\n';
text = text + '			.header("Authorization", basicDigestHeaderValue))\n';
text = text + '			// 400 Error\n';
text = text + '			.andExpect(status().is4xxClientError())\n';
text = text + '			.andDo(print());\n';
text = text + "\n";
text = text + '	// No Data & invalid request due to unsupported media type\n';
text = text + '	mockMvc.perform(post("/'+nomeM.toLowerCase()+'/api/fetchPage").header("Authorization", basicDigestHeaderValue))\n';
text = text + '			// 415 Error\n';
text = text + '			.andExpect(status().is4xxClientError())\n';
text = text + '			.andDo(print());\n';
text = text + "\n";
text = text + '	// Bad Data, Missing Security & invalid request due to bad security\n';
text = text + '	mockMvc.perform(\n';
text = text + '			post("/'+nomeM.toLowerCase()+'/api/fetchPage").contentType(MediaType.APPLICATION_JSON).content(badData.getBytes()))\n';
text = text + '			// 30X error\n';
text = text + '			.andExpect(status().is3xxRedirection())\n';
text = text + '			.andDo(print());\n';
text = text + "\n";
text = text + '	// ensures the method on the mock was called 1 time.\n';
text = text + '	Mockito.verify(getMock'+titleize(bar)+'BAC()).fetch'+nomeM+'sByRequest(Matchers.any(PagedInquiryRequest.class));\n';
text = text + '}\n';
text = text + "\n";
text = text + '@Test\n';
text = text + 'public void insert'+nomeM+'() throws Exception\n';
text = text + '{\n';
text = text + "\n";
text = text + '	Mockito.when(getMock'+titleize(bar)+'BAC().insert'+nomeM+'(Matchers.any('+nomeM+'MaintenanceRequest.class))).thenReturn(\n';
text = text + '			createFetchResponse());\n';
text = text + '	// Good Data & good test\n';
text = text + '	mockMvc.perform(\n';
text = text + '			post("/'+nomeM.toLowerCase()+'/api/insert").contentType(MediaType.APPLICATION_JSON)\n';
text = text + '			.content('+nomeM.toLowerCase()+'MaintenanceData.getBytes())\n';
text = text + '			.header("Authorization", basicDigestHeaderValue))\n';
text = text + '			.andExpect(status().isOk())\n';
text = text + '			.andExpect(jsonPath("$.counties", hasSize(2)))\n';
text = text + '			.andExpect(jsonPath("$.counties[0].description", containsString("'+nomeM.toLowerCase()+'1desc")))\n';
text = text + '			.andDo(print());\n';
text = text + "\n";
text = text + '	// Bad Data & good test\n';
text = text + '	mockMvc.perform(\n';
text = text + '			post("/'+nomeM.toLowerCase()+'/api/insert").contentType(MediaType.APPLICATION_JSON)\n';
text = text + '			.content(bad'+nomeM+'MaintenanceData.getBytes())\n';
text = text + '			.header("Authorization", basicDigestHeaderValue))\n';
text = text + '			.andExpect(status().is4xxClientError())\n';
text = text + '			.andDo(print());\n';
text = text + "\n";
text = text + '	// ensures the method on the mock was called 1 time.\n';
text = text + '	Mockito.verify(getMock'+titleize(bar)+'BAC()).insert'+nomeM+'(Matchers.any('+nomeM+'MaintenanceRequest.class));\n';
text = text + '}\n';
text = text + "\n";
text = text + '@Test\n';
text = text + 'public void update'+nomeM+'() throws Exception\n';
text = text + '{\n';
text = text + "\n";
text = text + '	Mockito.when(getMock'+titleize(bar)+'BAC().update'+nomeM+'(Matchers.any('+nomeM+'MaintenanceRequest.class))).thenReturn(\n';
text = text + '			createFetchResponse());\n';
text = text + '	// Good Data & good test\n';
text = text + '	mockMvc.perform(\n';
text = text + '			post("/'+nomeM.toLowerCase()+'/api/update").contentType(MediaType.APPLICATION_JSON)\n';
text = text + '			.content('+nomeM.toLowerCase()+'MaintenanceData.getBytes())\n';
text = text + '			.header("Authorization", basicDigestHeaderValue))\n';
text = text + '			.andExpect(status().isOk())\n';
text = text + '			.andExpect(jsonPath("$.counties", hasSize(2)))\n';
text = text + '			.andExpect(jsonPath("$.counties[0].description", containsString("'+nomeM.toLowerCase()+'1desc")))\n';
text = text + '			.andDo(print());\n';
text = text + "\n";
text = text + '	// Bad Data & good test\n';
text = text + '	mockMvc.perform(\n';
text = text + '			post("/'+nomeM.toLowerCase()+'/api/update").contentType(MediaType.APPLICATION_JSON)\n';
text = text + '			.content(bad'+nomeM+'MaintenanceData.getBytes())\n';
text = text + '			.header("Authorization", basicDigestHeaderValue))\n';
text = text + '			.andExpect(status().is4xxClientError())\n';
text = text + '			.andDo(print());\n';
text = text + "\n";
text = text + '	// ensures the method on the mock was called 1 time.\n';
text = text + '	Mockito.verify(getMock'+titleize(bar)+'BAC()).update'+nomeM+'(Matchers.any('+nomeM+'MaintenanceRequest.class));\n';
text = text + '}\n';
text = text + "\n";
text = text + '@Test\n';
text = text + 'public void delete'+nomeM+'() throws Exception\n';
text = text + '{\n';
text = text + "\n";
text = text + '	Mockito.when(getMock'+titleize(bar)+'BAC().delete'+nomeM+'(Matchers.any('+nomeM+'MaintenanceRequest.class))).thenReturn(\n';
text = text + '			createFetchResponse());\n';
text = text + '	// Good Data & good test\n';
text = text + '	mockMvc.perform(\n';
text = text + '			get("/'+nomeM.toLowerCase()+'/api/delete").param("'+nomeM.toLowerCase()+'Id", "1").param("retList", "true").param("retPaged", "true")\n';
text = text + '			.header("Authorization", basicDigestHeaderValue))\n';
text = text + '			.andExpect(status().isOk())\n';
text = text + '			.andExpect(jsonPath("$.counties", hasSize(2)))\n';
text = text + '			.andExpect(jsonPath("$.counties[0].description", containsString("'+nomeM.toLowerCase()+'1desc")))\n';
text = text + '			.andDo(print());\n';
text = text + "\n";
text = text + '	// Bad Data & good test\n';
text = text + '	mockMvc.perform(\n';
text = text + '			get("/'+nomeM.toLowerCase()+'/api/delete").param("'+nomeM.toLowerCase()+'Id2", "1").param("retList", "true").param("retPaged", "true")\n';
text = text + '			.header("Authorization", basicDigestHeaderValue))\n';
text = text + '			.andExpect(status().is4xxClientError())\n';
text = text + '			.andDo(print());\n';
text = text + "\n";
text = text + '	// ensures the method on the mock was called 1 time.\n';
text = text + '	Mockito.verify(getMock'+titleize(bar)+'BAC()).delete'+nomeM+'(Matchers.any('+nomeM+'MaintenanceRequest.class));\n';
text = text + '}\n';
text = text + "\n";
}
text = text + "}\n";
return text;
}
