package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.LinhVuc;
import SingleCrud.com.webproject.demo.repository.LinhVucRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LinhVucServiceImpl implements LinhVucService {

    private final LinhVucRepository linhvucRepository;

    @Autowired
    public LinhVucServiceImpl(LinhVucRepository linhvucRepository) {
        this.linhvucRepository = linhvucRepository;
    }


    @Override
    public List<LinhVuc> findAll() {
        return linhvucRepository.findAll();
    }
}
