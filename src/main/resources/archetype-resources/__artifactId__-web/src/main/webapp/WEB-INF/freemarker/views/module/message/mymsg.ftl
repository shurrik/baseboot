<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/message/mymsg" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">
			<label>标题：</label><input type="text" id="title" name="title" value="${(message.title)!}"  class="form-control" size="10">&nbsp;				    			
			<label>内容：</label><input type="text" id="content" name="content" value="${(message.content)!}"  class="form-control" size="10">&nbsp;				    			
            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
        </div>
    </form>
</div>
<div class="bjui-pageContent">
   <div class="bjui-headBar">
      	<ul>
			<li class="left"><button type="button" class="btn-green" data-url="${wwwroot}/admin/usermsgcount/clear" data-toggle="doajax" data-id="dialog-mask" data-mask="true" >全部置为已读</button></li>      	
        </ul>
    </div> 
    <table data-toggle="tablefixed" data-width="100%" data-layout-h="0" data-nowrap="true" data-selected-multi="true">
        <thead>
            <tr>
				<th width="40">No.</th>                
    			<th width="70" data-order-direction="" data-order-field="fromName">发送人</th>               
    			<th width="70" data-order-direction="" data-order-field="toName">接收人</th>               
    			<th data-order-direction="" data-order-field="title">标题</th>               
    			<th data-order-direction="" data-order-field="content">内容</th>               
    			<th width="90" data-order-direction="" data-order-field="readFlag">是否已阅</th>               
    			<th width="100" data-order-direction="" data-order-field="createDate">创建日期</th>               
                <th width="100">操作</th>
            </tr>
        </thead>
        <tbody>
        <#list pageCtx.rows as row>
        	<tr data-id="${(row.id)!}">
				<td>${(row_index+1)!}</td>	        	
				<td>${(row.fromName)!}</td> 	    			
				<td>${(row.toName)!}</td>	    			
				<td title="${(row.title)!}">${(row.title)!}</td>	    			
				<td title="${(row.content)!}">${(row.content)!}</td>	    			
				<td><#if row.readFlag??&&row.readFlag>已阅<#else>未阅</#if></td>	
					<td title="${(row.createDate?string('yy/MM/dd'))!}"><@p.subStr content=(row.createDate?string('yy/MM/dd'))! length=15/></td>
					
                <td>
                <a href="${wwwroot}/admin/message/route?id=${(row.id)!}" class="btn btn-blue" data-toggle="dialog" data-id="dialog-mask" data-max="true" data-mask="true">查看</a>

                </td>	        	
        	</tr>
		</#list>	        	
        </tbody>
    </table>  
 	<@p.pagination pageCtx=pageCtx pageParam=pageParam/>
</div>