package mas.aml.soap.services;

import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.slf4j.Slf4j;
import mas.aml.soap.constant.AmlSoapErrorCode;
import mas.aml.soap.constant.Constant;
import mas.aml.soap.exception.AmlSoapException;
import mas.aml.soap.mapper.AmlSoapMapper;
import mas.aml.soap.model.CustomerFormReply;
import mas.aml.soap.model.GetCustomerFormCommandRequest;
import mas.aml.soap.model.GetRequestSuccessResponse;
import mas.aml.soap.model.Hits;
import mas.aml.soap.model.Input;
import mas.aml.soap.model.Outbox;
import mas.aml.soap.model.ScreeningResult;
import mas.aml.soap.utils.DateUtils;
import mas.aml.soap.utils.RandomStringGenerator;

@Slf4j
@Service
public class AmlSoapService {

	@Autowired
	private AmlSoapMapper amlMapper;
	
	public static final ObjectMapper mapper = new ObjectMapper();
	
	
	public static void main(String[] args) throws JsonProcessingException {
		var commandForm = new GetCustomerFormCommandRequest();
		commandForm.setIndividualTag("Y");
		commandForm.setFirstNameEn("Chrizzy");
		commandForm.setMiddleNameEn("Poqui");
		commandForm.setLastNameEn("Loco");
		commandForm.setDateOfBirth("2001-03-17");
		commandForm.setPlaceOfBirth("PH");
		commandForm.setNationality("Filipino");
		commandForm.setContactNo("090101010101");
		commandForm.setGender("F");
		commandForm.setIdentificationType("sss");
		commandForm.setIdentificationNo("112313213");
		
		commandForm.setResAddrRoom("1");
		commandForm.setResAddrFloor("1");
		commandForm.setResAddrBlock("28");
		commandForm.setResAddrLot("3");
		commandForm.setResAddrBuildingName("");
		commandForm.setResAddrStreet("PUD Site");
		commandForm.setResAddrVillage("Escopa");
		commandForm.setResAddrHousingProject("Project 4");
		commandForm.setResAddrDistrict("2");
		commandForm.setResAddrCity("QC");
		commandForm.setResAddrCountryCode("PH");
		
		
		commandForm.setCountryCodeIncorporation("PH");
		commandForm.setCountryCodeOperation("PH");
		commandForm.setAuthorizedSigners("Y");
		commandForm.setLegal("Y");
		commandForm.setManagement("Y");
		commandForm.setOwner("Y");
		commandForm.setRegulatory("Y");
		
		commandForm.setIndividualSourceIncome("STAFF");
		commandForm.setNatureOfCompany("IT Industry");
		commandForm.setClientId(UUID.randomUUID().toString());
		commandForm.setClientAcctId(UUID.randomUUID().toString());
		commandForm.setClientType(Constant.PERSON);
		
		System.out.println("   .template print " + mapper.writerWithDefaultPrettyPrinter().writeValueAsString(commandForm));
	}
	
	/**
	 * @param command
	 * @return
	 */
	@Transactional
	public GetRequestSuccessResponse insertCommand(GetCustomerFormCommandRequest command, String commandPath, String replyPath) throws AmlSoapException {
		
		log.info("   .insertCommand method service ");
		var globalDate = DateUtils.getDate();
		var cmd = new Outbox();
		cmd.setId(UUID.randomUUID().toString());
		cmd.setEventType(Constant.EVENT_TYPE_COMMAND);
		cmd.setCommandId(UUID.randomUUID().toString());
		cmd.setCommandPath(commandPath);
		cmd.setData(formToString(command));
		cmd.setReplyId(UUID.randomUUID().toString()); 
		cmd.setReplyPath(replyPath);
		cmd.setRequestId(command.getClientId());
		cmd.setCreationDate(globalDate);
		
		//TODO getScreeningResultReply validation calculation
		
		var rpy = new Outbox();
		rpy.setId(UUID.randomUUID().toString());
		rpy.setEventType(Constant.EVENT_TYPE_REPLY);
		rpy.setCommandId(cmd.getCommandId());
		rpy.setCommandPath(commandPath);
		rpy.setData(formToString(getScreeningResultReply(command,DateUtils.getParse(globalDate))));
		rpy.setReplyId(UUID.randomUUID().toString()); 
		rpy.setReplyPath(replyPath);
		rpy.setRequestId(command.getClientId());
		rpy.setCreationDate(globalDate);
		
		cmd.setReplyId(rpy.getReplyId());
		
		amlMapper.insertCommandAndReply(cmd);
		amlMapper.insertCommandAndReply(rpy);
		
		var response = new GetRequestSuccessResponse();
		response.setCommandId(cmd.getCommandId());
		response.setSuccess(true);
		System.err.println("   .response " + response.toString());
		return response;
	}
	
	
	/**
	 * @param command
	 * @return
	 */
	private CustomerFormReply getScreeningResultReply(GetCustomerFormCommandRequest command, Date date) {
		var reply = new CustomerFormReply();
		var result = new ScreeningResult();
		result.setId(UUID.randomUUID().toString());
		result.setCustomerNo(RandomStringGenerator.generate());
		
		var input = new Input();
		input.setEntityType(command.getClientType());
		input.setStatus(Constant.OPEN);
		input.setHitsTotal(1.53);
		input.setStatus(Constant.LOW);
		result.setInput(input);
		
		var hits = new Hits();
		hits.setScore(44.0);
		hits.setRiskLevel(Constant.LOW);
		hits.setCreated(date);
		result.setHits(hits);
		
		reply.setScreeningResult(result);
		return reply;
	}


	private String formToString(Object object) {
		try {
			return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(object);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return "error read.";
	}


	/**
	 * @param command
	 * @return
	 */
	public CustomerFormReply getReplyByCommandId(String commandId) throws AmlSoapException {
		var outbox = amlMapper.getReplyByCommandId(commandId);
		CustomerFormReply reply = null;
		try {
			reply = mapper.readValue(outbox.getData(), CustomerFormReply.class);
		} catch (JsonMappingException e) {
			log.warn("Outdated CustomerFormReply cause of error.");
		} catch (JsonProcessingException e) {
			log.warn("Outdated CustomerFormReply cause of error.");
		}
		
		if (reply == null) {
			throw new AmlSoapException(AmlSoapErrorCode.EX_NO_RECORD.name());
		}
		return reply;
	}


}
