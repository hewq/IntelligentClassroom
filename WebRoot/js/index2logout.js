function show() {
	var aNode = event.srcElement;
	var dtNode = aNode.parentNode;
	var dlNode = dtNode.parentNode;
	var divNode = dlNode.getElementsByTagName("div")[0];
	var listNode = document.getElementById("id3");
	var divNodes = listNode.getElementsByTagName("div");

	if(divNode.className == "open"){
		divNode.className = "close";
	}else{
		divNode.className = "open";
	}


}
function hidden(){
	var aNode = event.srcElement;
	var dtNode = aNode.parentNode;
	var dlNode = dtNode.parentNode;
	var divNode = dlNode.getElementsByTagName("div")[0];
	var listNode = document.getElementById("id3");
	var divNodes = listNode.getElementsByTagName("div");
	
	divNode.className = "close";
}

function F1forward(){
	window.location.replace("RoomF1UILogoutServlet");
}
function F2forward(){
	window.location.replace("RoomF2UILogoutServlet");
}
function F3forward(){
	window.location.replace("RoomF3UILogoutServlet");
}
function F4forward(){
	window.location.replace("RoomF4UILogoutServlet");
}
function F5forward(){
	window.location.replace("RoomF5UILogoutServlet");
}
function F6forward(){
	window.location.replace("RoomF6UILogoutServlet");
}
function ALLforward(){
	window.location.replace("RoomALLUILogoutServlet");
}
function B1ALLforward(){
	window.location.replace("Building_1UILogoutServlet");
}
function B1F1forward(){
	window.location.replace("Building_1F1UILogoutServlet");
}
function B1F2forward(){
	window.location.replace("Building_1F2UILogoutServlet");
}
function B1F3forward(){
	window.location.replace("Building_1F3UILogoutServlet");
}
function B1F4forward(){
	window.location.replace("Building_1F4UILogoutServlet");
}
function B1F5forward(){
	window.location.replace("Building_1F5UILogoutServlet");
}
function B1F6forward(){
	window.location.replace("Building_1F6UILogoutServlet");
}
function B2ALLforward(){
	window.location.replace("Building_2UILogoutServlet");
}
function B2F1forward(){
	window.location.replace("Building_2F1UILogoutServlet");
}
function B2F2forward(){
	window.location.replace("Building_2F2UILogoutServlet");
}
function B2F3forward(){
	window.location.replace("Building_2F3UILogoutServlet");
}
function B2F4forward(){
	window.location.replace("Building_2F4UILogoutServlet");
}
function B2F5forward(){
	window.location.replace("Building_2F5UILogoutServlet");
}
function B2F6forward(){
	window.location.replace("Building_2F6UILogoutServlet");
}
function B3ALLforward(){
	window.location.replace("Building_3UILogoutServlet");
}
function B3F1forward(){
	window.location.replace("Building_3F1UILogoutServlet");
}
function B3F2forward(){
	window.location.replace("Building_3F2UILogoutServlet");
}
function B3F3forward(){
	window.location.replace("Building_3F3UILogoutServlet");
}
function B3F4forward(){
	window.location.replace("Building_3F4UILogoutServlet");
}
function B3F5forward(){
	window.location.replace("Building_3F5UILogoutServlet");
}
function B3F6forward(){
	window.location.replace("Building_3F6UILogoutServlet");
}
function B4ALLforward(){
	window.location.replace("Building_4UILogoutServlet");
}
function B4F1forward(){
	window.location.replace("Building_4F1UILogoutServlet");
}
function B4F2forward(){
	window.location.replace("Building_4F2UILogoutServlet");
}
function B4F3forward(){
	window.location.replace("Building_4F3UILogoutServlet");
}
function B4F4forward(){
	window.location.replace("Building_4F4UILogoutServlet");
}
function B4F5forward(){
	window.location.replace("Building_4F5UILogoutServlet");
}
function B4F6forward(){
	window.location.replace("Building_4F6UILogoutServlet");
}
function B5ALLforward(){
	window.location.replace("Building_5UILogoutServlet");
}
function B5F1forward(){
	window.location.replace("Building_5F1UILogoutServlet");
}
function B5F2forward(){
	window.location.replace("Building_5F2UILogoutServlet");
}
function B5F3forward(){
	window.location.replace("Building_5F3UILogoutServlet");
}
function B5F4forward(){
	window.location.replace("Building_5F4UILogoutServlet");
}
function B5F5forward(){
	window.location.replace("Building_5F5UILogoutServlet");
}
function B5F6forward(){
	window.location.replace("Building_5F6UILogoutServlet");
}
function Registerforward(){
	window.location.replace("RegisterUIServlet");
}
function B1forward(){
	window.open("servlet/Building_1UILogoutServlet");
}
function B2forward(){
	window.location.replace("servlet/Building_2UILogoutServlet");
}
function B3forward(){
	window.location.replace("servlet/Building_3UILogoutServlet");
}
function B4forward(){
	window.location.replace("servlet/Building_4UILogoutServlet");
}
function B5forward(){
	window.location.replace("servlet/Building_5UILogoutServlet");
}