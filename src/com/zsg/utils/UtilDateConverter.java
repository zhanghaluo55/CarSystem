package com.zsg.utils;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;
import org.apache.taglibs.standard.extra.spath.ParseException;

public class UtilDateConverter extends StrutsTypeConverter{
	private static final String PATTERN="yyyy年MM月dd日";
	@Override
	public Object convertFromString(Map context, String[] values, Class toClass) {
		String dateString=values[0];
		SimpleDateFormat sdf=new SimpleDateFormat(PATTERN);
		 Date date=null;
			try {
				date=sdf.parse(dateString);
			} catch (java.text.ParseException e) {
				
				e.printStackTrace();
			}
		return date;
	}

	@Override
	public String convertToString(Map context, Object o) {
		Date date=(Date)o;
		return new SimpleDateFormat("yyyy年MM月dd日").format(date);
	}

}
