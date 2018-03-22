/**
 * 
 */
function loginConfirm() {
	var form = document.login_frm;
	
	if(!form.mId.value) {
		alert("아이디를 입력해주세요.");
		form.mId.focus();
		return false;
	}
	
	if(!form.mPw.value) {
		alert("비밀번호를 입력해주세요.");
		form.mPw.focus();
		return false;
	}
	
	form.submit();
}

function joinConfirm() {
	var form = document.reg_frm;
	
	if(!form.mId.value) {
		alert("아이디를 입력해주세요.");
		form.mId.focus();
		return false;
	}
	
	if(form.mId.value.length < 4 || form.mId.value.length > 12) {
		alert("아이디는 4글자 이상 12글자 이하로 입력해주세요.");
		form.mId.focus();
		return false;
	}
	
	if(!form.mPw.value) {
		alert("비밀번호를 입력해주세요.");
		form.mPw.focus();
		return false;
	}
	
	if(form.mPw.value.length < 4 || form.mPw.value.length > 12) {
		alert("비밀번호는 4글자 이상 12글자 이하로 입력해주세요.");
		form.mPw.focus();
		return false;
	}
	
	if(form.mPw.value !== form.mPw_check.value) {
		alert("비밀번호재입력을 확인해주세요.");
		form.mPw_check.focus();
		return false;
	}
	
	if(!form.mName.value) {
		alert("이름을 입력해주세요.");
		form.mName.focus();
		return false;
	}
	
	if(form.mName.value.length < 2 || form.mName.value.length > 8) {
		alert("이름을 제대로 입력해주세요.");
		form.mName.focus();
		return false;
	}
	
	if(!isNaN(form.mName.value)) {
		alert("이름은 문자만 입력 가능합니다.");
		form.mName.focus();
		return false;
	}
	
	if(!form.mPhone1.value) {
		alert("연락처를 입력해주세요.");
		form.mPhone1.focus();
		return false;
	}
	
	if(form.mPhone1.value.length !== 4) {
		alert("연락처를 제대로 입력해주세요.");
		form.mPhone1.focus();
		return false;
	}
	
	if(isNaN(form.mPhone1.value)) {
		alert("연락처를 제대로 입력해주세요.");
		form.mPhone1.focus();
		return false;
	}
	
	if(!form.mPhone2.value) {
		alert("연락처를 입력해주세요.");
		form.mPhone2.focus();
		return false;
	}
	
	if(form.mPhone2.value.length !== 4) {
		alert("연락처를 제대로 입력해주세요.");
		form.mPhone2.focus();
		return false;
	}
	
	if(isNaN(form.mPhone2.value)) {
		alert("연락처를 제대로 입력해주세요.");
		form.mPhone2.focus();
		return false;
	}
	
	if(!form.mEmail1.value) {
		alert("이메일을 입력해주세요.");
		form.mEmail1.focus();
		return false;
	}
	
	if(!form.mEmail2.value) {
		alert("이메일을 입력해주세요.");
		form.mEmail2.focus();
		return false;
	}
	
	if(!form.mAddress.value) {
		alert("주소를 입력해주세요.");
		form.mAddress.focus();
		return false;
	}
	
	form.submit();
}

function modifyConfirm() {
	var form = document.reg_frm;
	
	if(!form.mName.value) {
		alert("이름을 입력해주세요.");
		form.mName.focus();
		return false;
	}
	
	if(form.mName.value.length < 2 || form.mName.value.length > 8) {
		alert("이름을 제대로 입력해주세요.");
		form.mName.focus();
		return false;
	}
	
	if(!isNaN(form.mName.value)) {
		alert("이름은 문자만 입력 가능합니다.");
		form.mName.focus();
		return false;
	}
	
	if(!form.mPhone1.value) {
		alert("연락처를 입력해주세요.");
		form.mPhone1.focus();
		return false;
	}
	
	if(form.mPhone1.value.length !== 4) {
		alert("연락처를 제대로 입력해주세요.");
		form.mPhone1.focus();
		return false;
	}
	
	if(isNaN(form.mPhone1.value)) {
		alert("연락처를 제대로 입력해주세요.");
		form.mPhone1.focus();
		return false;
	}
	
	if(!form.mPhone2.value) {
		alert("연락처를 입력해주세요.");
		form.mPhone2.focus();
		return false;
	}
	
	if(form.mPhone2.value.length !== 4) {
		alert("연락처를 제대로 입력해주세요.");
		form.mPhone2.focus();
		return false;
	}
	
	if(isNaN(form.mPhone2.value)) {
		alert("연락처를 제대로 입력해주세요.");
		form.mPhone2.focus();
		return false;
	}
	
	if(!form.mEmail1.value) {
		alert("이메일을 입력해주세요.");
		form.mEmail1.focus();
		return false;
	}
	
	if(!form.mEmail2.value) {
		alert("이메일을 입력해주세요.");
		form.mEmail2.focus();
		return false;
	}
	
	if(!form.mAddress.value) {
		alert("주소를 입력해주세요.");
		form.mAddress.focus();
		return false;
	}
	
	form.submit();
}