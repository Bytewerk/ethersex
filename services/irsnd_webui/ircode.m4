dnl Configuration file for use of the irsnd_webui at the Bytewerk
{
	"Amplifier":{
		"prot":"02",
		"dev":"6DD2",
		"commands":[
			{
				"ON/OFF":"6DD2 0004",
				"SLEEP":"6DD2 005D",
				"DIMMER":"6DD2 0095"
			},
			{
				"VOLUME DOWN":"6DD2 0003",
				"VOLUME UP":"6DD2 0002",
				"MUTE":"6DD2 0005"
			},
			{
				"DVD":"6CD2 008C",
				"TAPE":"6DD2 0008",
				"TUNER":"6DD2 000B",
				"PHONO":"6DD2 000A",
				"CD":"6DD2 0009",
				"VIDEO-1":"6DD2 000F",
				"VIDEO-2":"6DD2 000E"
			},
			{
				"SUR MODE":"6DD2 004C",
				"MULTI-CH INPUT":"6CD2 0004"
			},
			{
				"GROUP":"6DD2 004A",
				"PRESET -->":"6DD2 0000",
				"PRESET <--":"6DD2 0001"
			},
			{
				"CD DISC":"6DD2 005C",
				"CD FORWARD":"6DD2 001D",
				"CD PAUSE":"6DD2 001F",
				"CD PLAY":"6DD2 001B",
				"CD REWIND":"6DD2 001E",
				"CD STOP":"6DD2 001C"
			},
			{
				"DVD BACK":"6CD2 0090",
				"DVD FORWARD":"6CD2 0091",
				"DVD PLAY":"6CD2 008D",
				"DVD REWIND":"6CD2 0092",
				"DVD SKIP":"6CD2 008F",
				"DVD STOP":"6CD2 008E"
			},
			{
				"TAPE RECORD/PAUSE":"6DD2 0015",
				"TAPE REWIND":"6DD2 0016",
				"TAPE STOP":"6DD2 0013"
			},
			{
				"CH SEL":"6CD2 0044",
				"LEVEL DOWN":"6CD2 0043",
				"LEVEL UP":"6CD2 0042"
			}
		]
	},
	"Projector":{
		"prot":"02",
		"dev":"1308",
		"commands":[
			{
				"ON/OFF":"1308 0087",
				"3D":"1308 008A",
				"HIDE":"1308 008F"
			},
			{
				"ASPECT RATIO ":"1308 0060",
				"RESYNC":"1308 008D",
				"SOURCE":"1308 008C",
				"ZOOM":"1308 008B",
				"MUTE":"1308 0061",
				"e":"1308 0080",
				"MENU":"1308 0084"
			},
			{
				"UP":"1308 0082"
			},
			{
				"LEFT":"1308 0083",
				"RIGHT":"1308 0081"
			},
			{
				"DOWN":"1308 0085"
			},
			{
				"1":"1308 005A",
				"2":"1308 005B",
				"3":"1308 005C"
			},
			{
				"4":"1308 0065",
				"5":"1308 0066",
				"6":"1308 0067"
			},
			{
				"7":"1308 005E",
				"8":"1308 004A",
				"9":"1308 004B",
				"0":"1308 005F"
			},
			{
				"PGUP":"1308 005D",
				"PGDN":"1308 009E"
			}
		]
	}
}
