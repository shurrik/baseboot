<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/oplog/save" id="j_custom_form" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(opLog.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="title" class="control-label x85">来文标题：</label>
                            <input type="text" name="title" id="title" value="${(opLog.title)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="content" class="control-label x85">内容：</label>
                            <input type="text" name="content" id="content" value="${(opLog.content)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="userName" class="control-label x85">用户名：</label>
                            <input type="text" name="userName" id="userName" value="${(opLog.userName)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="realName" class="control-label x85">真实姓名：</label>
                            <input type="text" name="realName" id="realName" value="${(opLog.realName)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="createDate" class="control-label x85">创建日期：</label>
                            <input type="text" name="createDate" id="createDate" value="${(opLog.createDate)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="updateDate" class="control-label x85">更新日期：</label>
                            <input type="text" name="updateDate" id="updateDate" value="${(opLog.updateDate)!}" data-rule="required" >
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