package mas.aml.soap.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;

import lombok.extern.slf4j.Slf4j;

/**
 * @author Precious Pearl A. Sano <pr3_cious_15@yahoo.com>
 *
 * 
 */
@Slf4j
public class DateUtils {
	public static DateTimeFormatter DOMAIN_DEFAULT_DATE = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSSSSS", Locale.ENGLISH);
	public static SimpleDateFormat DOMAIN_DEFAULT_DATE_PARSE = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSSSSS", Locale.ENGLISH);
	
	public static String getDate() {
		LocalDateTime ldt = LocalDateTime.now().plusDays(1);
		String formatter = DOMAIN_DEFAULT_DATE.format(ldt);
		return formatter;
	}

	/**
	 * @param globalDate
	 * @return
	 */
	public static Date getParse(String globalDate) {
		try {
			return DOMAIN_DEFAULT_DATE_PARSE.parse(globalDate);
		} catch (ParseException e) {
			e.printStackTrace();
			log.warn("DOMAIN_DEFAULT_DATE_PARSE error.");
		}
		return new Date();
	}
}
