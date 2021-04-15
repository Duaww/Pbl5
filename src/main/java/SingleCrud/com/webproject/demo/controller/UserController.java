package SingleCrud.com.webproject.demo.controller;

import SingleCrud.com.webproject.demo.model.User;
import SingleCrud.com.webproject.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/hello")
    public String listUser(Model model) {
        model.addAttribute("userList", userService.findAll());
        return "hello";
    }

    @GetMapping("/admin/{account}")
    public String adminPage(Model mode, @PathVariable String account) {
        mode.addAttribute("user", userService.find(account));
        return "admin";
    }

    @GetMapping("/hoidong/{account}")
    public String hoidongPage(Model mode, @PathVariable String account) {
        mode.addAttribute("user", userService.find(account));
        return "hoidong";
    }

    @GetMapping("/canbo/{account}")
    public String canboPage(Model mode, @PathVariable String account) {
        mode.addAttribute("user", userService.find(account));
        return "canbo";
    }

    @GetMapping("/nghiencuusinh/{account}")
    public String ncsinhPage(Model mode, @PathVariable String account) {
        mode.addAttribute("user", userService.find(account));
        return "nghiencuusinh";
    }

    @GetMapping("/failed")
    public String failed() {
        return "failed";
    }

    @GetMapping("/success")
    public String success() {
        return "success";
    }

    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginacc(@ModelAttribute User user, RedirectAttributes redirectAttrs) {
        User userLogin = userService.login(user);
        if (userLogin == null) {
            return "redirect:error";
        }
        String option = userLogin.getRole();
        redirectAttrs.addAttribute("account", user.getTaiKhoan());

        if (option.equals("1")) {
            return "redirect:/admin/{account}";
        } else if (option.equals("2")) {
            return "redirect:/hoidong/{account}";
        } else if (option.equals("3")) {
            return "redirect:/canbo/{account}";
        } else if (option.equals("4")) {
            return "redirect:/nghiencuusinh/{account}";
        }
        return "redirect:/index";
    }

    @GetMapping("/doimatkhau/{account}")
    public String formdoiPass(Model model, @PathVariable("account") String account) {
        model.addAttribute("user", userService.find(account));
        return "doimatkhau";
    }

    @PostMapping("/doimatkhau/{account}")
    public String doiPassPost(@PathVariable("account") String account, @ModelAttribute User newUser, RedirectAttributes redirectAttrs) {
//        System.out.println(newUser);
//        System.out.println(account);
        User user = userService.find(account);
        userService.update(user, newUser.getMatKhau());
        String option = user.getRole();
        redirectAttrs.addAttribute("account", account);
        if (option.equals("1")) {
            return "redirect:/admin/{account}";
        } else if (option.equals("2")) {
            return "redirect:/hoidong/{account}";
        } else if (option.equals("3")) {
            return "redirect:/canbo/{account}";
        } else if (option.equals("4")) {
            return "redirect:/nghiencuusinh/{account}";
        }
        return "redirect:/index";
    }

    @GetMapping("/listhoidong/{account}")
    public String listhoiDong(@PathVariable("account") String account, Model model) {
        List<User> userList = userService.findAll();
        List<User> listHoiDong = new ArrayList<User>();
        for(int i = 0 ; i < userList.size(); i++) {
            if(userList.get(i).getRole().equals("2")) {
                listHoiDong.add(userList.get(i));
            }
        }
        model.addAttribute("listhoidong", listHoiDong);
        return "listhoidong";
    }

    @GetMapping("/listcanbo/{account}")
    public String listcanBo(@PathVariable("account") String account) {

        return "listcanbo";
    }

    @GetMapping("/listncsinh/{account}")
    public String listncSinh(@PathVariable("account") String account) {
        return "listncSinh";
    }


}
