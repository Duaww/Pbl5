package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.Chuyenmon;
import SingleCrud.com.webproject.demo.repository.ChuyenmonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChuyenmonServiceImpl implements ChuyenmonService{


    private final ChuyenmonRepository chuyenmonRepository;

    @Autowired
    public ChuyenmonServiceImpl(ChuyenmonRepository chuyenmonRepository) {
        this.chuyenmonRepository = chuyenmonRepository;
    }

    @Override
    public List<Chuyenmon> findAll() {
        return chuyenmonRepository.findAll();
    }
}
