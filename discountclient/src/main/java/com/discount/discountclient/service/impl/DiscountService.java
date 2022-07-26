package com.discount.discountclient.service.impl;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import com.discount.discountclient.entity.Discount;

public interface DiscountService {

	Discount createCoupon(String code, Integer percentagInteger);

	Page<Discount> findAll(PageRequest request);

	void deleteCoupon(String code);

	List<Discount> findAll();

}
