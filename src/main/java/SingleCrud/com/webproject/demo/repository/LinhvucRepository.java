package SingleCrud.com.webproject.demo.repository;

import SingleCrud.com.webproject.demo.model.Linhvuc;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LinhvucRepository extends JpaRepository<Linhvuc, String> {
}
