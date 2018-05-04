package model;

import java.util.Date;

public class RtBookingBean {

	private String mail;
	private Integer bgId;
	private String crName;
	private String crPhone;
	private Integer bgPeople;
	private String bgDate;
	private String bgPeriod;
	private Integer cnChair;
	private Integer cnTable;
	private String bgNote;
	private Date reTime;
	
	@Override
	public String toString() {
		return "RtBookingBean [mail=" + mail + ", bgId=" + bgId + ", crName=" + crName + ", crPhone=" + crPhone
				+ ", bgPeople=" + bgPeople + ", bgDate=" + bgDate + ", bgPeriod=" + bgPeriod + ", cnChair=" + cnChair
				+ ", cnTable=" + cnTable + ", bgNote=" + bgNote + ", reTime=" + reTime + "]";
	}

	public RtBookingBean(String mail, Integer bgId, String crName, String crPhone, Integer bgPeople, String bgDate,
			String bgPeriod, Integer cnChair, Integer cnTable, String bgNote, Date reTime) {
		super();
		this.mail = mail;
		this.bgId = bgId;
		this.crName = crName;
		this.crPhone = crPhone;
		this.bgPeople = bgPeople;
		this.bgDate = bgDate;
		this.bgPeriod = bgPeriod;
		this.cnChair = cnChair;
		this.cnTable = cnTable;
		this.bgNote = bgNote;
		this.reTime = reTime;
	}

	public RtBookingBean() {
		super();
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public Integer getBgId() {
		return bgId;
	}

	public void setBgId(Integer bgId) {
		this.bgId = bgId;
	}

	public String getCrName() {
		return crName;
	}

	public void setCrName(String crName) {
		this.crName = crName;
	}

	public String getCrPhone() {
		return crPhone;
	}

	public void setCrPhone(String crPhone) {
		this.crPhone = crPhone;
	}

	public Integer getBgPeople() {
		return bgPeople;
	}

	public void setBgPeople(Integer bgPeople) {
		this.bgPeople = bgPeople;
	}

	public String getBgDate() {
		return bgDate;
	}

	public void setBgDate(String bgDate) {
		this.bgDate = bgDate;
	}

	public String getBgPeriod() {
		return bgPeriod;
	}

	public void setBgPeriod(String bgPeriod) {
		this.bgPeriod = bgPeriod;
	}

	public Integer getCnChair() {
		return cnChair;
	}

	public void setCnChair(Integer cnChair) {
		this.cnChair = cnChair;
	}

	public Integer getCnTable() {
		return cnTable;
	}

	public void setCnTable(Integer cnTable) {
		this.cnTable = cnTable;
	}

	public String getBgNote() {
		return bgNote;
	}

	public void setBgNote(String bgNote) {
		this.bgNote = bgNote;
	}

	public Date getReTime() {
		return reTime;
	}

	public void setReTime(Date reTime) {
		this.reTime = reTime;
	}
	

	
}

