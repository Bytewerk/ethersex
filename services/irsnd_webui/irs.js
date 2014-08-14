"use strict";
function $(id){ return document.getElementById(id) }

function irmp_ecmd(prot,dev,cmd,flags){
	var req = new XMLHttpRequest()
	req.open('GET','/ecmd?irmp send+'+prot+'+'+dev+'+'+cmd+'+'+flags)
	req.send()
	/* TODO: handle ECMD return status */
}

function add_onclick(btn,prot,dev,commands,cmd){
	btn.onclick = function(){ irmp_ecmd(prot,dev,commands[cmd],"00") }
}

function create_fieldset(name,prot,dev,commands){
	var fs = document.createElement("fieldset")
	var leg = document.createElement("legend")
	leg.textContent = name
	fs.appendChild(leg)
	for (var cmd in commands){
		var btn = document.createElement("input")
		btn.type = "button"
		btn.value = cmd
		add_onclick(btn,prot,dev,commands,cmd)
		fs.appendChild(btn)
	}
	$("irf").appendChild(fs)
}

function init(){
	var b = $("mce_submit")
	b.onclick = function(){ irmp_ecmd($("prot").value,$("dev").value,$("cmd").value,$("flags").value) }
	var req = new XMLHttpRequest();
	req.open('GET','/ircode')
	var ircode = null
	req.onload = function(){
		var ircode = JSON.parse(req.responseText)
		for (var name in ircode){
			var irdev = ircode[name]
			create_fieldset(name,irdev.prot,irdev.dev,irdev.commands)
		}
	}
	req.send()
}

init();
