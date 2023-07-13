package boot.webadmin.service;

import boot.webadmin.bean.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

public interface AccountService {

    Account getAcctById(int id);
}
