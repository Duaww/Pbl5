package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.ChuyenMon;
import SingleCrud.com.webproject.demo.repository.ChuyenMonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChuyenMonServiceImpl implements ChuyenMonService {


    private final ChuyenMonRepository chuyenmonRepository;

    @Autowired
    public ChuyenMonServiceImpl(ChuyenMonRepository chuyenmonRepository) {
        this.chuyenmonRepository = chuyenmonRepository;
    }

    @Override
    public List<ChuyenMon> findAll() {
        return chuyenmonRepository.findAll();
    }
}
