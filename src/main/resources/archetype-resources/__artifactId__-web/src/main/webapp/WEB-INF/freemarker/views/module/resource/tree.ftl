<script type="text/javascript">
    //单击事件

    function ZtreeClick(event, treeId, treeNode) {
        event.preventDefault()

        //获取对象
        var json ;
        $.ajax({
            url: "/admin/resource/node"
            , type: "POST"
            , async:false
            , data: "id="+treeNode.id
            , success: function( data, textStatus, jqXHR ){
                $('#nodeDiv').html(data);
            }
        });

        var $detail = $('#ztree-detail');

        $detail.attr('tid', treeNode.tId)
        $detail.show()
    }

    //点击更新后保存属性
    function M_Ts_Menu() {
        var zTree  = $.fn.zTree.getZTreeObj("ztree1")
        var name   = $('#tree_node_name').val()
        var id    = $('#tree_node_id').val()
        var pid  = $('#pid').val()
        var resOrder = $('#tree_node_resOrder').val()
        var url = $('#tree_node_url').val()

        if ($.trim(name).length == 0) {
            alertMsg.error('名称不能为空！')
            return;
        }

        $.ajax({
            url: "/admin/resource/save"
            , type: "POST"
            , async:false
            , data: "id="+id+"&pid="+pid+"&name="+name+"&url="+url+"&resOrder="+resOrder
            , success: function( data, textStatus, jqXHR ){
                ajaxTree();
            }
        });

    }

    //删除前事件
    function M_BeforeRemove(treeId, treeNode) {

        if(treeNode.id=='root')//指定根节点
        {
            $(this).alertmsg('error', '根节点不允许删除！')
            return false;
        }
        if(treeNode.children)
        {
            $(this).alertmsg('error', '该节点存在子节点，请先删除子节点，再删除该节点！');
            return false;
        }

        return true
    }
    //删除结束事件
    function M_NodeRemove(event, treeId, treeNode) {
        $.ajax({
            url: "/admin/resource/delete"
            , type: "POST"
            , async:false
            , data: "ids="+treeNode.id
            , success: function( data, textStatus, jqXHR ){
                ajaxTree();
            }
        });
    }
    function ajaxTree() {

        $.ajax({
            url: "/admin/resource/ajaxtree"
            , type: "POST"
            , async:false
            , success: function( data, textStatus, jqXHR ){
                $('#treeDiv').html(data);
            }
        });
    }
    ajaxTree();

</script>
<div class="bjui-pageContent">
    <div style="padding:20px;">
        <div class="clearfix">
            <div id="treeDiv" style="float:left; width:320px; height:96%; overflow:auto;">


            </div>
            <div id="ztree-detail" style="display:none; margin-left:330px; width:200px; height:240px;">
                <div class="bs-example" data-content="详细信息" id="nodeDiv">
                </div>
            </div>
        </div>
    </div>
</div>
