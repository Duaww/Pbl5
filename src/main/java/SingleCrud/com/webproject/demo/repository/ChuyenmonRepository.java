package SingleCrud.com.webproject.demo.repository;

import SingleCrud.com.webproject.demo.model.Chuyenmon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChuyenmonRepository extends JpaRepository<Chuyenmon, String> {
}
