package dto;

public class MDto {

	String mId;
	String mPw;
	String mName;
	int mGender;
	int mPhone1;
	int mPhone2;
	String mEmail1;
	String mEmail2;
	String mAddress;
	
	public MDto() {
		// TODO Auto-generated constructor stub
	}
	
	public MDto(String mPw, String mName, int mGender, int mPhone1, int mPhone2, String mEmail1, String mEmail2, String mAddress) {
		
		this.mPw = mPw;
		this.mName = mName;
		this.mGender = mGender;
		this.mPhone1 = mPhone1;
		this.mPhone2 = mPhone2;
		this.mEmail1 = mEmail1;
		this.mEmail2 = mEmail2;
		this.mAddress = mAddress;
	}

	public String getmId() {
		return mId;
	}

	public String getmPw() {
		return mPw;
	}

	public void setmPw(String mPw) {
		this.mPw = mPw;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public int getmGender() {
		return mGender;
	}

	public void setmGender(int mGender) {
		this.mGender = mGender;
	}

	public int getmPhone1() {
		return mPhone1;
	}

	public void setmPhone1(int mPhone1) {
		this.mPhone1 = mPhone1;
	}

	public int getmPhone2() {
		return mPhone2;
	}

	public void setmPhone2(int mPhone2) {
		this.mPhone2 = mPhone2;
	}

	public String getmEmail1() {
		return mEmail1;
	}

	public void setmEmail1(String mEmail1) {
		this.mEmail1 = mEmail1;
	}

	public String getmEmail2() {
		return mEmail2;
	}

	public void setmEmail2(String mEmail2) {
		this.mEmail2 = mEmail2;
	}

	public String getmAddress() {
		return mAddress;
	}

	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}
	
}
