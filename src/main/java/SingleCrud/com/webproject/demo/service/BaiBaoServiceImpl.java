package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.BaiBao;
import SingleCrud.com.webproject.demo.repository.BaiBaoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BaiBaoServiceImpl implements  BaiBaoService{
    private final BaiBaoRepository baiBaoRepository;

    @Autowired
    public BaiBaoServiceImpl(BaiBaoRepository baiBaoRepository) {
        this.baiBaoRepository = baiBaoRepository;
    }

    @Override
    public List<BaiBao> findAll() {
        return baiBaoRepository.findAll();
    }
}
