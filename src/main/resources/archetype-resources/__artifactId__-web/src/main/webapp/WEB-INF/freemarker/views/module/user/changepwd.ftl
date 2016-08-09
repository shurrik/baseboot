<div class="bjui-pageContent">
    <form id="pwdform" action="/admin/user/savepwd" data-toggle="validate" method="post">
        <hr>
        <div class="form-group">
            <label for="oldpwd" class="control-label x85">旧密码：</label>
            <input type="password" data-rule="required" name="oldpwd" id="oldpwd" value="" placeholder="旧密码" size="20">
        </div>
        <div class="form-group" style="margin: 20px 0 20px; ">
            <label for="newpwd" class="control-label x85">新密码：</label>
            <input type="password" data-rule="新密码:required" name="newpwd" id="newpwd" value="" placeholder="新密码" size="20">
        </div>
        <div class="form-group">
            <label for="secpwd" class="control-label x85">确认密码：</label>
            <input type="password" data-rule="required;match(newpwd)" name="secpwd" id="secpwd" value="" placeholder="确认新密码" size="20">
        </div>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">保存</button></li>
    </ul>
</div>