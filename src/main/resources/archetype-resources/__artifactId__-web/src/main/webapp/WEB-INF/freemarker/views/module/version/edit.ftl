<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/version/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(version.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="sysName" class="control-label x85">系统名称：</label>
                            <input type="text" name="sysName" id="sysName" value="${(version.sysName)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="sysVersion" class="control-label x85">系统版本：</label>
                            <input type="text" name="sysVersion" id="sysVersion" value="${(version.sysVersion)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="buildDate" class="control-label x85">构建时间：</label>
                            <input type="text" name="buildDate" id="buildDate" value="${(version.buildDate)!}"  >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="copyRight" class="control-label x85">版权归属：</label>
                            <input type="text" name="copyRight" id="copyRight" value="${(version.copyRight)!}"  >
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
