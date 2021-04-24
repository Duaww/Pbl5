package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.Detai;
import SingleCrud.com.webproject.demo.repository.DeTaiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DeTaiServiceImpl implements DeTaiService {

    private final DeTaiRepository deTaiRepository;

    @Autowired
    public DeTaiServiceImpl(DeTaiRepository deTaiRepository) {
        this.deTaiRepository = deTaiRepository;
    }


    @Override
    public List<Detai> findAll() {
        return deTaiRepository.findAll();
    }


}
