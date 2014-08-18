"use strict";
function irmp_ecmd(prot,dev,cmd,flags){
	var h = function(xmlHttp, data){
		if(ecmd_error(xmlHttp)){
			alert("ECMD parse error!")
		}
	}
	ArrAjax.ecmd('irmp send '+prot+' '+dev+' '+cmd+' '+flags,h,"GET",null)
}

function create_fieldset(name,prot,dev,commands){
	var fs = document.createElement("fieldset")
	var leg = document.createElement("legend")
	leg.textContent = name
	fs.appendChild(leg)
	var mkonclick = function(prot,dev,cmd){ return function(){ irmp_ecmd(prot,dev,cmd,"00") }; }
	for (var i in commands){
		var groupdiv = document.createElement("div")
		for (var cmd in commands[i]){
			var btn = document.createElement("input")
			btn.type = "button"
			btn.value = cmd
			btn.onclick = mkonclick(prot,dev,commands[i][cmd])
			groupdiv.appendChild(btn)
		}
		fs.appendChild(groupdiv)
	}
	$("irf").appendChild(fs)
}

$("mce_submit").onclick = function(){ irmp_ecmd($("prot").value,$("dev").value,$("cmd").value,$("flags").value) }
var h = function(xmlHttp, data){
	var ircode = JSON.parse(xmlHttp.responseText)
	for (var name in ircode){
		var irdev = ircode[name]
		create_fieldset(name,irdev.prot,irdev.dev,irdev.commands)
	}
}
ArrAjax.aufruf('/ircode',h,"GET",null)
