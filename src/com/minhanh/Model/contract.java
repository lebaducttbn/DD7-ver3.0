package com.minhanh.Model;

public class contract {
	private int contract_id;
	private String contract_name;
	private int contract_customer_id;
	private int contract_tour_id;
	private String contract_start_date;
	private String contract_finish_date;
	private String contract_founded_date;
	private String contract_costs_date;
	private String contract_payment;
	
	public contract() {
		
	}
	
	
	public contract(int contract_id, String contract_name, int contract_customer_id, int contract_tour_id,
			String contract_start_date, String contract_finish_date, String contract_founded_date,
			String contract_costs_date, String contract_payment) {
		super();
		this.contract_id = contract_id;
		this.contract_name = contract_name;
		this.contract_customer_id = contract_customer_id;
		this.contract_tour_id = contract_tour_id;
		this.contract_start_date = contract_start_date;
		this.contract_finish_date = contract_finish_date;
		this.contract_founded_date = contract_founded_date;
		this.contract_costs_date = contract_costs_date;
		this.contract_payment = contract_payment;
	}

	public int getContract_id() {
		return contract_id;
	}
	public void setContract_id(int contract_id) {
		this.contract_id = contract_id;
	}
	public String getContract_name() {
		return contract_name;
	}
	public void setContract_name(String contract_name) {
		this.contract_name = contract_name;
	}
	public int getContract_customer_id() {
		return contract_customer_id;
	}
	public void setContract_customer_id(int contract_customer_id) {
		this.contract_customer_id = contract_customer_id;
	}
	public int getContract_tour_id() {
		return contract_tour_id;
	}
	public void setContract_tour_id(int contract_tour_id) {
		this.contract_tour_id = contract_tour_id;
	}
	public String getContract_start_date() {
		return contract_start_date;
	}
	public void setContract_start_date(String contract_start_date) {
		this.contract_start_date = contract_start_date;
	}
	public String getContract_finish_date() {
		return contract_finish_date;
	}
	public void setContract_finish_date(String contract_finish_date) {
		this.contract_finish_date = contract_finish_date;
	}
	public String getContract_founded_date() {
		return contract_founded_date;
	}
	public void setContract_founded_date(String contract_founded_date) {
		this.contract_founded_date = contract_founded_date;
	}
	public String getContract_costs_date() {
		return contract_costs_date;
	}
	public void setContract_costs_date(String contract_costs_date) {
		this.contract_costs_date = contract_costs_date;
	}
	public String getContract_payment() {
		return contract_payment;
	}
	public void setContract_payment(String contract_payment) {
		this.contract_payment = contract_payment;
	}
	
}
