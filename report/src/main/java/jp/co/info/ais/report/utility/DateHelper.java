package jp.co.info.ais.report.utility;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateHelper {

	/** 日付フォーマット */
	static public final String DATE_PATTERN_1 ="yyyy/MM/dd";
	static public final String DATE_PATTERN_2 ="yyyy/MM/dd HH:mm:ss";
	static public final String DATE_PATTERN_3 ="yyyyMMddHHmmss";

	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ

	       Timestamp timestamp = new Timestamp(System.currentTimeMillis());
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	        String str = sdf.format(timestamp);
	        System.out.println(str);
	}

	public static String convertDateToStr(Timestamp timeDate) {

		String result = "";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        result = sdf.format(timeDate);

		return result;
	}

	public static String parseDateToString(Date date){
		String  str;
		if(date == null) {
			str = null;
		} else {
			str = new SimpleDateFormat(DATE_PATTERN_1).format(date);
		}
		return str;
	}

	public static String getRandomDate() {
		String result = "";

		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		result= sdf.format(timestamp);

		return result;
	}


}
