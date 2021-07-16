package com.Payment;

public class Payment implements IMainPayment{
	
	private int pid ;
	private String cardNo ;
	private String cardType ;
	private String expDate ;
	private String cvc ;
	private double amount ;
	private int sid ;
	private int lid ;
	
	public Payment() {
		
	}
	
	public Payment(int pid, String cardNo, String cardType, String expDate, String cvc, double amount, int sid,
			int lid) {
		super();
		this.pid = pid;
		this.cardNo = cardNo;
		this.cardType = cardType;
		this.expDate = expDate;
		this.cvc = cvc;
		this.amount = amount;
		this.sid = sid;
		this.lid = lid;
	}

	public int getPid() {
		return pid;
	}
	
	public void setPid(int pid) {
		this.pid = pid ;
	}

	public String getCardNo() {
		return cardNo;
	}

	public String getCardType() {
		return cardType;
	}

	public String getExpDate() {
		return expDate;
	}

	public String getCvc() {
		return cvc;
	}

	public double getAmount() {
		return amount;
	}

	public int getSid() {
		return sid;
	}

	public int getLid() {
		return lid;
	}
	
	
	
	
	
}
