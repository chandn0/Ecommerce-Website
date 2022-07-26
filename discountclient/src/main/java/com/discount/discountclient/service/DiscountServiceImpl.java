package com.discount.discountclient.service;

import java.util.List;
import com.discount.discountclient.*;
import com.discount.discountclient.entity.Discount;
import com.discount.discountclient.repository.DiscountRepository;
import com.discount.discountclient.service.impl.DiscountService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DiscountServiceImpl implements DiscountService {

	@Autowired
	DiscountRepository discountRepository;

	@Override
	@Transactional
	public Discount createCoupon(String code, Integer percentage) {
		Discount coupon = new Discount();
		coupon.setId(code);
		coupon.setPercentage(percentage);
		coupon.setCode(code);
		return discountRepository.save(coupon);
	}

	@Override
	@Transactional
	public Page<Discount> findAll(PageRequest request) {
		return discountRepository.findAll(request);

	}

	@Override
	@Transactional
	public void deleteCoupon(String code) {
		discountRepository.deleteById(code);
	}

	@Override
	@Transactional
	public List<Discount> findAll() {
		return discountRepository.findAll();
	}

}
