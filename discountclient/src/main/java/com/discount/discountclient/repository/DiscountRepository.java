package com.discount.discountclient.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.discount.discountclient.entity.*;

public interface DiscountRepository extends JpaRepository<Discount, String> {

}
