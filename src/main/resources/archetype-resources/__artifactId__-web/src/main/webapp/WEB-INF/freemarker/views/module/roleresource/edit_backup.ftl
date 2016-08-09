<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/roleresource/save" id="j_custom_form" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(roleResource.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="roleId" class="control-label x85">角色ID：</label>
                            <input type="text" name="roleId" id="roleId" value="${(roleResource.roleId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="roleName" class="control-label x85">角色名称：</label>
                            <input type="text" name="roleName" id="roleName" value="${(roleResource.roleName)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="resourceId" class="control-label x85">资源ID：</label>
                            <input type="text" name="resourceId" id="resourceId" value="${(roleResource.resourceId)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="resourceName" class="control-label x85">资源名称：</label>
                            <input type="text" name="resourceName" id="resourceName" value="${(roleResource.resourceName)!}" data-rule="required" >
                        </td>							
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="bjui-footBar">
            <ul>
                <li><button type="button" class="btn-close" data-icon="close">取消</button></li>
                <li><button type="submit" class="btn-default" data-icon="save">保存</button></li>
            </ul>
        </div>
    </form>
</div>
