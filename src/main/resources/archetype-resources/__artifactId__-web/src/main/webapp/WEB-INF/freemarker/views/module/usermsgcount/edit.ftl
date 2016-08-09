<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/usermsgcount/save" id="j_custom_form" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(userMsgCount.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="userId" class="control-label x85">用户ID：</label>
                            <input type="text" name="userId" id="userId" value="${(userMsgCount.userId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="unread" class="control-label x85">新消息数：</label>
                            <input type="text" name="unread" id="unread" value="${(userMsgCount.unread)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="createDate" class="control-label x85">创建日期：</label>
                            <input type="text" name="createDate" id="createDate" value="${(userMsgCount.createDate)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="updateDate" class="control-label x85">更新日期：</label>
                            <input type="text" name="updateDate" id="updateDate" value="${(userMsgCount.updateDate)!}" data-rule="required" >
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