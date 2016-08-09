<div class="bjui-pageContent">
	<form id="j_pwschange_form" action="${wwwroot}/admin/user/changepwd" data-toggle="validate" method="post">
		<input type="hidden" name="users.id" value="test">
		<input type="hidden" id="j_pwschange_username" value="admin">
		<input type="hidden" id="j_pwschange_oldpass" name="users.password">
		<input type="hidden" id="j_pwschange_newpass" name="newpassword">
		<div class="pageFormContent" data-layout-h="0">
            <hr>
            <div class="form-group">
                <label for="j_pwschange_oldpassword" class="control-label x85">旧密码：</label>
                <input type="password" data-rule="required" name="" id="j_pwschange_oldpassword" value="" placeholder="旧密码" size="20">
            </div>
            <div class="form-group" style="margin: 20px 0 20px; ">
                <label for="j_pwschange_newpassword" class="control-label x85">新密码：</label>
                <input type="password" data-rule="新密码:required" name="pass" id="j_pwschange_newpassword" value="" placeholder="新密码" size="20">
            </div>
            <div class="form-group">
                <label for="j_pwschange_secpassword" class="control-label x85">确认密码：</label>
                <input type="password" data-rule="required;match(pass)" name="j_pwschange_secpassword" id="j_pwschange_secpassword" value="" placeholder="确认新密码" size="20">
            </div>
		</div>
		<div class="bjui-footBar">
            <ul>
                <li><button type="button" class="btn-close">取消</button></li>
                <li><button type="submit" class="btn-default">保存</button></li>
            </ul>
		</div>
	</form>
</div>