package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import web.model.User;
import web.service.UserService;

import java.util.List;

@Controller
@RequestMapping(value = "pages")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String showAllUsers(Model model) {
        List<User> allusers = userService.showAllUsers();
        model.addAttribute("allUs", allusers);
        return "/test";
    }
}





