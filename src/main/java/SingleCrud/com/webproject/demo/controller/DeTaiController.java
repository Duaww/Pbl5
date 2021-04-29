package SingleCrud.com.webproject.demo.controller;

import SingleCrud.com.webproject.demo.model.Chuyenmon;
import SingleCrud.com.webproject.demo.model.Detai;
import SingleCrud.com.webproject.demo.model.Linhvuc;
import SingleCrud.com.webproject.demo.model.User;
import SingleCrud.com.webproject.demo.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class DeTaiController {
    private final DeTaiService deTaiService;
    private final UserService userService;
    private final ChuyenmonService chuyenmonService;
    private final LinhvucService  linhvucService;

    @Autowired
    public DeTaiController(DeTaiService deTaiService, UserService userService, ChuyenmonService chuyenmonService, LinhvucService linhvucService) {
        this.deTaiService = deTaiService;
        this.userService = userService;
        this.chuyenmonService = chuyenmonService;
        this.linhvucService = linhvucService;
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

    @PostMapping("/listDeTai/{accountView}")
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

    @GetMapping("/chiTietDeTai/{idDeTai}/{accountView}")
    public String getChiTiet(@PathVariable("idDeTai") String idDeTai, @PathVariable("accountView") String accViewer, Model model) {
        Detai detai = deTaiService.findById(idDeTai);
        List<Chuyenmon> chuyenmonList = chuyenmonService.findAll();
        List<Linhvuc> linhvucList = linhvucService.findAll();
        List<Linhvuc> linhvucCuaDeTai = new ArrayList<Linhvuc>();
        String status = "";
        User viewer = userService.findByName(accViewer);
        for(int i = 0 ; i < chuyenmonList.size(); i++) {
            String idLinhvuc = "";
            if(chuyenmonList.get(i).getIDDeTai().equals(idDeTai)) {
                idLinhvuc = chuyenmonList.get(i).getIDLinhVuc();
            }
            for(int j = 0; j < linhvucList.size(); j++) {
                if (linhvucList.get(j).getIDLinhVuc().equals(idLinhvuc)) {
                    linhvucCuaDeTai.add(linhvucList.get(j));
                }
            }
        }
        if (linhvucCuaDeTai.size()==0) {
            linhvucCuaDeTai.add(new Linhvuc("chua co linh vuc"));
        }
        User nguoiHuongDan = userService.findById(detai.getIDNguoihuongdan());
        model.addAttribute("nguoiHuongDan", nguoiHuongDan);
        model.addAttribute("detai", detai);
        model.addAttribute("linhVucCuaDeTai", linhvucCuaDeTai);
        model.addAttribute("viewer", viewer);
        model.addAttribute("status", status);
//        System.out.println(detai);
//        System.out.println(linhvucCuaDeTai);
        return "chiTietDeTai";
    }

    @PostMapping("/chiTietDeTai/{idDeTai}/{accountView}")
    public String postPheDuyet(Model model, @PathVariable("idDeTai") String idDeTai, @PathVariable("accountView") String accViewer, @ModelAttribute("status") String status) {
//        System.out.println(status);
        deTaiService.changeStatus(idDeTai, status);
        return getChiTiet(idDeTai, accViewer, model);
    }
}
