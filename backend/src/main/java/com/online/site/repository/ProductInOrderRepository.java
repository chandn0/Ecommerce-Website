package com.online.site.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.online.site.entity.ProductInOrder;

public interface ProductInOrderRepository extends JpaRepository<ProductInOrder, Long> {

}
