dnl This is an example configuration file for the irsnd_webui.
dnl Because of the filename length limit imposed by the VFS, the file name
dnl extension can not show that this file is in JSON format.
dnl
dnl Delete the following line. It only served as a reminder for you to edit
dnl this file according to your needs.
syscmd(`echo -e "\033[1m\033[31m[ERROR] In order to use the irsnd_webui, please edit services/irsnd_webui/ircode.m4 first!\033[0m" >&2') m4exit(1)
{
	"Amplifier":{						dnl An example device named Amplifier.
		"prot":"02",					dnl IRMP protocol number to be used for this device.
		"dev":"6DD2",					dnl Device ID
		"commands":[					dnl Array of objects, each of which represents a group of buttons.
			{
				"ON/OFF":"0004",
				"SLEEP":"005D",
				"DIMMER":"0095"
			},
			{
				"VOLUME DOWN":"0003",
				"VOLUME UP":"0002",
				"MUTE":"0005"
			},
			{
				"DVD":"008c",
				"TAPE":"0008",
				"TUNER":"000b",
				"PHONO":"000a",
				"CD":"0009",
				"VIDEO-1":"000f",
				"VIDEO-2":"000e"
			},
			{
				"SUR MODE":"004c",
				"MULTI-CH INPUT":"0004"
			},
			{
				"GROUP":"004a",
				"PRESET -->":"0000",
				"PRESET <--":"0001"
			},
			{
				"CD DISC":"005c",
				"CD FORWARD":"001d",
				"CD PAUSE":"001f",
				"CD PLAY":"001b",
				"CD REWIND":"001e",
				"CD STOP":"001c"
			},
			{
				"DVD BACK":"0090",
				"DVD FORWARD":"0091",
				"DVD PLAY":"008d",
				"DVD REWIND":"0092",
				"DVD SKIP":"008f",
				"DVD STOP":"008e"
			},
			{
				"TAPE RECORD/PAUSE":"0015",
				"TAPE REWIND":"0016",
				"TAPE STOP":"0013"
			},
			{
				"CH SEL":"0044",
				"LEVEL DOWN":"0043",
				"LEVEL UP":"0042"
			}
		]
	},
	"Projector":{						dnl Another example device, just like the one above.
		"prot":"02",
		"dev":"1308",
		"commands":[
			{
				"ON/OFF":"0087",
				"3D":"008A",
				"HIDE":"008F"
			},
			{
				"ASPECT RATIO ":"0060",
				"RESYNC":"008D",
				"SOURCE":"008C",
				"ZOOM":"008B",
				"MUTE":"0061",
				"e":"0080",
				"MENU":"0084"
			},
			{
				"UP":"0082"
			},
			{
				"LEFT":"0083",
				"RIGHT":"0081"
			},
			{
				"DOWN":"0085"
			},
			{
				"1":"005A",
				"2":"005B",
				"3":"005C"
			},
			{
				"4":"0065",
				"5":"0066",
				"6":"0067"
			},
			{
				"7":"005E",
				"8":"004A",
				"9":"004B",
				"0":"005F"
			},
			{
				"PGUP":"005D",
				"PGDN":"009E"
			}
		]
	}
}