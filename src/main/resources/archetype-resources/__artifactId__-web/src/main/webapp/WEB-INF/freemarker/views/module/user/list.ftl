<div class="bjui-pageHeader">
    <div class="toolBar">
        <div class="btn-group" role="group" aria-label="操作栏">
            <a type="utton" class="btn btn-success" href="${wwwroot}/admin/user/add" data-toggle="navtab" data-id="form"><i class="fa fa-plus"></i>新增</a>
            <a type="button" class="btn btn-danger" href="${wwwroot}/admin/user/delete?ids={#bjui-selected}" data-toggle="doajax" data-confirm-msg="确定要删除选中项吗？" data-id="form" data-mask="true"><i class="fa fa-trash-o"></i>删除选中行</a>
        </div>
    </div>
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/user/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">
			<label>用户名：</label><input type="text" id="userName" name="userName" value="${(user.userName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>真实姓名：</label><input type="text" id="realName" name="realName" value="${(user.realName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>手机号：</label><input type="text" id="mobile" name="mobile" value="${(user.mobile)!}"  class="form-control" size="10">&nbsp;				    			
			<label>邮箱：</label><input type="text" id="email" name="email" value="${(user.email)!}"  class="form-control" size="10">&nbsp;				    			
            <button type="submit" class="btn btn-primary" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-warning" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table data-toggle="tablefixed" data-width="100%" data-nowrap="true">
        <thead>
            <tr>
				<th width="30">No.</th>                
    				<th width="60" data-order-direction="" data-order-field="userName">用户名</th>               
    				<th width="70" data-order-direction="" data-order-field="realName">真实姓名</th>
    				<th width="100" data-order-direction="" data-order-field="mobile">手机号</th>               
    				<th  data-order-direction="" data-order-field="email">邮箱</th>
    				<th data-order-direction="" data-order-field="createDate">创建日期</th>
                <th width="250">操作</th>
            </tr>
        </thead>
        <tbody>
	        
	        <#list pageCtx.rows as row>
	        	<tr data-id="${(row.id)!}">
					<td>${(row_index+1)!}</td>	        	
					<td>${(row.userName)!}</td>	    			
					<td>${(row.realName)!}</td>
					<td>${(row.mobile)!}</td>	   			
			    			
					<td title="${(row.email)!}"><@p.subStr content=(row.email)! length=50/></td>
					<td>${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
	                <td>
	                    <a href="${wwwroot}/admin/user/edit?id=${(row.id)!}" class="btn btn-info" data-toggle="navtab" data-id="form" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="编辑">编辑</a>
	                    <a href="${wwwroot}/admin/userrole/edit?userId=${(row.id)!}" class="btn btn-info" data-toggle="dialog" data-width="1000" data-height="800" data-id="dialog-mask" data-mask="true">角色</a>
	                    <a href="${wwwroot}/admin/userpwd/edit?userId=${(row.id)!}" class="btn btn-info" data-toggle="dialog" data-width="1000" data-height="800" data-id="dialog-mask" data-mask="true">密码重置</a>
	                    <a href="${wwwroot}/admin/user/delete?ids=${(row.id)!}" class="btn btn-danger" data-toggle="doajax" data-confirm-msg="确定要删除该行信息吗？">删除</a>
	                </td>	        	
	        	</tr>
			</#list>	        	
        </tbody>
    </table>
</div>
<@p.pagination pageCtx=pageCtx pageParam=pageParam/>