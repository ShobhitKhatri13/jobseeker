package myentities;

import javax.persistence.*;


@Entity
@Table(name="addjob")
public class Newjob 
{
@Id
@Column(name="jobid")
private int jobid;

@Column(name="cmpnm")
private String cmpnm;

@Column(name="location")
private String location;

@Column(name="skill")
private String skill;

@Column(name="salary")
private int pack;

public Newjob()
{
	
	jobid=0;
	cmpnm="";
	location="";
	skill="";
	pack=0;
}

public int getJobid() {
	return jobid;
}

public void setJobid(int jobid) {
	this.jobid = jobid;
}

public String getCmpnm() {
	return cmpnm;
}

public void setCmpnm(String cmpnm) {
	this.cmpnm = cmpnm;
}

public String getLocation() {
	return location;
}

public void setLocation(String location) {
	this.location = location;
}

public String getSkill() {
	return skill;
}

public void setSkill(String skill) {
	this.skill = skill;
}

public int getPack() {
	return pack;
}

public void setPack(int pack) {
	this.pack = pack;
}


}
