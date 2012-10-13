package com.kimalu.util;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.codehaus.jackson.map.DeserializationConfig;

public class JsonUtil {
	
	private static ObjectMapper mapper;
	static{
		mapper=new ObjectMapper();
		 //设置输出时包含属性的风格
		setInclustionAlways();
        //设置输入时忽略在JSON字符串中存在但Java对象实际没有的属性
        mapper.configure(DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        //禁止使用int代表Enum的order()來反序列化Enum,非常危險
        mapper.configure(DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS, true);
	}
	
	
	 /**
     * 如果对象为Null, 返回"null".
     * 如果集合为空集合, 返回"[]".
     * @param object :
     * @return :
     * @throws Exception :
     */
	public static String  toJson(Object object) throws JsonGenerationException, JsonMappingException, IOException{
		return mapper.writeValueAsString(object);
	}
	
	
	
	 /**
     * 创建输出全部属性到Json字符串的Mapper.
     * @return :
     */
	public static void setInclustionAlways(){
		mapper.setSerializationInclusion(JsonSerialize.Inclusion.ALWAYS);
	}
	 /**
     * 创建只输出非空属性到Json字符串的Mapper.
     * @return :
     */
	public static void setInclustionNonNull(){
		mapper.setSerializationInclusion(JsonSerialize.Inclusion.NON_NULL);
	}
	 /**
     * 创建只输出初始值被改变的属性到Json字符串的Mapper.
     * @return :
     */
	public static void setInclustionNonDefault() {
		mapper.setSerializationInclusion(JsonSerialize.Inclusion.NON_DEFAULT);
	}
	 /**
     * 创建只输出非Null且非Empty(如List.isEmpty)的属性到Json字符串的Mapper.
     * @return :
     */
	public static void setInclustionNonEmpty() {
		mapper.setSerializationInclusion(JsonSerialize.Inclusion.NON_EMPTY);
	}

}
