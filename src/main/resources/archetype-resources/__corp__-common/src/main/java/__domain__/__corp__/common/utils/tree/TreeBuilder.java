package ${groupId}.common.utils.tree;

import ${groupId}.common.utils.Constants;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lip on 2016-01-28.
 */
public class TreeBuilder {

    private static final String ROOT_PID = Constants.TREE_ROOT;

    public static TreeNode buildTree(List<TreeNode> list)
    {
        TreeNode tree = new TreeNode();
        tree.setId(ROOT_PID);

        build(list,tree);
        return tree;
    }

    public static TreeNode buildTree(List<TreeNode> list,String rootId)
    {
        TreeNode tree = new TreeNode();
        tree.setId(rootId);

        build(list,tree);
        return tree;
    }
    public static TreeNode build(List<TreeNode> list,TreeNode pNode)
    {
        List<TreeNode> children = getListByPid(list,pNode.getId());
        if(children.size()>0)
        {
            for(TreeNode child:children)
            {
                pNode.getChildren().add(build(list,child));
            }
        }
        return pNode;
    }

    private static List<TreeNode> getListByPid(List<TreeNode> list,String pid)
    {
        List<TreeNode> children = new ArrayList<>();
        for(TreeNode child:list)
        {
            if(child.getPid()!=null&&child.getPid().equals(pid))
            {
                children.add(child);
            }
        }
        return children;
    }
}
