package mas.aml.soap.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import mas.aml.soap.model.Outbox;


/**
 * @author Precious Pearl A. Sano <pr3_cious_15@yahoo.com>
 *
 * 
 */
@Mapper
public interface AmlSoapMapper {

	/**
	 * @param command
	 */
	void insertCommandAndReply(Outbox command);

	/**
	 * @param commandId
	 */
	Outbox getReplyByCommandId(@Param("commandId") String commandId);
	
}	
