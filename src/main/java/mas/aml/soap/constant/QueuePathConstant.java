package mas.aml.soap.constant;

import java.util.Arrays;
import java.util.List;

/**
 * @author Precious Pearl A. Sano <pr3_cious_15@yahoo.com>
 *
 * 
 */
public class QueuePathConstant {

	public static final List<String> PUBS = Arrays.asList(
			"/mas/aml-check/v1/external/soap/command");
	
	public static final List<String> SUBS = Arrays.asList(
			"/mas/aml-check/v1/external/soap/command/reply");
}
