package com.spring.Model;

import java.sql.Date;

public class ManjobVO {

	//private Date regDate;
	private int jobNum;
	private String jobName;
	private String jobBirth;
	private String jobEmail;
	private String jobPhone;
	private String jobGender;
	private String jobsear;

	
	public int getJobNum() {
		return jobNum;
	}
	public void setJobNum(int jobNum) {
		this.jobNum = jobNum;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getJobBirth() {
		return jobBirth;
	}
	public void setJobBirth(String jobBirth) {
		this.jobBirth = jobBirth;
	}
	public String getJobEmail() {
		return jobEmail;
	}
	public void setJobEmail(String jobEmail) {
		this.jobEmail = jobEmail;
	}
	public String getJobPhone() {
		return jobPhone;
	}
	public void setJobPhone(String jobPhone) {
		this.jobPhone = jobPhone;
	}
	public String getJobGender() {
		return jobGender;
	}
	public void setJobGender(String jobGender) {
		this.jobGender = jobGender;
	}
	public String getJobsear() {
		return jobsear;
	}
	public void setJobsear(String jobsear) {
		this.jobsear = jobsear;
	}
}
