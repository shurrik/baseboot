<ul id="ztree1" class="ztree" data-toggle="ztree"
    data-options="{
                        expandAll: false,
                        onClick: 'ZtreeClick',
                        maxAddLevel:2,
                        beforeRemove:M_BeforeRemove,
                        onRemove:M_NodeRemove,
                    }"
>
    <li data-id="root" data-pid="0"  data-faicon-close="cab">根节点</li>
<@p.tree resourceTree/>
</ul>

<script type="text/javascript">

    initTree();
    function initTree()
    {
        changeZtree(2);
    }
    function changeZtree(t) {
        var $panel = $.CurrentNavtab
        var $t     = $('#ztree1'),
                $span  = $('#ztree-'+ t),
                $log   = $('#ztree-log'),
                op     = $t.data()

        if (t != 7)
            $.fn.zTree.destroy('ztree1')

        var add    = op.addHoverDom ? null : 'edit',
                remove = op.removeHoverDom ? null : 'edit'

        $t.data('addHoverDom', add).data('removeHoverDom', remove)

        $log.val('data-add-hover-dom="'+ add +'"\r\n' + 'data-remove-hover-dom="'+ remove +'"')
        $span.text(($span.text() == '无') ? '显示' : '无')
        $panel.initui()
    }
</script>