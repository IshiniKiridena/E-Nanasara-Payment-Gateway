package com.Payment;

public class CashPay implements IMainPayment{

	private int pid ;
	private int sid ;
	private double amount ;
	private int lid ;
	private String bank ;
	private String bBranch;
	private String transactionNo;
	
	public int getPid() {
		return this.pid ;
	}

	public void setPid(int pid) {
	 this.pid = pid ;
	}

	public String getBank() {
		return bank;
	}

	public String getbBranch() {
		return bBranch;
	}

	public String getTransactionNo() {
		return transactionNo;
	}

	public double getAmount() {
		return this.amount ;
	}

	public int getSid() {
		return this.sid;
	}


	public int getLid() {
		return this.lid;
	}

}
