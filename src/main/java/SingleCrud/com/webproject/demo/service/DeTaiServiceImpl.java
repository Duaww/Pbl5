package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.Detai;
import SingleCrud.com.webproject.demo.repository.DeTaiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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

    @Override
    public List<Detai> findByStatus(String status) {
        List<Detai> statusList = new ArrayList<Detai>();
        List<Detai> detaiList = deTaiRepository.findAll();
        for (int i = 0; i < detaiList.size(); i++) {
            if (detaiList.get(i).getTrangThai().equals(status)) {
                statusList.add(detaiList.get(i));
            }
        }
        if(statusList.isEmpty()) {
            statusList = deTaiRepository.findAll();
        }
        return statusList;
    }

    @Override
    public Detai findById(String idDeTai) {
        List<Detai> detaiList = deTaiRepository.findAll();
        for(int i = 0 ; i < detaiList.size(); i++ ) {
            if (detaiList.get(i).getIDDeTai().equals(idDeTai)) {
                return detaiList.get(i);
            }
        }
        return null;
    }

    @Override
    public void changeStatus(String idDeTai, String status) {
        Detai detai = this.findById(idDeTai);
        if(status.equals("Pheduyet")) {
            detai.setTrangThai("ok");
        } else if (status.equals("Huybo")) {
            detai.setTrangThai("chuaxet");
        }
        deTaiRepository.save(detai);
    }


}
