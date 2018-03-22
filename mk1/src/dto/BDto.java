package dto;

import java.sql.Timestamp;

public class BDto {

	int bIdx;
	String bId;
	String bTitle;
	String bContent;
	Timestamp bDate;
	int bHit;
	
	public BDto() {
		
	}
	
	public BDto(int bIdx, String bId, String bTitle, Timestamp bDate, int bHit) {
		
		this.bIdx = bIdx;
		this.bId = bId;
		this.bTitle = bTitle;
		this.bDate = bDate;
		this.bHit = bHit;
	}
	
	public BDto(int bIdx, String bId, String bTitle, String bContent, Timestamp bDate, int bHit) {
		
		this.bIdx = bIdx;
		this.bId = bId;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bDate = bDate;
		this.bHit = bHit;
	}

	public int getbIdx() {
		return bIdx;
	}

	public void setbIdx(int bIdx) {
		this.bIdx = bIdx;
	}

	public String getbId() {
		return bId;
	}

	public void setbId(String bId) {
		this.bId = bId;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public Timestamp getbDate() {
		return bDate;
	}

	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}

	public int getbHit() {
		return bHit;
	}

	public void setbHit(int bHit) {
		this.bHit = bHit;
	}

}
