package ${groupId}.${artifactId}.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ${groupId}.common.domain.view.BizData4Page;
import ${groupId}.${artifactId}.model.Dept;
import ${groupId}.${artifactId}.service.IDeptService;
import ${groupId}.${artifactId}.service.IOpLogService;
import ${groupId}.common.utils.Constants;
import ${groupId}.common.utils.IdGenerator;
import ${groupId}.common.utils.JsonResult;
import ${groupId}.common.utils.PageParam;

@Controller
public class DeptAction extends AbstractAdminController<IDeptService> {

	@Autowired
	private IDeptService deptService;
	@Autowired
	private IOpLogService opLogService;

	@RequestMapping(value = "/dept/tree")
	public String tree(Dept dept, ModelMap model, PageParam pageParam,
			HttpServletRequest request, HttpServletResponse response) {
		return "/module/dept/tree";
	}

	@RequestMapping(value = "/dept/list")
	public String list(Dept dept, ModelMap model, PageParam pageParam,
			HttpServletRequest request, HttpServletResponse response) {

		// 获取参数
		Map<String, Object> conditions = getQueryMap(dept);
		BizData4Page<Dept> pageCtx = doPage(model, conditions, pageParam);
		model.addAttribute("dept", dept);
		return "/module/dept/list";
	}

	@RequestMapping(value = "/dept/add")
	public String add(ModelMap model, HttpServletRequest request,
			HttpServletResponse response) {

		model.addAttribute("dept", new Dept());
		model.addAttribute("depts", deptService.findAll());
		return "module/dept/edit";
	}

	@RequestMapping(value = "/dept/edit")
	public String edit(String id, ModelMap model, HttpServletRequest request,
			HttpServletResponse response) {

		Dept dept = deptService.fetch(id);
		model.addAttribute("depts", deptService.findAll());
		model.addAttribute("dept", dept);
		return "module/dept/edit";
	}

	@RequestMapping(value = "/dept/save")
	@ResponseBody
	public String save(HttpServletRequest request, Dept dept) {
		boolean isAddNew = StringUtils.isBlank(dept.getId()) ? true : false;
		String title = "";
		if (isAddNew) {
			dept.setId(IdGenerator.createNewId());
			deptService.add(dept);
			title = "添加";
		} else {
			deptService.update(dept);
			title = "修改";
		}
		opLogService.createNew(title + "部门", "部门名称：" + dept.getName(),
				getCurrentUser());
		return JsonResult.saveSuccessClose(Constants.MAIN_TAB).toString();
	}

	@RequestMapping(value = "/dept/delete")
	@ResponseBody
	public String delete(String ids, HttpServletRequest request) {

		deptService.deleteByIds(ids);
		opLogService.createNew("删除部门", "部门ID：" + ids, getCurrentUser());
		return JsonResult.DELETE_SUCCESS.toString();
	}

	@RequestMapping(value = "/dept/json")
	@ResponseBody
	public String json(HttpServletRequest request, HttpServletResponse response) {

		List<Dept> depts = deptService.findAll();
		List<Map> list = new ArrayList();
		for (Dept dept : depts) {
			Map map = new HashMap();
			map.put("id", dept.getId());
			map.put("label", dept.getName());
			map.put("value", dept.getId());
			list.add(map);
		}

		JSONArray array = JSONArray.fromObject(list);
		return array.toString();
	}

	protected Map getQueryMap(Dept dept) {
		Map<String, Object> conditions = new HashMap();

		conditions.put("name", dept.getName());
		conditions.put("pname", dept.getPname());
		return conditions;
	}

	@Override
	protected IDeptService getMainService() {
		return deptService;
	}

	@Override
	protected String getMainObjName() {
		return "dept";
	}

	@Override
	protected String getViewTitle() {
		return "dept";
	}
}
