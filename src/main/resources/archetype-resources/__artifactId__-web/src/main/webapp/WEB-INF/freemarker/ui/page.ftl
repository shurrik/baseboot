<#macro pagination pageCtx pageParam> 
    <div class="bjui-pageFooter">
        <div class="pages">
            <span>每页&nbsp;</span>
            <div class="selectPagesize">
                <select data-toggle="selectpicker" data-toggle-change="changepagesize">
                    <option value="10" <#if pageParam.pageSize=10>selected</#if>>10</option>
                	<option value="20" <#if pageParam.pageSize=20>selected</#if>>20</option>
                    <option value="30" <#if pageParam.pageSize=30>selected</#if>>30</option>
                    <option value="60" <#if pageParam.pageSize=60>selected</#if>>60</option>
                    <option value="120" <#if pageParam.pageSize=120>selected</#if>>120</option>
                    <option value="150" <#if pageParam.pageSize=150>selected</#if>>150</option>
                    <option value="1000" <#if pageParam.pageSize=1000>selected</#if>>1000</option>
                </select>
            </div>
            <span>&nbsp;条，共 ${(pageCtx.records)!} 条</span>
        </div>
        <div class="pagination-box" data-toggle="pagination" data-total="${(pageCtx.records)!}" data-page-size="${(pageParam.pageSize)!}" data-page-current="${(pageParam.pageCurrent)!}">
        </div>
    </div>

</#macro>  
<#macro userSelector id val idName valName users  curUser>
	<select name="${idName!}" id="${idName!}" data-toggle="selectpicker" data-rule="" onchange="javascript:alert($('#${valName!}').val());$('#${valName!}').val($(this).find("option:selected").text());$('#${valName!}').val());">
		<option value="" selected>---</option>
		<#list users as user>
			<option value="${(user.id)!}" <#if (id??&id=user.id)||(id=''&curUser??&user.id=curUser.id)>selected</#if>>${(user.realName)!}</option>
		</#list>
	</select>
	<input type="hidden" id="${valName!}" name="${valName!}" value="<#if val!=''>${val!}<#else>${(curUser.realName)!}</#if>">
<script>
    $("#${idName!}").change(function() {
    	$('#editForm input[id="${valName!}"]').val($(this).find("option:selected").text());
    }); 
</script>	
</#macro>
<#macro chargeMan id val idName valName users>
	<select name="${idName!}" id="${idName!}" data-toggle="selectpicker" data-rule="" onchange="javascript:alert($('#${valName!}').val());$('#${valName!}').val($(this).find("option:selected").text());$('#${valName!}').val());">
			<option value="">---</option>
		<#list users as user>
			<option value="${(user.id)!}" <#if id??&id=user.id>selected</#if>>${(user.realName)!}</option>
		</#list>
	</select>
	<input type="hidden" id="${valName!}" name="${valName!}" value="${val!}">
<script>
    $("#${idName!}").change(function() {
    	$('#editForm input[id="${valName!}"]').val($(this).find("option:selected").text());
    }); 
</script>	
</#macro>
<#macro deptSelector id val idName valName depts>
	<select name="${valName!}_dept" id="${valName!}_dept" data-toggle="selectpicker">    
    		<option value="">---</option>
    	<#list depts as dept>
    		<option value="${(dept.id)!}" <#if val??&val=dept.name>selected</#if>>${(dept.name)!}</option>
    	</#list>
    </select>
    <input type="text" name="${valName!}" id="${valName!}" value="${val!}" data-rule="required" size="20" class="input-nm">
    <input type="hidden" id="${idName!}" name="${idName!}" value="${id!}">
<script>
	$('#editForm input[id="${valName!}"]').change(function(){
		$('#editForm input[id="${idName!}"]').val('');
	});
    $("#${valName!}_dept").change(function() {
    	$('#editForm input[id="${valName!}"]').val($(this).find("option:selected").text());
    	$('#editForm input[id="${idName!}"]').val($(this).find("option:selected").val());
    }); 
</script>   
</#macro>
<#macro subStr content length>
	<#if content??>
		<#if (content?length<=length)>${content!}<#else>${content[0..length-1]!}...</#if>
	</#if>
</#macro>

<#--${(object.value)!}-->
<#macro objectValue object value>
${r"${("}${object!}${r"."}${value!}${r")!}"}
</#macro>
<#macro objectValuePlain object value>
${object!}${r"."}${value!}
</#macro>
<#macro selector dics dicId dicName object objectId objectName>
<select name="${objectId!}" id="${objectId!}" data-toggle="selectpicker" onchange="$('#${objectName}_').val(this.options[this.selectedIndex].text)" data-rule="required">
    <option value="">请选择</option>
	<#list dics as dic>
		<#assign dicIdCompare = dic[dicId]!/>
		<#if object??&&object[objectId]??>
			<#assign objectIdCompare = object[objectId]!/>
		<#else>
			<#assign objectIdCompare = ''/>
		</#if>
		<#if objectIdCompare??&&objectIdCompare==dicIdCompare>
            <option value="${dic[dicId]}" selected>${dic[dicName]}</option>
		<#else>
            <option value="${dic[dicId]}">${dic[dicName]}</option>
		</#if>
	</#list>
</select>
<input type="hidden" name="${(objectName)!}" id="${(objectName)!}_" value="${r"${("}object."}${r"${(object."}${objectName!}${r")!}"}"  >
</#macro>


<#macro tree treeNode>
<#list treeNode.children as child>
	<#--<li data-id="${(child.id)!}" data-pid="${(child.pid)!}"  data-faicon-close="cab" data-chkDisabled="false">${(child.name)!}</li>-->
	<li data-id="${(child.id)!}" data-pid="${(child.pid)!}"  data-faicon-close="cab" >${(child.name)!}</li>
	<@tree child/>
</#list>
</#macro>

<#macro treeUrl treeNode url divId>
	<#list treeNode.children as child>
    <li data-id="${(child.id)!}" data-pid="${(child.pid)!}"  data-faicon-close="cab" data-url="${(url)!}${(child.id)!}" data-divid="#${(divId)!}">${(child.name)!}</li>
		<@treeUrl child url divId/>
	</#list>
</#macro>




