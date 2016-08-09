<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/userrole/save" id="j_custom_form" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        
        <input type="hidden" name="id" value="${(userRole.id)!}" />
        <input type="hidden" id="roleids" name="roleids" value="${(roleids)!}" />
        <input type="hidden" id="userId" name="userId" value="${(user.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="realName" class="control-label x85">真实姓名：</label>
                            ${(user.realName)!}
                        </td>							
					</tr>
					<#list roles as role>
					<#assign userRol=((userRoleMap[role.id])!)>
					<tr>
						<td>
							<input type="checkbox" name="roleIds" value="${(role.id)!}" <#if userRol??&&userRol!="">checked="checked"</#if> data-toggle="icheck" data-label="${(role.name)!}" >
						</td>
					</tr>
					</#list>
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