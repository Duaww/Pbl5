package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.Linhvuc;
import SingleCrud.com.webproject.demo.repository.LinhvucRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LinhvucServiceImpl implements LinhvucService{

    private final LinhvucRepository linhvucRepository;

    @Autowired
    public LinhvucServiceImpl(LinhvucRepository linhvucRepository) {
        this.linhvucRepository = linhvucRepository;
    }


    @Override
    public List<Linhvuc> findAll() {
        return linhvucRepository.findAll();
    }
}
