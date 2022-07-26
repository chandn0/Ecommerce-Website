package com.online.site.request.response;

import java.util.List;

import com.online.site.entity.ProductInfo;

public class ProductInfoResponse {

	private List<ProductInfo> productList;

	public List<ProductInfo> getProductList() {
		return productList;
	}

	public void setProductList(List<ProductInfo> productList) {
		this.productList = productList;
	}

}
