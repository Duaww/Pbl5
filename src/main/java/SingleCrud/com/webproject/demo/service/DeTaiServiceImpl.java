package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.DeTai;
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
    public List<DeTai> findAll() {
        return deTaiRepository.findAll();
    }

    @Override
    public List<DeTai> findByStatus(String status) {
        List<DeTai> statusList = new ArrayList<DeTai>();
        List<DeTai> detaiList = deTaiRepository.findAll();
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
    public DeTai findById(String idDeTai) {
        List<DeTai> detaiList = deTaiRepository.findAll();
        for(int i = 0 ; i < detaiList.size(); i++ ) {
            if (detaiList.get(i).getIDDeTai().equals(idDeTai)) {
                return detaiList.get(i);
            }
        }
        return null;
    }

    @Override
    public void changeStatus(String idDeTai, String status) {
        DeTai detai = this.findById(idDeTai);
        if(status.equals("Pheduyet")) {
            detai.setTrangThai("ok");
        } else if (status.equals("Huybo")) {
            detai.setTrangThai("chuaxet");
        }
        deTaiRepository.save(detai);
    }


}
