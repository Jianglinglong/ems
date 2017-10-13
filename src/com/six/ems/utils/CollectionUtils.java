package com.six.ems.utils;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.jdbc.util.compoent.LikeItem;


/**
 * 集合操作工具类
 * @author Direct
 *
 */
public class CollectionUtils {
	/**
	 * 判断一个Collection集合不能为空
	 * @param collection 传人collection类型参数
	 * @return boolean 返回判断结果
	 */
	public static boolean isNotBlank(Collection<?> collection) {
		return collection != null && collection.size() > 0 ;
	}

	public static Map<String,LikeItem> getCondition() {
		return new HashMap<String,LikeItem>();
	}

	public static String creatDataGritJson(Collection<?> collection) {
		Map<String, Collection<?>> map =new HashMap<>();
		map.put("rows", collection);
		return JSON.toJSONString(map);
	}
}
