package SingleCrud.com.webproject.demo.repository;

import SingleCrud.com.webproject.demo.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

}
