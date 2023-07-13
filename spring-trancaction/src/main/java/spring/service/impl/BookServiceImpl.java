package spring.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import spring.dao.BookDao;
import spring.service.BookService;
@Transactional
@Service
public class BookServiceImpl implements BookService {
    @Autowired
    private BookDao bookDao;
    @Override
    public void buyBook(Integer userId, Integer bookId) {
        //获取书的价格
        Integer price= bookDao.getPriceByBookId(bookId);
        //更新书的库存
        bookDao.updateStock(bookId);
        //更新用户余额
        bookDao.updateMoney(userId,price);
    }
}
