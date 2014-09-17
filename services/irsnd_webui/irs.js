"use strict";
function irmp_ecmd(prot,cmd,flags){
	var h = function(xmlHttp, data){
		if(ecmd_error(xmlHttp)){
			alert("ECMD parse error!")
		}
	}
	ArrAjax.ecmd('irmp send '+prot+' '+cmd+' '+flags,h,"GET",null)
}

function create_fieldset(name,prot,dev,commands){
	var fs = document.createElement("fieldset")
	var leg = document.createElement("legend")
	leg.textContent = name
	fs.appendChild(leg)
	var mkonclick = function(prot,cmd){ return function(){ irmp_ecmd(prot,cmd,"00") }; }
	for (var i in commands){
		var groupdiv = document.createElement("div")
		for (var cmd in commands[i]){
			var btn = document.createElement("input")
			btn.type = "button"
			btn.value = cmd
			btn.onclick = mkonclick(prot,commands[i][cmd])
			groupdiv.appendChild(btn)
		}
		fs.appendChild(groupdiv)
	}
	$("irf").insertBefore(fs,$("mcef"))
}

$("mce_submit").onclick = function(){ irmp_ecmd($("prot").value,$("dev").value+' '+$("cmd").value,$("flags").value) }
var ircode
var h = function(xmlHttp, data){
	ircode = JSON.parse(xmlHttp.responseText)
	for (var name in ircode){
		var irdev = ircode[name]
		create_fieldset(name,irdev.prot,irdev.dev,irdev.commands)
	}
}
ArrAjax.aufruf('/ircode',h,"GET",null)
$("btwrk_macro").onclick = function(){
	var amp = ircode.Amplifier
	var prot = amp.prot
	var cmds = amp.commands
	irmp_ecmd(prot,cmds[0]["ON/OFF"],0)
	for(var i=0; i<10; ++i){
		irmp_ecmd(prot,cmds[1]["VOLUME UP"],0)
	}
	irmp_ecmd(prot,cmds[2]["DVD"],0)
}
