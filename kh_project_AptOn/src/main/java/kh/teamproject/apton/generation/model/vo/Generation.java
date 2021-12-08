package kh.teamproject.apton.generation.model.vo;

import java.sql.Date;

//E_NO        NOT NULL NUMBER 
//HOUSE_NUM   NOT NULL NUMBER 
//E_ELEC               NUMBER 
//E_WATER              NUMBER 
//E_HOT_WATER          NUMBER 
//E_HEATING            NUMBER 
//E_GAS                NUMBER 
//E_DATE               DATE  
public class Generation {
	private static final long serialVersionUID = 1111L;
	private int eNo;
	private long houseNum;
	private int eElec;
	private int eWater;
	private int eHotWater;
	private int eHeation;
	private int eGas;
	private Date eDate;
	
	public Generation() {}
	
	public Generation(int eNo, long houseNum, int eElec, int eWater, int eHotWater, int eHeation, int eGas, Date eDate) {
		super();
		this.eNo = eNo;
		this.houseNum = houseNum;
		this.eElec = eElec;
		this.eWater = eWater;
		this.eHotWater = eHotWater;
		this.eHeation = eHeation;
		this.eGas = eGas;
		this.eDate = eDate;
	}

	@Override
	public String toString() {
		return "Generation [eNo=" + eNo + ", houseNum=" + houseNum + ", eElec=" + eElec + ", eWater=" + eWater
				+ ", eHotWater=" + eHotWater + ", eHeation=" + eHeation + ", eGas=" + eGas + ", eDate=" + eDate + "]";
	}
	
	public int geteNo() {
		return eNo;
	}
	public void seteNo(int eNo) {
		this.eNo = eNo;
	}
	public long getHouseNum() {
		return houseNum;
	}
	public void setHouseNum(long houseNum) {
		this.houseNum = houseNum;
	}
	public int geteElec() {
		return eElec;
	}
	public void seteElec(int eElec) {
		this.eElec = eElec;
	}
	public int geteWater() {
		return eWater;
	}
	public void seteWater(int eWater) {
		this.eWater = eWater;
	}
	public int geteHotWater() {
		return eHotWater;
	}
	public void seteHotWater(int eHotWater) {
		this.eHotWater = eHotWater;
	}
	public int geteHeation() {
		return eHeation;
	}
	public void seteHeation(int eHeation) {
		this.eHeation = eHeation;
	}
	public int geteGas() {
		return eGas;
	}
	public void seteGas(int eGas) {
		this.eGas = eGas;
	}
	public Date geteDate() {
		return eDate;
	}
	public void seteDate(Date eDate) {
		this.eDate = eDate;
	}
	
}
