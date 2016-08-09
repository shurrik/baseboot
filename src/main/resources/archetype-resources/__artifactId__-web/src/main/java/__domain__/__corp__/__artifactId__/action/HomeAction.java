package ${groupId}.${artifactId}.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ${groupId}.${artifactId}.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class HomeAction extends BaseAction{

    @RequestMapping(value="/installok")
    @ResponseBody
    public String installOk(ModelMap model,HttpServletRequest request,HttpServletResponse response){
        return "succ";
    }    

    @RequestMapping(value="/")
    public String home(ModelMap model,HttpServletRequest request,HttpServletResponse response){
        User user = getCurrentUser();
        model.addAttribute("realName", user.getRealName());
        return "index";
    }

    @RequestMapping(value="/index")
    public String renderMainView(ModelMap model,HttpServletRequest request,HttpServletResponse response){
        User user = getCurrentUser();
        model.addAttribute("username", user.getRealName());
        return "index";
    }

    @RequestMapping(value="/board")
    public String board(ModelMap model,HttpServletRequest request,HttpServletResponse response){

        return "board";
    }
}
