package SingleCrud.com.webproject.demo.controller;

import SingleCrud.com.webproject.demo.model.Detai;
import SingleCrud.com.webproject.demo.model.User;
import SingleCrud.com.webproject.demo.service.DeTaiService;
import SingleCrud.com.webproject.demo.service.UserService;
import SingleCrud.com.webproject.demo.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class DeTaiController {
    private final DeTaiService deTaiService;
    private final UserService userService;

    @Autowired
    public DeTaiController(DeTaiService deTaiService, UserService userService) {
        this.deTaiService = deTaiService;
        this.userService = userService;
    }

    @GetMapping("/listDeTai/{accountView}")
    public String getListDeTai(Model model,  @PathVariable("accountView") String accountView) {
        User viewer = userService.findByName(accountView);
        String status = "";
        List<Detai> detaiList = deTaiService.findAll();
        Map<User, Detai> list = new HashMap<User, Detai>();
        for (int i = 0; i < detaiList.size(); i++) {
            list.put(userService.findById(detaiList.get(i).getIDNguoihuongdan()),  detaiList.get(i));
        }
        model.addAttribute("viewer", viewer);
        model.addAttribute("list",  list);
        model.addAttribute("status", status);
        return "listDetai";
    }

    @PostMapping("listDeTai/{accountView}")
    public String postListDeTai(Model model, @PathVariable("accountView") String accountView, @ModelAttribute("status") String status) {
        User viewer = userService.findByName(accountView);
        model.addAttribute("viewer", viewer);
        List<Detai> statusList = deTaiService.findByStatus(status);
        Map<User, Detai> list = new HashMap<User, Detai>();
        for (int i = 0; i < statusList.size(); i++) {
            list.put(userService.findById(statusList.get(i).getIDNguoihuongdan()),  statusList.get(i));
        }
        model.addAttribute("list", list);
        return "listDeTai";
    }
}
