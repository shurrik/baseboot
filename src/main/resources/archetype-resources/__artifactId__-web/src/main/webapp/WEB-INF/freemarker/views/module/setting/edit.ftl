<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/setting/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(setting.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                <tr>
                    <td>
                        <label for="paramKey" class="control-label x85">键：</label>
                        <input type="text" name="paramKey" id="paramKey" value="${(setting.paramKey)!}" data-rule="required" >
                    </td>
                    <td>
                        <label for="paramVal" class="control-label x85">值：</label>
                        <input type="text" name="paramVal" id="paramVal" value="${(setting.paramVal)!}" data-rule="required" >
                    </td>
                    <td>
                        <label for="note" class="control-label x85">说明：</label>
                        <input type="text" name="note" id="note" value="${(setting.note)!}" data-rule="required" >
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
