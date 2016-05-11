//Hinzufügen von Classnames hier und in fn_Helm und in Init
private ["_param"];
_ubergabe = nil;
_param = _this select 0;

_handschuhe_ausziehen = 
[
	[	"tfw_ilbe_wd"	,	"tfw_ilbe_a_wd"	],
	[	"tfw_ilbe_d"	,	"tfw_ilbe_a_d"	],
	[	"tfw_ilbe_coy"	,	"tfw_ilbe_a_coy"	],
	[	"tfw_ilbe_br"	,	"tfw_ilbe_a_br"	]
];

_handschuhe_anziehen = 
[
	[	"tfw_ilbe_wd"	,	"tfw_ilbe_a_wd"	],
	[	"tfw_ilbe_d"	,	"tfw_ilbe_a_d"	],
	[	"tfw_ilbe_coy"	,	"tfw_ilbe_a_coy"	],
	[	"tfw_ilbe_gr"	,	"tfw_ilbe_a_gr"	]
];

if (_param == "handschuhe_ausziehen") then {_ubergabe = _handschuhe_ausziehen;};
if (_param == "handschuhe_anziehen") then {_ubergabe = _handschuhe_anziehen;};
_ubergabe