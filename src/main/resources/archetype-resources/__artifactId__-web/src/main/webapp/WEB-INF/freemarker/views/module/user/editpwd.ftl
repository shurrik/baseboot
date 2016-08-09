<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/userpwd/save" id="j_custom_form" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(user.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="userName" class="control-label x85">用户名：</label>
                            <input disabled="true"　readOnly="true" type="text" name="userName" id="userName" value="${(user.userName)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="realName" class="control-label x85">真实姓名：</label>
                            <input disabled="true"　readOnly="true" type="text" name="realName" id="realName" value="${(user.realName)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="password" class="control-label x85">密码：</label>
                            <input disabled="true" readOnly="true"  type="text" name="password" id="password" value="${(user.userName)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>	
                        <td>
                            <label for="mobile" class="control-label x85">手机号：</label>
                            <input disabled="true"　readOnly="true" type="text" name="mobile" id="mobile" value="${(user.mobile)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="email" class="control-label x85">邮箱：</label>
                            <input disabled="true"　readOnly="true" type="text" name="email" id="email" value="${(user.email)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="depId" class="control-label x85">所属部门：</label>
                            <select name="depId" id="depId" data-toggle="selectpicker">
                            		<option value="" >---</option>
                            	<#list depts as dept>
                            		<option value="${(dept.id)!}" <#if user.depId??&user.depId=dept.id>selected</#if>>${(dept.name)!}</option>
                            	</#list>
                            </select>
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