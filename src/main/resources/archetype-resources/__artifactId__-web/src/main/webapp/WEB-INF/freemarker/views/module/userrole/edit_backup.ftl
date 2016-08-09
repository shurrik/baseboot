<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/userrole/save" id="j_custom_form" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(userRole.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="userId" class="control-label x85">用户ID：</label>
                            <input type="text" name="userId" id="userId" value="${(userRole.userId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="realName" class="control-label x85">真实姓名：</label>
                            <input type="text" name="realName" id="realName" value="${(userRole.realName)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="roleId" class="control-label x85">角色ID：</label>
                            <input type="text" name="roleId" id="roleId" value="${(userRole.roleId)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="roleName" class="control-label x85">角色名称：</label>
                            <input type="text" name="roleName" id="roleName" value="${(userRole.roleName)!}" data-rule="required" >
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
