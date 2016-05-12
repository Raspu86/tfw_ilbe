//Hinzufügen von Classnames hier und in fn_Helm und in Init
private ["_param"];
_handover = nil;
_param = _this select 0;

_disassemble_antenna = 
[
	["tfw_ilbe_a_wd","tfw_ilbe_wd"],
	["tfw_ilbe_a_d","tfw_ilbe_d"],
	["tfw_ilbe_a_coy","tfw_ilbe_coy"],
	["tfw_ilbe_a_gr","tfw_ilbe_gr"]
];

_assemble_antenna = 
[
	["tfw_ilbe_wd", "tfw_ilbe_a_wd"],
	["tfw_ilbe_d", "tfw_ilbe_a_d"],
	["tfw_ilbe_coy", "tfw_ilbe_a_coy"],
	["tfw_ilbe_gr", "tfw_ilbe_a_gr"]
];

_backpacks =
[
	"tfw_ilbe_wd",
	"tfw_ilbe_d",
	"tfw_ilbe_coy",
	"tfw_ilbe_gr",
	"tfw_ilbe_a_wd",
	"tfw_ilbe_a_d",
	"tfw_ilbe_a_coy",
	"tfw_ilbe_a_gr"
];

if (_param == "disassemble_antenna") then {_handover = _disassemble_antenna;};
if (_param == "assemble_antenna") then {_handover = _assemble_antenna;};
if (_param == "backpacks") then {_handover = _backpacks;};
_handover