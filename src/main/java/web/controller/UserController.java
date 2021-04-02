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
@RequestMapping("/")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String showAllUsers(Model model) {
        List<User> allusers = userService.showAllUsers();
        model.addAttribute("allUs", allusers);
        return "/index";
    }

    @PostMapping("/index")
    public String addNewUser(@ModelAttribute User user, Model model) {
        model.addAttribute("user", user);
        userService.addUser(user);
        return "/index";
    }
    @PostMapping("/index")
    public String deleteUser(@ModelAttribute User user, Model model) {
        userService.deleteUser(user.getId());
        return "redirect:/index";
    }
    @PostMapping("/index")
    public String updateUser(@ModelAttribute User user, Model model) {
        userService.updateUser(user);
        return "/index";
    }
}





