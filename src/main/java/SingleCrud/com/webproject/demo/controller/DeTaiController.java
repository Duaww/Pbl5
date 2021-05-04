package SingleCrud.com.webproject.demo.controller;

import SingleCrud.com.webproject.demo.model.*;
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
    private final ChuyenMonService chuyenmonService;
    private final LinhVucService linhvucService;
    private final NguoiThucHienService nguoiThucHienService;
    private final DeTaiDangThucHienService deTaiDangThucHienService;

    @Autowired
    public DeTaiController(DeTaiService deTaiService, UserService userService, ChuyenMonService chuyenmonService, LinhVucService linhvucService, NguoiThucHienService nguoiThucHienService, DeTaiDangThucHienService deTaiDangThucHienService) {
        this.deTaiService = deTaiService;
        this.userService = userService;
        this.chuyenmonService = chuyenmonService;
        this.linhvucService = linhvucService;
        this.nguoiThucHienService = nguoiThucHienService;
        this.deTaiDangThucHienService = deTaiDangThucHienService;
    }

    @GetMapping("/listDeTai/{accountView}")
    public String getListDeTai(Model model,  @PathVariable("accountView") String accountView) {
        User viewer = userService.findByName(accountView);
        String status = "";
        List<DeTai> detaiList = deTaiService.findAll();
        Map<User, DeTai> list = new HashMap<User, DeTai>();
        for (int i = 0; i < detaiList.size(); i++) {
            if (!detaiList.get(i).getTrangThai().equals("dangyeucau")){
                list.put(userService.findById(detaiList.get(i).getIDNguoihuongdan()),  detaiList.get(i));
            }
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
        List<DeTai> statusList = deTaiService.findByStatus(status);
        Map<User, DeTai> list = new HashMap<User, DeTai>();
        for (int i = 0; i < statusList.size(); i++) {
            list.put(userService.findById(statusList.get(i).getIDNguoihuongdan()),  statusList.get(i));
        }
        model.addAttribute("list", list);
        return "listDeTai";
    }

    @GetMapping("/chiTietDeTai/{idDeTai}/{accountView}")
    public String getChiTiet(@PathVariable("idDeTai") String idDeTai, @PathVariable("accountView") String accViewer, Model model) {
        DeTai detai = deTaiService.findById(idDeTai);
        List<ChuyenMon> chuyenMonList = chuyenmonService.findAll();
        List<LinhVuc> linhvucList = linhvucService.findAll();
        List<LinhVuc> linhvucCuaDeTai = new ArrayList<LinhVuc>();
        String status = "";
        User viewer = userService.findByName(accViewer);
        for(int i = 0; i < chuyenMonList.size(); i++) {
            String idLinhvuc = "";
            if(chuyenMonList.get(i).getIDDeTai().equals(idDeTai)) {
                idLinhvuc = chuyenMonList.get(i).getIDLinhVuc();
            }
            for(int j = 0; j < linhvucList.size(); j++) {
                if (linhvucList.get(j).getIDLinhVuc().equals(idLinhvuc)) {
                    linhvucCuaDeTai.add(linhvucList.get(j));
                }
            }
        }
        if (linhvucCuaDeTai.size()==0) {
            linhvucCuaDeTai.add(new LinhVuc("chua co linh vuc"));
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

    @GetMapping("/listHuongDan/{accountView}")
    public String getListHuongDan(@PathVariable("accountView") String accountView, Model model) {
        User nguoihuongdan = userService.findByName(accountView);
        List<DeTai> deTaiList = deTaiService.findAll();
        List<NguoiThucHien> nguoiThucHienList = nguoiThucHienService.findAll();
        Map<DeTai, User> listHuongDan = new HashMap<DeTai, User>();

        for (int i = 0; i < deTaiList.size(); i++) {
            if (deTaiList.get(i).getIDNguoihuongdan().equals(nguoihuongdan.getID()) && !deTaiList.get(i).getTrangThai().equals("dangyeucau")) {
                for (int  j = 0; j < nguoiThucHienList.size(); j++) {
                    if (deTaiList.get(i).getIDDeTai().equals(nguoiThucHienList.get(j).getIDDeTai())) {
                        listHuongDan.put(deTaiList.get(i), userService.findById(nguoiThucHienList.get(j).getIDNguoiThucHien()));
                    }
                }
            }
        }
        model.addAttribute("nguoihuongdan", nguoihuongdan);
        model.addAttribute("listHuongDan", listHuongDan);
        return "listHuongDan";
    }

    @GetMapping("/dangThucHien/{accountView}")
    public String getListDangThucHien(@PathVariable("accountView") String accountView, Model model) {
        User viewer = userService.findByName(accountView);
        List<DeTaiDangThucHien> list = deTaiDangThucHienService.findAll();
        List<DeTai> deTaiList = new ArrayList<DeTai>();
        Map<DeTaiDangThucHien ,DeTai> dangThucHienList = new HashMap<DeTaiDangThucHien, DeTai>();
        for (int i = 0 ;i < list.size(); i++) {
            dangThucHienList.put(list.get(i), deTaiService.findById(list.get(i).getIDDeTai()));
        }
        model.addAttribute("viewer", viewer);
        model.addAttribute("listDangThucHien", dangThucHienList);
        return "dangThucHien";
    }


}
