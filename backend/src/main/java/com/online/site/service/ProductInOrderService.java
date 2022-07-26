package com.online.site.service;

import com.online.site.entity.ProductInOrder;
import com.online.site.entity.User;

public interface ProductInOrderService {
    void update(String itemId, Integer quantity, User user);

    ProductInOrder findOne(String itemId, User user);
}
