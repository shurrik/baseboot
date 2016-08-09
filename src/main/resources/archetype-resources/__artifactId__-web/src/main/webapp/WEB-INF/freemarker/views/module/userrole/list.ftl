<div class="bjui-pageHeader">
    <div class="toolBar">
        <div class="btn-group" role="group" aria-label="操作栏">
            <a type="utton" class="btn btn-success" href="${wwwroot}/admin/userrole/add" data-toggle="navtab" data-id="form"><i class="fa fa-plus"></i>新增</a>
            <a type="button" class="btn btn-danger" href="${wwwroot}/admin/userole/delete?ids={#bjui-selected}" data-toggle="doajax" data-confirm-msg="确定要删除选中项吗？" data-id="form" data-mask="true"><i class="fa fa-trash-o"></i>删除选中行</a>
        </div>
    </div>
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/userrole/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">
			<label>用户ID：</label><input type="text" id="userId" name="userId" value="${(userRole.userId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>真实姓名：</label><input type="text" id="realName" name="realName" value="${(userRole.realName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>角色ID：</label><input type="text" id="roleId" name="roleId" value="${(userRole.roleId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>角色名称：</label><input type="text" id="roleName" name="roleName" value="${(userRole.roleName)!}"  class="form-control" size="10">&nbsp;				    			
            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table data-toggle="tablefixed" data-width="100%" data-nowrap="true">
        <thead>
            <tr>
				<th width="30">No.</th>                
    				<th data-order-direction="" data-order-field="userId">用户ID</th>               
    				<th data-order-direction="" data-order-field="realName">真实姓名</th>               
    				<th data-order-direction="" data-order-field="roleId">角色ID</th>               
    				<th data-order-direction="" data-order-field="roleName">角色名称</th>               
    				<th data-order-direction="" data-order-field="createDate">创建日期</th>               
    				<th data-order-direction="" data-order-field="updateDate">更新日期</th>               
                <th width="100">操作</th>
            </tr>
        </thead>
        <tbody>
	        
	        <#list pageCtx.rows as row>
	        	<tr data-id="${(row.id)!}">
					<td>${(row_index+1)!}</td>	        	
					<td>${(row.userId)!}</td>	    			
					<td>${(row.realName)!}</td>	    			
					<td>${(row.roleId)!}</td>	    			
					<td>${(row.roleName)!}</td>	    			
					<td>${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>	    			
					<td>${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>	    			
	                <td>
	                    <a href="${wwwroot}/admin/userrole/edit?id=${(row.id)!}" class="btn btn-blue" data-toggle="navtab" data-id="form" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="编辑">编辑</a>
	                    <a href="${wwwroot}/admin/userrole/delete?ids=${(row.id)!}" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要删除该行信息吗？">删</a>
	                </td>	        	
	        	</tr>
			</#list>	        	
        </tbody>
    </table>
</div>
<@p.pagination pageCtx=pageCtx pageParam=pageParam/>