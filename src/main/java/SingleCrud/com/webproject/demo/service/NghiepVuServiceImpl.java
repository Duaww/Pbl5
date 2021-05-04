package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.NghiepVu;
import SingleCrud.com.webproject.demo.repository.NghiepVuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NghiepVuServiceImpl implements NghiepVuService {

    private final NghiepVuRepository nghiepVuRepository;

    @Autowired
    public NghiepVuServiceImpl(NghiepVuRepository nghiepVuRepository) {
        this.nghiepVuRepository = nghiepVuRepository;
    }



    @Override
    public List<NghiepVu> findAll() {
        return nghiepVuRepository.findAll();
    }
}
