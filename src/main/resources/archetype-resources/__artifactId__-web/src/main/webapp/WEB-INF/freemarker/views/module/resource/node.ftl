<div class="form-group">
    <label for="Name" class="control-label x85">名称：</label>
    <input type="text" class="form-control validate[required] required" name="m.name" id="tree_node_name" size="15" placeholder="名称" value="${(resource.name)!}"/>
    <input type="hidden" name="m.pid" id="tree_node_pid" value="${(resource.pid)!}" />
    <input type="hidden" name="m.id" id="tree_node_id"  value="${(resource.id)!}"/>
</div>
<div class="form-group">
    <label for="url" class="control-label x85">路径：</label>
    <input type="text"  class="form-control required" name="m.url" id="tree_node_url" size="15" placeholder="路径" value="${(resource.url)!}"/>
</div>
<div class="form-group">
    <label for="resOrder" class="control-label x85">顺序：</label>
    <input type="text" class="form-control validate[required] required" name="m.resOrder" id="tree_node_resOrder" size="15" placeholder="顺序" value="${(resource.resOrder)!}"/>
</div>

<div class="form-group">
    <label for="pid" class="control-label x85">父ID：</label><br/>
    <select name="pid" id="pid" data-toggle="selectpicker" class="form-control validate[required] required">
        <option value="root">---</option>
    <#list topResources as res>
        <option value="${(res.id)!}" <#if resource??&&resource.pid??&&resource.pid=res.id>selected</#if>>${(res.name)!}</option>
    </#list>
    </select>

</div>

<div class="form-group" style="padding-top:8px; border-top:1px #DDD solid;">
    <label class="control-label x85"></label>
    <button class="btn btn-green" onclick="M_Ts_Menu();">更新</button>
</div>

