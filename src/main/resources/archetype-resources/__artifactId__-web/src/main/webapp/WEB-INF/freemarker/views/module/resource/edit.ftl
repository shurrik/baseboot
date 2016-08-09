<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/resource/save" id="j_custom_form" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(resource.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="name" class="control-label x85">资源名称：</label>
                            <input type="text" name="name" id="name" value="${(resource.name)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="url" class="control-label x85">资源路径：</label>
                            <input type="text" name="url" id="url" value="${(resource.url)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="pid" class="control-label x85">父ID：</label>
							<select name="pid" id="pid" data-toggle="selectpicker">    
						    		<option value="root">---</option>
						    	<#list topResources as res>
						    		<option value="${(res.id)!}" <#if resource.pid??&resource.pid=res.id>selected</#if>>${(res.name)!}</option>
						    	</#list>
						    </select>                
                        </td>
                        <td>
                            <label for="resOrder" class="control-label x85">顺序：</label>
                            <input type="text" name="resOrder" id="resOrder" value="${(resource.resOrder)!}" data-rule="required" >
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