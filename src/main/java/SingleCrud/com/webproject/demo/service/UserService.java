package SingleCrud.com.webproject.demo.service;

import SingleCrud.com.webproject.demo.model.User;

import java.util.List;

public interface UserService {
    List<User> findAll();

    User find(String account);

    User login(User user);

    User updatePass(User user, String newPass);

    User update(User user, User newUser);

    User addUser(User newUser);

    User updateStatus(User user, String status);
}
