<script type="text/javascript">
//选择事件
function S_NodeCheck(e, treeId, treeNode) {
    var zTree = $.fn.zTree.getZTreeObj(treeId),
        nodes = zTree.getCheckedNodes(true)
    var ids = '', names = ''
    
    for (var i = 0; i < nodes.length; i++) {
        ids   += ','+ nodes[i].id
        names += ','+ nodes[i].name
    }
    if (ids.length > 0) {
        ids = ids.substr(1), names = names.substr(1)
    }
    
    $('#rids').val(ids);
    var $from = $('#'+ treeId).data('fromObj')
    
    if ($from && $from.length) $from.val(names)
}
//单击事件
function S_NodeClick(event, treeId, treeNode) {
    
    event.preventDefault()
}
</script>

<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/roleresource/save" id="j_custom_form" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        
        <input type="hidden" id="rids" name="rids" value="${(rids)!}" />
        <input type="hidden" id="roleId" name="roleId" value="${(role.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="roleId" class="control-label x85">角色名称：</label>
                            ${(role.name)!}
                        </td>
                            <td>
                            	<label for="roleId" class="control-label x85">选择资源：</label>
                                <input type="text" name="menus" id="j_ztree_menus1" data-toggle="selectztree" size="18" data-tree="#j_select_tree1" readonly>
                                <ul id="j_select_tree1" class="ztree hide" data-toggle="ztree" data-expand-all="false" data-check-enable="true" data-on-check="S_NodeCheck" data-on-click="S_NodeClick">
                                
									<@resourceList pid="root">
										<#list resources as topRes>
											<#assign roleTopRes=((roleResourceMap[topRes.id])!)>
											<li data-id="${(topRes.id)!}" data-pid="${(topRes.pid)!}" <#if roleTopRes??&&roleTopRes!="">data-checked="true"</#if>>${(topRes.name)!}</li>
										<@resourceList pid=topRes.id>
											<#list resources as res>
												<#assign roleRes=((roleResourceMap[res.id])!)>
												<li data-id="${(res.id)!}" data-pid="${(res.pid)!}" <#if roleRes??&&roleRes!="">data-checked="true"</#if>>${(res.name)!}</li>
											</#list>
										</@resourceList>
										</#list>
									</@resourceList>
                                </ul>
                            </td>					
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</div>
<div class="bjui-pageFooter" >
    <ul>
        <li><button type="button" class="btn btn-close" data-icon="close">取消</button></li>
        <li><button type="submit" class="btn btn-success" data-icon="save">保存</button></li>
    </ul>
</div>