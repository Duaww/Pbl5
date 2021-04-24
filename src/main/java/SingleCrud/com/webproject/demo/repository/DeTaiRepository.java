package SingleCrud.com.webproject.demo.repository;

import SingleCrud.com.webproject.demo.model.Detai;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeTaiRepository  extends JpaRepository<Detai, String> {

}
