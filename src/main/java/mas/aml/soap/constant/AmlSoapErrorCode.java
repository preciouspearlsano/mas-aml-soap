package mas.aml.soap.constant;

/**
 * @author Precious Pearl A. Sano <pr3_cious_15@yahoo.com>
 *
 * 
 */
public enum AmlSoapErrorCode {

	EX_NO_RECORD("No record found"), 
	EX_INV_OWNER("Now owner of account");
	
	private final String message;
	
	private AmlSoapErrorCode() {
		this.message = "";
	}
	
	private AmlSoapErrorCode(String message) {
		this.message = message;
	}
	
	@SuppressWarnings("unused")
	private String getMessage() {
		return message;
	}
}
