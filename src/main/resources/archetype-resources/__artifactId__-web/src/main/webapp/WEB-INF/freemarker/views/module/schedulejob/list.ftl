<div class="bjui-pageHeader">
    <div class="toolBar">
        <div class="btn-group" role="group" aria-label="操作栏">
        </div>
    </div>
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/schedulejob/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table data-toggle="tablefixed" data-width="100%" data-nowrap="true">
        <thead>
        <tr>
            <th width="50">No.</th>
            <th data-order-direction="" data-order-field="jobName">任务名</th>
            <th data-order-direction="" data-order-field="jobGroup">任务组</th>
            <th data-order-direction="" data-order-field="jobStatus">状态</th>
            <th data-order-direction="" data-order-field="desc">备注</th>
            <th data-order-direction="" data-order-field="cronExpression">时间表达式</th>
            <th data-order-direction="" data-order-field="startTime">开始时间</th>
            <th data-order-direction="" data-order-field="nextTime">下次执行时间</th>
            <th width="200">操作</th>
        </tr>
        </thead>
        <tbody>
        <#list jobList as row>
        <tr data-id="${(row.jobName)!}">
            <td>${(row_index+1)!}</td>
            <td title="${(row.jobName)!}">${(row.jobName)!}</td>
            <td title="${(row.jobGroup)!}">${(row.jobGroup)!}</td>
            <td title="${(row.jobStatus)!}">${(row.jobStatus)!}</td>
            <td title="${(row.desc)!}">${(row.desc)!}</td>
            <td title="${(row.cronExpression)!}">${(row.cronExpression)!}</td>
            <td title="${(row.startTime?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.startTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>
            <td title="${(row.nextTime?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.nextTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>
            <td>
                <a href="${wwwroot}/schedulejob/pausejob?key=${(row.jobName)!}" class="btn btn-blue" data-toggle="doajax" data-id="form"  data-title="暂停">暂停</a>
                <a href="${wwwroot}/schedulejob/resumejob?key=${(row.jobName)!}" class="btn btn-blue" data-toggle="doajax" data-id="form"  data-title="恢复">恢复</a>
                <a href="${wwwroot}/schedulejob/triggerjob?key=${(row.jobName)!}" class="btn btn-blue" data-toggle="doajax" data-id="form"  data-title="立即运行">立即运行</a>
            </td>
        </tr>
        </#list>
        </tbody>
    </table>
</div>
