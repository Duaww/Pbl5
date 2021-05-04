package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.DeTaiDangThucHien;
import SingleCrud.com.webproject.demo.repository.DeTaiDangThucHienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DeTaiDangThucHienServiceImpl implements DeTaiDangThucHienService {

    private final DeTaiDangThucHienRepository deTaiDangThucHienRepository;

    @Autowired
    public DeTaiDangThucHienServiceImpl(DeTaiDangThucHienRepository deTaiDangThucHienRepository) {
        this.deTaiDangThucHienRepository = deTaiDangThucHienRepository;
    }


    @Override
    public List<DeTaiDangThucHien> findAll() {
        return deTaiDangThucHienRepository.findAll();
    }
}
