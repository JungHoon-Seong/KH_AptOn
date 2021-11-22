package kh.teamproject.apton.common_energy_usage.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

//MAINTENANCE_COST   NOT NULL NUMBER 공동 관리비 번호
//M_COST             NOT NULL NUMBER 일반 관리비
//CLEAN_COST         NOT NULL NUMBER 청소비
//SECU_COST          NOT NULL NUMBER 경비비
//ELEVATOR_COST      NOT NULL NUMBER 승강기유지비
//DISIN_COST         NOT NULL NUMBER 소독비
//COMMON_WATER_COST  NOT NULL NUMBER 공용수도료
//COMMON_ELEC_COST   NOT NULL NUMBER 공용전기료
//COMMON_ENERGY_DATE NOT NULL DATE   날짜
//GENERRATION_NUMBER NOT NULL NUMBER 세대수
//PRICE                       NUMBER 총 관리비

public class CommonUsage {

	private int maintenanceCost;
	private int mCost;
	private int cleanCost;
	private int secuCost;
	private int elevatorCost;
	private int disinCost;
	private int comWtCost;
	private int comElCost;
	private Date today;
	private int householdNum;
	private int price;
	
	public CommonUsage() {
		
	}
	public CommonUsage(int maintenanceCost, int mCost, int cleanCost, int secuCost, int elevatorCost, int disinCost,
			int comWtCost, int comElCost, Date today, int householdNum, int price) {
		super();
		this.maintenanceCost = maintenanceCost;
		this.mCost = mCost;
		this.cleanCost = cleanCost;
		this.secuCost = secuCost;
		this.elevatorCost = elevatorCost;
		this.disinCost = disinCost;
		this.comWtCost = comWtCost;
		this.comElCost = comElCost;
		this.today = today;
		this.householdNum = householdNum;
		this.price = price;
	}
	
	public int getMaintenanceCost() {
		return maintenanceCost;
	}
	public void setMaintenanceCost(int maintenanceCost) {
		this.maintenanceCost = maintenanceCost;
	}
	public int getmCost() {
		return mCost;
	}
	public void setmCost(int mCost) {
		this.mCost = mCost;
	}
	public int getCleanCost() {
		return cleanCost;
	}
	public void setCleanCost(int cleanCost) {
		this.cleanCost = cleanCost;
	}
	public int getSecuCost() {
		return secuCost;
	}
	public void setSecuCost(int secuCost) {
		this.secuCost = secuCost;
	}
	public int getElevatorCost() {
		return elevatorCost;
	}
	public void setElevatorCost(int elevatorCost) {
		this.elevatorCost = elevatorCost;
	}
	public int getDisinCost() {
		return disinCost;
	}
	public void setDisinCost(int disinCost) {
		this.disinCost = disinCost;
	}
	public int getComWtCost() {
		return comWtCost;
	}
	public void setComWtCost(int comWtCost) {
		this.comWtCost = comWtCost;
	}
	public int getComElCost() {
		return comElCost;
	}
	public void setComElCost(int comElCost) {
		this.comElCost = comElCost;
	}
	public Date getToday() {
		return today;
	}
	public void setToday(Date today) {
		this.today = today;
	}
	public int getHouseholdNum() {
		return householdNum;
	}
	public void setHouseholdNum(int householdNum) {
		this.householdNum = householdNum;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "CommonUsage [maintenanceCost=" + maintenanceCost + ", mCost=" + mCost + ", cleanCost=" + cleanCost
				+ ", secuCost=" + secuCost + ", elevatorCost=" + elevatorCost + ", disinCost=" + disinCost
				+ ", comWtCost=" + comWtCost + ", comElCost=" + comElCost + ", today=" + today + ", householdNum="
				+ householdNum + ", price=" + price + "]";
	}
	
}
