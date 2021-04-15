package SingleCrud.com.webproject.demo.service;


import SingleCrud.com.webproject.demo.model.User;
import SingleCrud.com.webproject.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public User find(String account) {
        List<User> users = this.findAll();
        for (int i = 0 ; i < users.size(); i++) {
            if(users.get(i).getTaiKhoan().equals(account)) {
                return users.get(i);
            }
        }
        return null;
    }

    public User login(User user) {
        List<User> users = this.findAll();
        List<String> acc = new ArrayList<String>();
        for (int i = 0 ; i < users.size(); i++) {
            acc.add(users.get(i).getTaiKhoan());
        }

        int index =  acc.indexOf(user.getTaiKhoan());
        if(index != - 1) {
            if (!user.getMatKhau().equals(users.get(index).getMatKhau())) {
//                System.out.println("nahhh!!!");
                return null;
            } else {
                return users.get(index);
            }
        }
        return null;

    }

    public User update(User user, String newPass) {
        user.setMatKhau(newPass);
        userRepository.save(user);
        return user;
    }



}
