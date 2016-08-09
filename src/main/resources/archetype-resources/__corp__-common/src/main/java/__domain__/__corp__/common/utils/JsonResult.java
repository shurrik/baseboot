package ${groupId}.common.utils;

import java.util.HashMap;
import java.util.Map;

import org.codehaus.plexus.util.StringUtils;

import net.sf.json.JSONObject;

public class JsonResult {
	//保存成功
	public final static JsonResult SAVE_SUCCESS;
	//保存成功关闭
	public final static JsonResult SAVE_SUCCESS_CLOSE;
	//删除成功
	public final static JsonResult DELETE_SUCCESS;
	
	static{
		
		SAVE_SUCCESS = new JsonResult();
		SAVE_SUCCESS.put("statusCode", "200");
		SAVE_SUCCESS.put("message", "保存成功");
		SAVE_SUCCESS.put("tabid", "");
		SAVE_SUCCESS.put("closeCurrent", false);
		SAVE_SUCCESS.put("forward", "");
		SAVE_SUCCESS.put("forwardConfirm", "");
		
		SAVE_SUCCESS_CLOSE = new JsonResult();
		SAVE_SUCCESS_CLOSE.put("statusCode", "200");
		SAVE_SUCCESS_CLOSE.put("message", "保存成功");
		SAVE_SUCCESS_CLOSE.put("tabid", "");
		SAVE_SUCCESS_CLOSE.put("closeCurrent", true);
		SAVE_SUCCESS_CLOSE.put("forward", "");
		SAVE_SUCCESS_CLOSE.put("forwardConfirm", "");	

		DELETE_SUCCESS = new JsonResult();
		DELETE_SUCCESS.put("statusCode", "200");
		DELETE_SUCCESS.put("message", "删除成功");
		DELETE_SUCCESS.put("tabid", "");
		DELETE_SUCCESS.put("closeCurrent", false);
		DELETE_SUCCESS.put("forward", "");
		DELETE_SUCCESS.put("forwardConfirm", "");

	}
	
	private Map<Object,Object> map = new HashMap<Object, Object>();
	public JsonResult put(Object key,Object value){
		this.map.put(key, value);
		return this;
	}
	
	@Override
	public String toString() {
		JSONObject json = new JSONObject();
		json.putAll(map);
		return json.toString();
	}
	
	public static JsonResult saveSuccessClose(String tabid){
		
		if (StringUtils.isEmpty(tabid)) {
			tabid = "";
		}		
		JsonResult success = new JsonResult();
		success.put("statusCode", "200");
		success.put("message", "保存成功");
		success.put("tabid", tabid);
		success.put("closeCurrent", true);
		success.put("forward", "");
		success.put("forwardConfirm", "");
		return success;
	}
	
	public static JsonResult operateSuccessClose(String tabid){
		
		if (StringUtils.isEmpty(tabid)) {
			tabid = "";
		}		
		JsonResult success = new JsonResult();
		success.put("statusCode", "200");
		success.put("message", "操作成功");
		success.put("tabid", tabid);
		success.put("closeCurrent", true);
		success.put("forward", "");
		success.put("forwardConfirm", "");
		return success;
	}	
	
	public static JsonResult operateSuccess(String tabid){
		
		if (StringUtils.isEmpty(tabid)) {
			tabid = "";
		}		
		JsonResult success = new JsonResult();
		success.put("statusCode", "200");
		success.put("message", "操作成功");
		success.put("tabid", tabid);
		success.put("closeCurrent", false);
		success.put("forward", "");
		success.put("forwardConfirm", "");
		return success;
	}

	public static JsonResult deleteSuccess(String tabid){

		if (StringUtils.isEmpty(tabid)) {
			tabid = "";
		}
		JsonResult success = new JsonResult();
		success.put("statusCode", "200");
		success.put("message", "删除成功");
		success.put("tabid", tabid);
		success.put("closeCurrent", false);
		success.put("forward", "");
		success.put("forwardConfirm", "");
		return success;
	}

	public static JsonResult operateSuccessClose(String tabid,String msg){

		if (StringUtils.isEmpty(tabid)) {
			tabid = "";
		}
		JsonResult success= new JsonResult();
		success.put("statusCode", 200);
		success.put("message", msg);
		success.put("tabid", tabid);
		success.put("closeCurrent", true);
		success.put("forward", "");
		success.put("forwardConfirm", "");
		return success;
	}
	
	public static JsonResult operateFailure(String tabid,String msg){
		
		if (StringUtils.isEmpty(tabid)) {
			tabid = "";
		}		
		JsonResult failure= new JsonResult();
		failure.put("statusCode", 300);
		failure.put("message", msg);
		failure.put("tabid", tabid);
		failure.put("closeCurrent", false);
		failure.put("forward", "");
		failure.put("forwardConfirm", "");
		return failure;
	}

	public static JsonResult operateFailure(String msg){


		JsonResult failure= new JsonResult();
		failure.put("statusCode", 300);
		failure.put("message", msg);
		failure.put("closeCurrent", false);
		failure.put("forward", "");
		failure.put("forwardConfirm", "");
		return failure;
	}
}
