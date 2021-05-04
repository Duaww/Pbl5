package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.NguoiThucHien;
import SingleCrud.com.webproject.demo.repository.NguoiThucHienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NguoiThucHienServiceImpl implements NguoiThucHienService {

    private final NguoiThucHienRepository nguoiThucHienRepository;

    @Autowired
    public NguoiThucHienServiceImpl(NguoiThucHienRepository nguoiThucHienRepository) {
        this.nguoiThucHienRepository = nguoiThucHienRepository;
    }


    @Override
    public List<NguoiThucHien> findAll() {
        return nguoiThucHienRepository.findAll();
    }
}
