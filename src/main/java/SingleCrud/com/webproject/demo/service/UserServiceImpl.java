package SingleCrud.com.webproject.demo.service;


import SingleCrud.com.webproject.demo.model.User;
import SingleCrud.com.webproject.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User find(String account) {
        List<User> users = this.findAll();
        for (int i = 0 ; i < users.size(); i++) {
            if(users.get(i).getTaiKhoan().equals(account)) {
                return users.get(i);
            }
        }
        return null;
    }

    @Override
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

    @Override
    public User updatePass(User user, String newPass) {
        user.setMatKhau(newPass);
        userRepository.save(user);
        return user;
    }

    @Override
    public User update(User user, User newUser) {
        user.setTen(newUser.getTen());
        user.setNgaySinh(newUser.getNgaySinh());
        user.setDiaChi(newUser.getDiaChi());
        user.setSDT(newUser.getSDT());
        user.setGioiTinh(newUser.getGioiTinh());
        user.setGmail(newUser.getGmail());
        userRepository.save(user);
        return user;
    }

    @Override
    public User addUser(User user) {
        User newUser = new User(user.getTaiKhoan(), user.getMatKhau(), user.getTen(), user.getNgaySinh(), user.getGioiTinh(), user.getGmail(), user.getSDT(), user.getDiaChi(), user.getRole());
//        System.out.println(newUser);
        userRepository.save(newUser);
        return newUser;
    }

    @Override
    public User updateStatus(User user, String status) {
        user.setTrangThai(status);
        userRepository.save(user);
        return user;
    }


}
