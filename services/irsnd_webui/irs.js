function $(id){ return document.getElementById(id) }

function irmp_ecmd(prot,dev,cmd,flags){
	var req = new XMLHttpRequest()
	req.open('GET','/ecmd?irmp send+'+prot+'+'+dev+'+'+cmd+'+'+flags)
	req.send()
	/* TODO: handle ECMD return status */
}

function init(){
	var b = $("mce_submit")
	b.onclick = function(){
		irmp_ecmd($("prot").value,$("dev").value,$("cmd").value,$("flags").value)
	}
}

init();
