package boot.webadmin.service.impl;

import boot.webadmin.bean.Account;
import boot.webadmin.mapper.AccountMapper;
import boot.webadmin.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountMapper accountMapper;

    public Account getAcctById(int id){
        return accountMapper.getAcct(id);
    }
}
