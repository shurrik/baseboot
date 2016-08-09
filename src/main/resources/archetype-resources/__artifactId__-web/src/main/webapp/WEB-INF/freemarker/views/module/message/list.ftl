<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/message/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">

            <label>发送人：</label><input type="text" id="fromName" name="fromName" value="${(message.fromName)!}"  class="form-control" size="10">&nbsp;

			<label>接收人：</label><input type="text" id="toName" name="toName" value="${(message.toName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>标题：</label><input type="text" id="title" name="title" value="${(message.title)!}"  class="form-control" size="10">&nbsp;				    			
			<label>内容：</label><input type="text" id="content" name="content" value="${(message.content)!}"  class="form-control" size="10">&nbsp;				    			
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
    			<th data-order-direction="" data-order-field="fromName">发送人</th>
    			<th data-order-direction="" data-order-field="toName">接收人</th>
    			<th data-order-direction="" data-order-field="title">标题</th>               
    			<th data-order-direction="" data-order-field="content">内容</th>               
    			<th data-order-direction="" data-order-field="readFlag">是否已阅</th>               
    			<th data-order-direction="" data-order-field="createDate">创建日期</th>               
    			<th data-order-direction="" data-order-field="updateDate">更新日期</th>               
                <th width="100">操作</th>
            </tr>
        </thead>
        <tbody>
        <#list pageCtx.rows as row>
        	<tr data-id="${(row.id)!}">
				<td>${(row_index+1)!}</td>	        	
				<td>${(row.fromName)!}</td>
				<td>${(row.toName)!}</td>
				<td>${(row.title)!}</td>	    			
				<td>${(row.content)!}</td>	    			

				<td><#if row.readFlag??&&row.readFlag>已阅<#else>未阅</#if></td>	
				<td>${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
				<td>${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>

                <td>
                    <a href="${wwwroot}/admin/message/edit?id=${(row.id)!}" class="btn btn-blue" data-toggle="navtab" data-id="form" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="编辑">编辑</a>
                    <a href="${wwwroot}/admin/message/delete?ids=${(row.id)!}" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要删除该行信息吗？">删</a>
                </td>	        	
        	</tr>
		</#list>	        	
        </tbody>
    </table>
</div>
<@p.pagination pageCtx=pageCtx pageParam=pageParam/>