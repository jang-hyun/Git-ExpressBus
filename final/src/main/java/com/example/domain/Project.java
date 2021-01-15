package com.example.domain;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Project {
	static SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	public final static int NORMAL = 3;
	public final static int UPGRADE = 2;
	public final static int PRIMIUM = 1;
	public final static int NOTICE = 0;
	public final static int SUGGEST = 1;
	public final static int QnA = 2;
	public final static int FREE = 3;
	public final static int TRADE = 4;
	public final static int REPORT = 5;
	public final static int UPDATE = 1;
	public final static int DELETE = 2;
	public final static String TODAY = new SimpleDateFormat("yyyy MM dd").format(new Date());
	public static String[] now = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date()).split("/");
	public static Map<String, Integer> sysDate = timeCheck(now);

	public static String dateFormat(Date date) {
		return sdf.format(date);
	}

	public static Map<String, Integer> timeCheck(String[] now) {
		Map<String, Integer> map = new HashMap<>();
		map.put("year", I(now[0]));
		map.put("month", I(now[1]));
		map.put("day", I(now[2].split(" ")[0]));
		String[] time = now[2].split(" ")[1].split(":");
		map.put("hour", I(time[0]));
		map.put("min", I(time[1]));
		return map;
	}

	public static int I(String n) {
		return Integer.parseInt(n);
	}

	public static boolean isPast(Map<String, Integer> map, String type) {
		if (sysDate.get("year") < map.get("year")) {
			return false;
		} else if (sysDate.get("year") > map.get("year")) {
			return true;
		} else {
			if (sysDate.get("month") < map.get("month")) {
				return false;
			} else if (sysDate.get("month") > map.get("month")) {
				return true;
			} else {
				if (sysDate.get("day") < map.get("day")) {
					return false;
				} else if (sysDate.get("day") > map.get("day")) {
					return true;
				} else {
					if (sysDate.get("hour") < map.get("hour")) {
						return false;
					} else if (sysDate.get("hour") > map.get("hour")) {
						return true;
					} else {
						if (type.equals("myPage") || type.equals("board")) {
							if (sysDate.get("min") < map.get("min")) {
								return false;
							} else {
								return true;
							}
						} else {
							if (sysDate.get("min") + 5 <= map.get("min")) {
								return false;
							} else {
								return true;
							}
						}
					}
				}
			}
		}
	}
}
