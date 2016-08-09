<div class="bjui-pageHeader">
    <div class="toolBar">
        <div class="btn-group" role="group" aria-label="操作栏">
            <a type="button" class="btn btn-success" href="${wwwroot}/admin/version/add" data-toggle="navtab" data-id="form"><i class="fa fa-plus"></i>新增</a>
            <a type="button" class="btn btn-danger" href="${wwwroot}/admin/version/delete?ids={#bjui-selected}" data-toggle="doajax" data-confirm-msg="确定要删除选中项吗？" data-id="form" data-mask="true"><i class="fa fa-trash-o"></i>删除选中行</a>
        </div>
    </div>
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/version/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">
			<label>系统名称：</label><input type="text" id="sysName" name="sysName" value="${(version.sysName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>系统版本：</label><input type="text" id="sysVersion" name="sysVersion" value="${(version.sysVersion)!}"  class="form-control" size="10">&nbsp;				    			
			<label>版权归属：</label><input type="text" id="copyRight" name="copyRight" value="${(version.copyRight)!}"  class="form-control" size="10">&nbsp;
            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table data-toggle="tablefixed" data-width="100%" data-nowrap="true">
        <thead>
            <tr>
				<th width="50">No.</th>                
    			<th data-order-direction="" data-order-field="sysName">系统名称</th>               
    			<th data-order-direction="" data-order-field="sysVersion">系统版本</th>               
    			<th data-order-direction="" data-order-field="buildDate">构建时间</th>               
    			<th data-order-direction="" data-order-field="copyRight">版权归属</th>               
    			<th data-order-direction="" data-order-field="createDate">创建日期</th>               
                <th width="100">操作</th>
            </tr>
        </thead>
        <tbody>
        <#list pageCtx.rows as row>
        	<tr data-id="${(row.id)!}">
				<td>${(row_index+1)!}</td>	        	
                 <td title="${(row.sysName)!}">${(row.sysName)!}</td>
                 <td title="${(row.sysVersion)!}">${(row.sysVersion)!}</td>
                 <td title="${(row.buildDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.buildDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                 <td title="${(row.copyRight)!}">${(row.copyRight)!}</td>
                 <td title="${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                <td>
                    <a href="${wwwroot}/admin/version/edit?id=${(row.id)!}" class="btn btn-blue" data-toggle="navtab" data-id="form" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="编辑">编辑</a>
                    <a href="${wwwroot}/admin/version/delete?ids=${(row.id)!}" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要删除该行信息吗？">删</a>
                </td>	        	
        	</tr>
		</#list>	        	
        </tbody>
    </table>  
</div>
<@p.pagination pageCtx=pageCtx pageParam=pageParam/>