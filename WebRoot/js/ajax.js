//����XMLHttpRequest����
var xmlHttpRequest = null;
//����XMLHttpRequest����ʵ���ķ���
function createXHR(){
	try {
		xmlHttpRequest = new XMLHttpRequest();
	} catch (e1) {

		var _msxmlhttp = new Array("Msxml2.XMLHTTP.6.0","Msxml2.XMLHTTP.5.0","Msxml2.XMLHTTP.4.0",
																"Msxml2.XMLHTTP.3.0","Msxml2.XMLHTTP","Microsoft.XMLHTTP");
		for(var i=0;i < _msxmlhttp.length;i++){
			try {
				xmlHttpRequest = new ActiveXObject(_msxmlhttp[i]);
				if(xmlHttpRequest!=null){
					break;
				}
			} catch (e2) {

			}
		}
	}
	if(xmlHttpRequest == null){
		alert("���ܴ���ajax����");
	}
}

//���Ϳͻ������󣬸÷�����4������������methodȡֵΪPOST��GET
function sendRequest(url,params,method,hander){
	createXHR();
	if(!xmlHttpRequest)
		return false;
	xmlHttpRequest.onreadystatechange = hander;	//ָ����Ӧ����Ϊhandle
	if(method == "GET"){
		xmlHttpRequest.open(method,url+'?'+param,true);
		xmlHttpRequest.send(null);
	}
	if(method == "POST"){
		xmlHttpRequest.open(method,url,true);
		xmlHttpRequest.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		xmlHttpRequest.send(params);
	}
}