package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.Detai;

import java.util.List;

public interface DeTaiService {
    List<Detai> findAll();

    List<Detai> findByStatus(String status);

    Detai findById(String idDeTai);

    void changeStatus(String idDeTai, String status);
}
