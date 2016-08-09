<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/message/save" id="j_custom_form" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(message.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="fromId" class="control-label x85">发送人ID：</label>
                            <input type="text" name="fromId" id="fromId" value="${(message.fromId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="fromName" class="control-label x85">发送人：</label>
                            <input type="text" name="fromName" id="fromName" value="${(message.fromName)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="toId" class="control-label x85">接收人ID：</label>
                            <input type="text" name="toId" id="toId" value="${(message.toId)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="toName" class="control-label x85">接收人：</label>
                            <input type="text" name="toName" id="toName" value="${(message.toName)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="title" class="control-label x85">标题：</label>
                            <input type="text" name="title" id="title" value="${(message.title)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="content" class="control-label x85">内容：</label>
                            <input type="text" name="content" id="content" value="${(message.content)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="readFlag" class="control-label x85">已读：</label>
                            <input type="text" name="readFlag" id="readFlag" value="${(message.readFlag)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="createDate" class="control-label x85">创建日期：</label>
                            <input type="text" name="createDate" id="createDate" value="${(message.createDate)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="updateDate" class="control-label x85">更新日期：</label>
                            <input type="text" name="updateDate" id="updateDate" value="${(message.updateDate)!}" data-rule="required" >
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
