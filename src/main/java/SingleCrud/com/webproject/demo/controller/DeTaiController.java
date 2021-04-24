package SingleCrud.com.webproject.demo.controller;

import SingleCrud.com.webproject.demo.model.Detai;
import SingleCrud.com.webproject.demo.service.DeTaiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class DeTaiController {
    private final DeTaiService deTaiService;

    @Autowired
    public DeTaiController(DeTaiService deTaiService) {
        this.deTaiService = deTaiService;
    }

    @GetMapping("/listDeTai")
    public String getListDeTai(Model model) {
        List<Detai> detaiList = deTaiService.findAll();
        model.addAttribute("deTaiList",  detaiList);
        return "listDetai";
    }
}
