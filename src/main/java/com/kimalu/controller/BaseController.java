package com.kimalu.controller;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;

import com.kimalu.util.JsonUtil;
public class BaseController {
	protected String toJson(Object object) throws JsonGenerationException, JsonMappingException, IOException {
		return JsonUtil.toJson(object);
	}
}
