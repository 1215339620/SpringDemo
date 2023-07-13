package boot.webadmin.service.impl;

import boot.webadmin.bean.User;
import boot.webadmin.mapper.UserMapper;
import boot.webadmin.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper,User> implements UserService {


}
