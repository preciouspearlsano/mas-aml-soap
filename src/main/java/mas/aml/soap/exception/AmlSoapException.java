package mas.aml.soap.exception;

import java.io.Serializable;
import java.util.Locale;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

import lombok.Data;
import lombok.EqualsAndHashCode;
import mas.aml.soap.config.i18nUtil;

/**
 * @author Precious Pearl A. Sano <pr3_cious_15@yahoo.com>
 *
 * 
 */
@EqualsAndHashCode(callSuper = true)
@Data
@ResponseStatus(code = HttpStatus.EXPECTATION_FAILED)
public class AmlSoapException extends RuntimeException implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HttpStatus error = HttpStatus.EXPECTATION_FAILED;
	private transient Object code;
	private transient Object payload;
	private transient PayloadMsg msg;

	/**
	 * 
	 */
	public AmlSoapException() {
		super();
	}

	public AmlSoapException(Throwable cause) {
		super(cause);
	}
	
	public <T> AmlSoapException(String key) {
		super(i18nUtil.getMessage(key,Locale.ENGLISH));
		this.msg = new PayloadMsg(key);
	}
	
	public <T> AmlSoapException(String key, Throwable cause) {
		super(i18nUtil.getMessage(key,Locale.ENGLISH),cause);
		this.msg = new PayloadMsg(key);
	}
	
	public <T> AmlSoapException(String key, Object[] args) {
		super(i18nUtil.getMessage(key,args,Locale.ENGLISH));
		this.msg = new PayloadMsg(key,args);
	}
}
