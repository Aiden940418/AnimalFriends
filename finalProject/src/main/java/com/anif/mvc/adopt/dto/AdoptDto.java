package com.anif.mvc.adopt.dto;

import java.sql.Date;

public class AdoptDto {
	

		
		private int aNo;
		private String mNo;
		private String aArea;
		private String aType;
		private String aTitle;
		private Date aDate;
		private int aCount;
		private String anmName;
		private int anmAge;
		private String anmBreed;
		private String anmGender;
		private String anmVcnYn;
		private String anmNtrYn;
		private String aPhone;
		private String aMemo;
		
		
		
		public AdoptDto() {
			super();
		}



		public AdoptDto(int aNo, String mNo, String aArea, String aType, String aTitle, Date aDate, int aCount,
				String anmName, int anmAge, String anmBreed, String anmGender, String anmVcnYn, String anmNtrYn,
				String aPhone, String aMemo) {
			super();
			this.aNo = aNo;
			this.mNo = mNo;
			this.aArea = aArea;
			this.aType = aType;
			this.aTitle = aTitle;
			this.aDate = aDate;
			this.aCount = aCount;
			this.anmName = anmName;
			this.anmAge = anmAge;
			this.anmBreed = anmBreed;
			this.anmGender = anmGender;
			this.anmVcnYn = anmVcnYn;
			this.anmNtrYn = anmNtrYn;
			this.aPhone = aPhone;
			this.aMemo = aMemo;
		}



		public int getaNo() {
			return aNo;
		}



		public void setaNo(int aNo) {
			this.aNo = aNo;
		}



		public String getmNo() {
			return mNo;
		}



		public void setmNo(String mNo) {
			this.mNo = mNo;
		}



		public String getaArea() {
			return aArea;
		}



		public void setaArea(String aArea) {
			this.aArea = aArea;
		}



		public String getaType() {
			return aType;
		}



		public void setaType(String aType) {
			this.aType = aType;
		}



		public String getaTitle() {
			return aTitle;
		}



		public void setaTitle(String aTitle) {
			this.aTitle = aTitle;
		}



		public Date getaDate() {
			return aDate;
		}



		public void setaDate(Date aDate) {
			this.aDate = aDate;
		}



		public int getaCount() {
			return aCount;
		}



		public void setaCount(int aCount) {
			this.aCount = aCount;
		}



		public String getAnmName() {
			return anmName;
		}



		public void setAnmName(String anmName) {
			this.anmName = anmName;
		}



		public int getAnmAge() {
			return anmAge;
		}



		public void setAnmAge(int anmAge) {
			this.anmAge = anmAge;
		}



		public String getAnmBreed() {
			return anmBreed;
		}



		public void setAnmBreed(String anmBreed) {
			this.anmBreed = anmBreed;
		}



		public String getAnmGender() {
			return anmGender;
		}



		public void setAnmGender(String anmGender) {
			this.anmGender = anmGender;
		}



		public String getAnmVcnYn() {
			return anmVcnYn;
		}



		public void setAnmVcnYn(String anmVcnYn) {
			this.anmVcnYn = anmVcnYn;
		}



		public String getAnmNtrYn() {
			return anmNtrYn;
		}



		public void setAnmNtrYn(String anmNtrYn) {
			this.anmNtrYn = anmNtrYn;
		}



		public String getaPhone() {
			return aPhone;
		}



		public void setaPhone(String aPhone) {
			this.aPhone = aPhone;
		}



		public String getaMemo() {
			return aMemo;
		}



		public void setaMemo(String aMemo) {
			this.aMemo = aMemo;
		}
		
		
		
		
		


}
