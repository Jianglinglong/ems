var account = document.getElementById("account");
var place1 = document.getElementById("place1");
account.onfocus=function(){
	place1.style.display="none"
}
account.onblur=function(){
	if(account.value == ""){
		place1.style.display="inline-block";
	}
}

var password = document.getElementById("password");
var place2 = document.getElementById("place2");
password.onfocus=function(){
	place2.style.display="none"
}
password.onblur=function(){
	if(password.value == ""){
		place2.style.display="inline-block";
	}
}

var but_submit = document.getElementById("but_submit");
but_submit.onmouseover=function(){
	but_submit.style.backgroundColor="#0096e6";
	but_submit.style.color="#ccc";
}
but_submit.onmouseout=function(){
	but_submit.style.backgroundColor="#009999";
	but_submit.style.color="#fff";
}


