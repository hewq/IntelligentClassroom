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
function showperson() {
	var aNode = document.getElementById("renyuan");
	if(aNode.className == "open"){
		aNode.className = "close";
	}else{
		aNode.className = "open";
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
	window.location.replace("RoomF1UIServlet");
}
function F2forward(){
	window.location.replace("RoomF2UIServlet");
}
function F3forward(){
	window.location.replace("RoomF3UIServlet");
}
function F4forward(){
	window.location.replace("RoomF4UIServlet");
}
function F5forward(){
	window.location.replace("RoomF5UIServlet");
}
function F6forward(){
	window.location.replace("RoomF6UIServlet");
}
function ALLforward(){
	window.location.replace("RoomALLUIServlet");
}
function B1ALLforward(){
	window.location.replace("Building_1UIServlet");
}
function B1F1forward(){
	window.location.replace("Building_1F1UIServlet");
}
function B1F2forward(){
	window.location.replace("Building_1F2UIServlet");
}
function B1F3forward(){
	window.location.replace("Building_1F3UIServlet");
}
function B1F4forward(){
	window.location.replace("Building_1F4UIServlet");
}
function B1F5forward(){
	window.location.replace("Building_1F5UIServlet");
}
function B1F6forward(){
	window.location.replace("Building_1F6UIServlet");
}
function B2ALLforward(){
	window.location.replace("Building_2UIServlet");
}
function B2F1forward(){
	window.location.replace("Building_2F1UIServlet");
}
function B2F2forward(){
	window.location.replace("Building_2F2UIServlet");
}
function B2F3forward(){
	window.location.replace("Building_2F3UIServlet");
}
function B2F4forward(){
	window.location.replace("Building_2F4UIServlet");
}
function B2F5forward(){
	window.location.replace("Building_2F5UIServlet");
}
function B2F6forward(){
	window.location.replace("Building_2F6UIServlet");
}
function B3ALLforward(){
	window.location.replace("Building_3UIServlet");
}
function B3F1forward(){
	window.location.replace("Building_3F1UIServlet");
}
function B3F2forward(){
	window.location.replace("Building_3F2UIServlet");
}
function B3F3forward(){
	window.location.replace("Building_3F3UIServlet");
}
function B3F4forward(){
	window.location.replace("Building_3F4UIServlet");
}
function B3F5forward(){
	window.location.replace("Building_3F5UIServlet");
}
function B3F6forward(){
	window.location.replace("Building_3F6UIServlet");
}
function B4ALLforward(){
	window.location.replace("Building_4UIServlet");
}
function B4F1forward(){
	window.location.replace("Building_4F1UIServlet");
}
function B4F2forward(){
	window.location.replace("Building_4F2UIServlet");
}
function B4F3forward(){
	window.location.replace("Building_4F3UIServlet");
}
function B4F4forward(){
	window.location.replace("Building_4F4UIServlet");
}
function B4F5forward(){
	window.location.replace("Building_4F5UIServlet");
}
function B4F6forward(){
	window.location.replace("Building_4F6UIServlet");
}
function B5ALLforward(){
	window.location.replace("Building_5UIServlet");
}
function B5F1forward(){
	window.location.replace("Building_5F1UIServlet");
}
function B5F2forward(){
	window.location.replace("Building_5F2UIServlet");
}
function B5F3forward(){
	window.location.replace("Building_5F3UIServlet");
}
function B5F4forward(){
	window.location.replace("Building_5F4UIServlet");
}
function B5F5forward(){
	window.location.replace("Building_5F5UIServlet");
}
function B5F6forward(){
	window.location.replace("Building_5F6UIServlet");
}
function Registerforward(){
	window.location.replace("RegisterUIServlet");
}
function B1forward(){
	window.open("Building_1UIServlet");
}
function B2forward(){
	window.location.replace("Building_2UIServlet");
}
function B3forward(){
	window.location.replace("Building_3UIServlet");
}
function B4forward(){
	window.location.replace("Building_4UIServlet");
}
function B5forward(){
	window.location.replace("Building_5UIServlet");
}

function OnorOff() {
	var aNode = event.srcElement;
	if(aNode.className == "show off"){
		aNode.className = "show on";
	}else{
		aNode.className = "show off";
	}
}

function showAttribute() {
	var aNode =document.getElementById("id6");
	if(aNode.className == "id6show"){
		aNode.className = "id6hidden";
	}else{
		aNode.className = "id6show";
	}
}
function showid46() {
	var aNode = document.getElementById("id46");
	if(aNode.className == "show"){
		aNode.className = "close";
	}else{
		aNode.className = "show";
	}
}
