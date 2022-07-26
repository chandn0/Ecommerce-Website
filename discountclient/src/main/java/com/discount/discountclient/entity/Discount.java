package com.discount.discountclient.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data

@Table(name = "discount")
@Entity
public class Discount {

	@Id
	@Column(name = "id")
	private String id;
	@Column(name = "code")
	private String code;
	@Column(name = "percentage")
	private Integer percentage;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getCode() {
		return code;
	}

	public Integer getPercentage() {
		return percentage;
	}

	public void setPercentage(Integer percentage1) {
		this.percentage = percentage1;
	}

	public Discount() {

	}

	public Discount(String id, String code, Integer percentage) {
		this.id = id;
		this.code = code;
		this.percentage = percentage;
	}

}
