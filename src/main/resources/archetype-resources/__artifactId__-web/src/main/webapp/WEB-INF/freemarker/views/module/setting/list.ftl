<div class="bjui-pageHeader">
    <div class="toolBar">
        <div class="btn-group" role="group" aria-label="操作栏">
            <a type="button" class="btn btn-success" href="${wwwroot}/admin/setting/add" data-toggle="navtab" data-id="form"><i class="fa fa-plus"></i>新增</a>
            <a type="button" class="btn btn-danger" href="${wwwroot}/admin/setting/delete?ids={#bjui-selected}" data-toggle="doajax" data-confirm-msg="确定要删除选中项吗？" data-id="form" data-mask="true"><i class="fa fa-trash-o"></i>删除选中行</a>
            <a type="button" class="btn btn-green" href="${wwwroot}/admin/setting/reload" data-toggle="doajax"  data-mask="true">重载</a>
        </div>
    </div>
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/setting/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">
            <label>键：</label><input type="text" id="paramKey" name="paramKey" value="${(setting.paramKey)!}"  class="form-control" size="10">&nbsp;
            <label>值：</label><input type="text" id="paramVal" name="paramVal" value="${(setting.paramVal)!}"  class="form-control" size="10">&nbsp;
            <label>说明：</label><input type="text" id="note" name="note" value="${(setting.note)!}"  class="form-control" size="10">&nbsp;
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
            <th data-order-direction="" data-order-field="paramKey">键</th>
            <th data-order-direction="" data-order-field="paramVal">值</th>
            <th data-order-direction="" data-order-field="note">说明</th>
            <th data-order-direction="" data-order-field="createDate">创建日期</th>
            <th data-order-direction="" data-order-field="updateDate">更新日期</th>
            <th width="100">操作</th>
        </tr>
        </thead>
        <tbody>
        <#list pageCtx.rows as row>
        <tr data-id="${(row.id)!}">
            <td>${(row_index+1)!}</td>
            <td title="${(row.paramKey)!}">${(row.paramKey)!}</td>
            <td title="${(row.paramVal)!}">${(row.paramVal)!}</td>
            <td title="${(row.note)!}">${(row.note)!}</td>
            <td title="${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
            <td title="${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
            <td>
                <a href="${wwwroot}/admin/setting/edit?id=${(row.id)!}" class="btn btn-blue" data-toggle="navtab" data-id="form" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="编辑">编辑</a>
                <a href="${wwwroot}/admin/setting/delete?ids=${(row.id)!}" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要删除该行信息吗？">删</a>
            </td>
        </tr>
        </#list>
        </tbody>
    </table>
</div>
<@p.pagination pageCtx=pageCtx pageParam=pageParam/>