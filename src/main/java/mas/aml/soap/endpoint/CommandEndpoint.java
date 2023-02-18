package mas.aml.soap.endpoint;


import javax.xml.bind.JAXBElement;
import javax.xml.namespace.QName;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

import lombok.extern.slf4j.Slf4j;
import mas.aml.soap.model.GetCustomerFormCommandRequest;
import mas.aml.soap.model.GetRequestSuccessResponse;
import mas.aml.soap.services.AmlSoapService;



/**
 * @author Precious Pearl A. Sano <pr3_cious_15@yahoo.com>
 *
 * 
 */
@Endpoint
@Slf4j
public class CommandEndpoint {

	
	private static final String NAMESPACE_URI = "http://mas/aml/soap/model";
	
	@Autowired
	private AmlSoapService service;
	
	@PayloadRoot(namespace = NAMESPACE_URI, localPart="getCustomerFormCommandRequest")
	@ResponsePayload
	@Transactional
	public JAXBElement<GetRequestSuccessResponse> insertCommand(@RequestPayload JAXBElement<GetCustomerFormCommandRequest> command){
		log.info("   .HERE insertCommand");
		log.info("   .HERE command value " + command.getValue());
		log.info("   .HERE command indiv " + command.getValue().getIndividualTag());
		var commandPath = "/mas/aml-check/v1/external/rest/command";
		var replyPath = "/mas/aml-check/v1/external/rest/command/reply";
		return createJaxbElement(service.insertCommand(command.getValue(),commandPath,replyPath), GetRequestSuccessResponse.class);
		//return createJaxbElement(new getRequestSuccessResponse(), getRequestSuccessResponse.class);
	}

	private <T> JAXBElement<T> createJaxbElement(T object, Class<T> clazz) {
		return new JAXBElement<>(new QName(clazz.getSimpleName()), clazz, object);
	}
}
