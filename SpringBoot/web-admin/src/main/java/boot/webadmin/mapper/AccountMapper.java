package boot.webadmin.mapper;

import boot.webadmin.bean.Account;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AccountMapper {


    public Account getAcct(int id);
}
