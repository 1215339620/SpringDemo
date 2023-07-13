package spring.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import spring.dao.BookDao;
@Repository
public class BookDaoImpl implements BookDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public Integer getPriceByBookId(Integer bookId) {
        String sql="select price from t_book where book_id=?";
        Integer price = jdbcTemplate.queryForObject(sql, Integer.class, bookId);
        return price;
    }

    @Override
    public void updateStock(Integer bookId) {
        String sql="update t_book set stock=stock-1";
        jdbcTemplate.update(sql, bookId);
    }

    @Override
    public void updateMoney(Integer userId, Integer price) {
        String sql="update t_user set balance=balance-? where user_id=?";
        jdbcTemplate.update(sql,price,userId);
    }
}
