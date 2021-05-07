package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.NguoiThucHien;

import java.util.List;

public interface NguoiThucHienService {
    List<NguoiThucHien> findAll();

    String findIDNguoiThucHien(String idDeTai);

    void add(NguoiThucHien nguoiThucHien);
}
