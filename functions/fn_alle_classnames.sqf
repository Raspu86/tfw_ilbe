//Hinzufügen von Classnames hier und in fn_Helm und in Init
private ["_param"];
_ubergabe = nil;
_param = _this select 0;

_headsethelme = 
[
	[	"PBW_Helm1_fleck_H"		,	"PBW_Helm1_fleck"		],
	[	"PBW_Helm1_fleck_HBO"	,	"PBW_Helm1_fleck_BO"	],
	[	"PBW_Helm1_fleck_HBOD"	,	"PBW_Helm1_fleck_BOD"	],
	[	"PBW_Helm1_fleck_HBU"	,	"PBW_Helm1_fleck_BU"	],
	[	"PBW_Helm1_fleck_HBUD"	,	"PBW_Helm1_fleck_BUD"	],

	[	"PBW_Helm1_tropen_H"	,	"PBW_Helm1_tropen"		],
	[	"PBW_Helm1_tropen_HBO"	,	"PBW_Helm1_tropen_BO"	],
	[	"PBW_Helm1_tropen_HBOD"	,	"PBW_Helm1_tropen_BOD"	],
	[	"PBW_Helm1_tropen_HBU"	,	"PBW_Helm1_tropen_BU"	],
	[	"PBW_Helm1_tropen_HBUD"	,	"PBW_Helm1_tropen_BUD"	],

	[	"PBW_Helm2_fleck_H"		,	"PBW_Helm2_fleck"		],
	[	"PBW_Helm2_fleck_HBU"	,	"PBW_Helm2_fleck_BU"	],
	[	"PBW_Helm2_fleck_HBUD"	,	"PBW_Helm2_fleck_BUD"	],

	[	"PBW_Helm4_fleck_H"		,	"PBW_Helm4_fleck"		],
	[	"PBW_Helm4_fleck_HBO"	,	"PBW_Helm4_fleck_BO"	],
	[	"PBW_Helm4_fleck_HBOD"	,	"PBW_Helm4_fleck_BOD"	],
	[	"PBW_Helm4_fleck_HBU"	,	"PBW_Helm4_fleck_BU"	],
	[	"PBW_Helm4_fleck_HBUD"	,	"PBW_Helm4_fleck_BUD"	],

	[	"PBW_Helm4_tropen_H"	,	"PBW_Helm4_tropen"		],
	[	"PBW_Helm4_tropen_HBO"	,	"PBW_Helm4_tropen_BO"	],
	[	"PBW_Helm4_tropen_HBOD"	,	"PBW_Helm4_tropen_BOD"	],
	[	"PBW_Helm4_tropen_HBU"	,	"PBW_Helm4_tropen_BU"	],
	[	"PBW_Helm4_tropen_HBUD"	,	"PBW_Helm4_tropen_BUD"	],

	[	"PBW_Helm5_fleck_H"		,	"PBW_Helm5_fleck"		],
	[	"PBW_Helm5_fleck_HBU"	,	"PBW_Helm5_fleck_BU"	],
	[	"PBW_Helm5_fleck_HBUD"	,	"PBW_Helm5_fleck_BUD"	]

];

_brille_unten_oben =
[
	
	[	"PBW_Helm1_fleck_BU"	,	"PBW_Helm1_fleck_BO"	],
	[	"PBW_Helm1_fleck_BUD"	,	"PBW_Helm1_fleck_BOD"	],
	[	"PBW_Helm1_fleck_HBU"	,	"PBW_Helm1_fleck_HBO"	],
	[	"PBW_Helm1_fleck_HBUD"	,	"PBW_Helm1_fleck_HBOD"	],	

	[	"PBW_Helm1_tropen_BU"	,	"PBW_Helm1_tropen_BO"	],
	[	"PBW_Helm1_tropen_BUD"	,	"PBW_Helm1_tropen_BOD"	],
	[	"PBW_Helm1_tropen_HBU"	,	"PBW_Helm1_tropen_HBO"	],
	[	"PBW_Helm1_tropen_HBUD"	,	"PBW_Helm1_tropen_HBOD"	],

	[	"PBW_Helm4_fleck_BU"	,	"PBW_Helm4_fleck_BO"	],
	[	"PBW_Helm4_fleck_BUD"	,	"PBW_Helm4_fleck_BOD"	],
	[	"PBW_Helm4_fleck_HBU"	,	"PBW_Helm4_fleck_HBO"	],
	[	"PBW_Helm4_fleck_HBUD"	,	"PBW_Helm4_fleck_HBOD"	],	

	[	"PBW_Helm4_tropen_BU"	,	"PBW_Helm4_tropen_BO"	],
	[	"PBW_Helm4_tropen_BUD"	,	"PBW_Helm4_tropen_BOD"	],
	[	"PBW_Helm4_tropen_HBU"	,	"PBW_Helm4_tropen_HBO"	],
	[	"PBW_Helm4_tropen_HBUD"	,	"PBW_Helm4_tropen_HBOD"	]	
];

_brille_unten_oben_brille =
[

	[	"PBW_RevisionT_klar"	,	"PBW_Helm1_fleck"		,	"PBW_Helm1_fleck_BO"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm1_fleck"		,	"PBW_Helm1_fleck_BOD"	],	
	[	"PBW_RevisionT_klar"	,	"PBW_Helm1_fleck_H"		,	"PBW_Helm1_fleck_HBO"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm1_fleck_H"		,	"PBW_Helm1_fleck_HBOD"	],	

	[	"PBW_RevisionF_Klar"	,	"PBW_Helm1_tropen"		,	"PBW_Helm1_tropen_BO"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm1_tropen"		,	"PBW_Helm1_tropen_BOD"	],	
	[	"PBW_RevisionF_Klar"	,	"PBW_Helm1_tropen_H"	,	"PBW_Helm1_tropen_HBO"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm1_tropen_H"	,	"PBW_Helm1_tropen_HBOD"	],

	[	"PBW_RevisionT_klar"	,	"PBW_Helm4_fleck"		,	"PBW_Helm4_fleck_BO"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm4_fleck"		,	"PBW_Helm4_fleck_BOD"	],	
	[	"PBW_RevisionT_klar"	,	"PBW_Helm4_fleck_H"		,	"PBW_Helm4_fleck_HBO"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm4_fleck_H"		,	"PBW_Helm4_fleck_HBOD"	],	

	[	"PBW_RevisionF_Klar"	,	"PBW_Helm4_tropen"		,	"PBW_Helm4_tropen_BO"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm4_tropen"		,	"PBW_Helm4_tropen_BOD"	],	
	[	"PBW_RevisionF_Klar"	,	"PBW_Helm4_tropen_H"	,	"PBW_Helm4_tropen_HBO"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm4_tropen_H"	,	"PBW_Helm4_tropen_HBOD"	],




	[	"PBW_RevisionF_klar"	,	"PBW_Helm1_fleck"		,	"PBW_Helm1_fleck_BO"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm1_fleck"		,	"PBW_Helm1_fleck_BOD"	],	
	[	"PBW_RevisionF_klar"	,	"PBW_Helm1_fleck_H"		,	"PBW_Helm1_fleck_HBO"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm1_fleck_H"		,	"PBW_Helm1_fleck_HBOD"	],	

	[	"PBW_RevisionT_Klar"	,	"PBW_Helm1_tropen"		,	"PBW_Helm1_tropen_BO"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm1_tropen"		,	"PBW_Helm1_tropen_BOD"	],	
	[	"PBW_RevisionT_Klar"	,	"PBW_Helm1_tropen_H"	,	"PBW_Helm1_tropen_HBO"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm1_tropen_H"	,	"PBW_Helm1_tropen_HBOD"	],

	[	"PBW_RevisionF_klar"	,	"PBW_Helm4_fleck"		,	"PBW_Helm4_fleck_BO"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm4_fleck"		,	"PBW_Helm4_fleck_BOD"	],	
	[	"PBW_RevisionF_klar"	,	"PBW_Helm4_fleck_H"		,	"PBW_Helm4_fleck_HBO"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm4_fleck_H"		,	"PBW_Helm4_fleck_HBOD"	],	

	[	"PBW_RevisionT_Klar"	,	"PBW_Helm4_tropen"		,	"PBW_Helm4_tropen_BO"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm4_tropen"		,	"PBW_Helm4_tropen_BOD"	],	
	[	"PBW_RevisionT_Klar"	,	"PBW_Helm4_tropen_H"	,	"PBW_Helm4_tropen_HBO"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm4_tropen_H"	,	"PBW_Helm4_tropen_HBOD"	]	

];

_brille_oben_unten_brille =
[
	[	"PBW_RevisionT_klar"	,	"PBW_Helm1_fleck"		,	"PBW_Helm1_fleck_BU"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm1_fleck"		,	"PBW_Helm1_fleck_BUD"	],	
	[	"PBW_RevisionT_klar"	,	"PBW_Helm1_fleck_H"		,	"PBW_Helm1_fleck_HBU"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm1_fleck_H"		,	"PBW_Helm1_fleck_HBUD"	],
	
	[	"PBW_RevisionF_Klar"	,	"PBW_Helm1_tropen"		,	"PBW_Helm1_tropen_BU"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm1_tropen"		,	"PBW_Helm1_tropen_BUD"	],
	[	"PBW_RevisionF_Klar"	,	"PBW_Helm1_tropen_H"	,	"PBW_Helm1_tropen_HBU"	],		
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm1_tropen_H"	,	"PBW_Helm1_tropen_HBUD"	],	

	[	"PBW_RevisionT_klar"	,	"PBW_Helm2_fleck"		,	"PBW_Helm2_fleck_BU"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm2_fleck"		,	"PBW_Helm2_fleck_BUD"	],			
	[	"PBW_RevisionT_klar"	,	"PBW_Helm2_fleck_H"		,	"PBW_Helm2_fleck_HBU"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm2_fleck_H"		,	"PBW_Helm2_fleck_HBUD"	],

	[	"PBW_RevisionT_klar"	,	"PBW_Helm4_fleck"		,	"PBW_Helm4_fleck_BU"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm4_fleck"		,	"PBW_Helm4_fleck_BUD"	],	
	[	"PBW_RevisionT_klar"	,	"PBW_Helm4_fleck_H"		,	"PBW_Helm4_fleck_HBU"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm4_fleck_H"		,	"PBW_Helm4_fleck_HBUD"	],
	
	[	"PBW_RevisionF_Klar"	,	"PBW_Helm4_tropen"		,	"PBW_Helm4_tropen_BU"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm4_tropen"		,	"PBW_Helm4_tropen_BUD"	],
	[	"PBW_RevisionF_Klar"	,	"PBW_Helm4_tropen_H"	,	"PBW_Helm4_tropen_HBU"	],		
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm4_tropen_H"	,	"PBW_Helm4_tropen_HBUD"	],

	[	"PBW_RevisionT_klar"	,	"PBW_Helm5_fleck"		,	"PBW_Helm5_fleck_BU"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm5_fleck"		,	"PBW_Helm5_fleck_BUD"	],			
	[	"PBW_RevisionT_klar"	,	"PBW_Helm5_fleck_H"		,	"PBW_Helm5_fleck_HBU"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm5_fleck_H"		,	"PBW_Helm5_fleck_HBUD"	],	




	[	"PBW_RevisionF_klar"	,	"PBW_Helm1_fleck"		,	"PBW_Helm1_fleck_BU"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm1_fleck"		,	"PBW_Helm1_fleck_BUD"	],	
	[	"PBW_RevisionF_klar"	,	"PBW_Helm1_fleck_H"		,	"PBW_Helm1_fleck_HBU"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm1_fleck_H"		,	"PBW_Helm1_fleck_HBUD"	],
	
	[	"PBW_RevisionT_Klar"	,	"PBW_Helm1_tropen"		,	"PBW_Helm1_tropen_BU"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm1_tropen"		,	"PBW_Helm1_tropen_BUD"	],
	[	"PBW_RevisionT_Klar"	,	"PBW_Helm1_tropen_H"	,	"PBW_Helm1_tropen_HBU"	],		
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm1_tropen_H"	,	"PBW_Helm1_tropen_HBUD"	],	

	[	"PBW_RevisionF_klar"	,	"PBW_Helm2_fleck"		,	"PBW_Helm2_fleck_BU"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm2_fleck"		,	"PBW_Helm2_fleck_BUD"	],			
	[	"PBW_RevisionF_klar"	,	"PBW_Helm2_fleck_H"		,	"PBW_Helm2_fleck_HBU"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm2_fleck_H"		,	"PBW_Helm2_fleck_HBUD"	],

	[	"PBW_RevisionF_klar"	,	"PBW_Helm4_fleck"		,	"PBW_Helm4_fleck_BU"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm4_fleck"		,	"PBW_Helm4_fleck_BUD"	],	
	[	"PBW_RevisionF_klar"	,	"PBW_Helm4_fleck_H"		,	"PBW_Helm4_fleck_HBU"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm4_fleck_H"		,	"PBW_Helm4_fleck_HBUD"	],
	
	[	"PBW_RevisionT_Klar"	,	"PBW_Helm4_tropen"		,	"PBW_Helm4_tropen_BU"	],
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm4_tropen"		,	"PBW_Helm4_tropen_BUD"	],
	[	"PBW_RevisionT_Klar"	,	"PBW_Helm4_tropen_H"	,	"PBW_Helm4_tropen_HBU"	],		
	[	"PBW_RevisionT_Dunkel"	,	"PBW_Helm4_tropen_H"	,	"PBW_Helm4_tropen_HBUD"	],

	[	"PBW_RevisionF_klar"	,	"PBW_Helm5_fleck"		,	"PBW_Helm5_fleck_BU"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm5_fleck"		,	"PBW_Helm5_fleck_BUD"	],			
	[	"PBW_RevisionF_klar"	,	"PBW_Helm5_fleck_H"		,	"PBW_Helm5_fleck_HBU"	],
	[	"PBW_RevisionF_Dunkel"	,	"PBW_Helm5_fleck_H"		,	"PBW_Helm5_fleck_HBUD"	]	
];

_brille_losen =
[

	[	"PBW_Helm1_fleck_BO"		,	"PBW_Helm1_fleck"		,	"PBW_RevisionF_Klar"	],
	[	"PBW_Helm1_fleck_BOD"		,	"PBW_Helm1_fleck"		,	"PBW_RevisionF_Dunkel"	],
	[	"PBW_Helm1_fleck_BU"		,	"PBW_Helm1_fleck"		,	"PBW_RevisionF_klar"	],
	[	"PBW_Helm1_fleck_BUD"		,	"PBW_Helm1_fleck"		,	"PBW_RevisionF_Dunkel"	],	
	[	"PBW_Helm1_fleck_HBO"		,	"PBW_Helm1_fleck_H"		,	"PBW_RevisionF_Klar"	],
	[	"PBW_Helm1_fleck_HBOD"		,	"PBW_Helm1_fleck_H"		,	"PBW_RevisionF_Dunkel"	],
	[	"PBW_Helm1_fleck_HBU"		,	"PBW_Helm1_fleck_H"		,	"PBW_RevisionF_klar"	],
	[	"PBW_Helm1_fleck_HBUD"		,	"PBW_Helm1_fleck_H"		,	"PBW_RevisionF_Dunkel"	],

	[	"PBW_Helm1_tropen_BO"		,	"PBW_Helm1_tropen"		,	"PBW_RevisionT_klar"	],
	[	"PBW_Helm1_tropen_BOD"		,	"PBW_Helm1_tropen"		,	"PBW_RevisionT_Dunkel"	],
	[	"PBW_Helm1_tropen_BU"		,	"PBW_Helm1_tropen"		,	"PBW_RevisionT_Klar"	],
	[	"PBW_Helm1_tropen_BUD"		,	"PBW_Helm1_tropen"		,	"PBW_RevisionT_Dunkel"	],
	[	"PBW_Helm1_tropen_HBO"		,	"PBW_Helm1_tropen_H"	,	"PBW_RevisionT_klar"	],
	[	"PBW_Helm1_tropen_HBOD"		,	"PBW_Helm1_tropen_H"	,	"PBW_RevisionT_Dunkel"	],
	[	"PBW_Helm1_tropen_HBU"		,	"PBW_Helm1_tropen_H"	,	"PBW_RevisionT_Klar"	],
	[	"PBW_Helm1_tropen_HBUD"		,	"PBW_Helm1_tropen_H"	,	"PBW_RevisionT_Dunkel"	],

	[	"PBW_Helm2_fleck_BU"		,	"PBW_Helm2_fleck"		,	"PBW_RevisionF_klar"	],
	[	"PBW_Helm2_fleck_BUD"		,	"PBW_Helm2_fleck"		,	"PBW_RevisionF_Dunkel"	],
	[	"PBW_Helm2_fleck_HBU"		,	"PBW_Helm2_fleck_H"		,	"PBW_RevisionF_klar"	],
	[	"PBW_Helm2_fleck_HBUD"		,	"PBW_Helm2_fleck_H"		,	"PBW_RevisionF_Dunkel"	],

	[	"PBW_Helm4_fleck_BO"		,	"PBW_Helm4_fleck"		,	"PBW_RevisionF_Klar"	],
	[	"PBW_Helm4_fleck_BOD"		,	"PBW_Helm4_fleck"		,	"PBW_RevisionF_Dunkel"	],
	[	"PBW_Helm4_fleck_BU"		,	"PBW_Helm4_fleck"		,	"PBW_RevisionF_klar"	],
	[	"PBW_Helm4_fleck_BUD"		,	"PBW_Helm4_fleck"		,	"PBW_RevisionF_Dunkel"	],	
	[	"PBW_Helm4_fleck_HBO"		,	"PBW_Helm4_fleck_H"		,	"PBW_RevisionF_Klar"	],
	[	"PBW_Helm4_fleck_HBOD"		,	"PBW_Helm4_fleck_H"		,	"PBW_RevisionF_Dunkel"	],
	[	"PBW_Helm4_fleck_HBU"		,	"PBW_Helm4_fleck_H"		,	"PBW_RevisionF_klar"	],
	[	"PBW_Helm4_fleck_HBUD"		,	"PBW_Helm4_fleck_H"		,	"PBW_RevisionF_Dunkel"	],

	[	"PBW_Helm4_tropen_BO"		,	"PBW_Helm4_tropen"		,	"PBW_RevisionT_klar"	],
	[	"PBW_Helm4_tropen_BOD"		,	"PBW_Helm4_tropen"		,	"PBW_RevisionT_Dunkel"	],
	[	"PBW_Helm4_tropen_BU"		,	"PBW_Helm4_tropen"		,	"PBW_RevisionT_Klar"	],
	[	"PBW_Helm4_tropen_BUD"		,	"PBW_Helm4_tropen"		,	"PBW_RevisionT_Dunkel"	],
	[	"PBW_Helm4_tropen_HBO"		,	"PBW_Helm4_tropen_H"	,	"PBW_RevisionT_klar"	],
	[	"PBW_Helm4_tropen_HBOD"		,	"PBW_Helm4_tropen_H"	,	"PBW_RevisionT_Dunkel"	],
	[	"PBW_Helm4_tropen_HBU"		,	"PBW_Helm4_tropen_H"	,	"PBW_RevisionT_Klar"	],
	[	"PBW_Helm4_tropen_HBUD"		,	"PBW_Helm4_tropen_H"	,	"PBW_RevisionT_Dunkel"	],	

	[	"PBW_Helm5_fleck_BU"		,	"PBW_Helm5_fleck"		,	"PBW_RevisionF_klar"	],
	[	"PBW_Helm5_fleck_BUD"		,	"PBW_Helm5_fleck"		,	"PBW_RevisionF_Dunkel"	],
	[	"PBW_Helm5_fleck_HBU"		,	"PBW_Helm5_fleck_H"		,	"PBW_RevisionF_klar"	],
	[	"PBW_Helm5_fleck_HBUD"		,	"PBW_Helm5_fleck_H"		,	"PBW_RevisionF_Dunkel"	]

];

_feldmuetze_aufsetzen =
[

	[	"PBW_Helm1_fleck" 		,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm1_fleck_BO" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm1_fleck_BOD" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm1_fleck_BU" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm1_fleck_BUD" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm1_fleck_H" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm1_fleck_HBO" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm1_fleck_HBOD" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm1_fleck_HBU" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm1_fleck_HBUD"	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],

	[	"PBW_Helm1_tropen" 		,	"PBW_muetze2_tropen",	"PBW_muetze1_tropen"],
	[	"PBW_Helm1_tropen_BO" 	,	"PBW_muetze2_tropen",	"PBW_muetze1_tropen"],
	[	"PBW_Helm1_tropen_BOD" 	,	"PBW_muetze2_tropen",	"PBW_muetze1_tropen"],
	[	"PBW_Helm1_tropen_BU" 	,	"PBW_muetze2_tropen",	"PBW_muetze1_tropen"],
	[	"PBW_Helm1_tropen_BUD"	,	"PBW_muetze2_tropen",	"PBW_muetze1_tropen"],
	[	"PBW_Helm1_tropen_H" 	,	"PBW_muetze2_tropen",	"PBW_muetze1_tropen"],
	[	"PBW_Helm1_tropen_HBO"	,	"PBW_muetze2_tropen",	"PBW_muetze1_tropen"],
	[	"PBW_Helm1_tropen_HBOD"	,	"PBW_muetze2_tropen",	"PBW_muetze1_tropen"],
	[	"PBW_Helm1_tropen_HBU" 	,	"PBW_muetze2_tropen",	"PBW_muetze1_tropen"],

	[	"PBW_Helm2_fleck" 		,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm2_fleck_BU" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm2_fleck_BUD" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm2_fleck_H" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm2_fleck_HBU" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ],
	[	"PBW_Helm2_fleck_HBUD" 	,	"PBW_muetze2_fleck"	,	"PBW_muetze1_fleck" ]

];

_tarnen = 
[
	[	"PBW_Helm1_fleck"		,	"PBW_Helm2_fleck"		],
	[	"PBW_Helm1_fleck_BU"	,	"PBW_Helm2_fleck_BU"	],
	[	"PBW_Helm1_fleck_BUD"	,	"PBW_Helm2_fleck_BUD"	],
	[	"PBW_Helm1_fleck_H"		,	"PBW_Helm2_fleck_H"		],	
	[	"PBW_Helm1_fleck_HBU"	,	"PBW_Helm2_fleck_HBU"	],
	[	"PBW_Helm1_fleck_HBUD"	,	"PBW_Helm2_fleck_HBUD"	],

	[	"PBW_Helm4_fleck"		,	"PBW_Helm5_fleck"		],
	[	"PBW_Helm4_fleck_BU"	,	"PBW_Helm5_fleck_BU"	],
	[	"PBW_Helm4_fleck_BUD"	,	"PBW_Helm5_fleck_BUD"	],
	[	"PBW_Helm4_fleck_H"		,	"PBW_Helm5_fleck_H"		],	
	[	"PBW_Helm4_fleck_HBU"	,	"PBW_Helm5_fleck_HBU"	],
	[	"PBW_Helm4_fleck_HBUD"	,	"PBW_Helm5_fleck_HBUD"	]		
];

_helm_aufsetzen = 
[
	[	"PBW_muetze2_fleck"		,	"PBW_Helm1_fleck"	,	"PBW_muetze1_fleck"	],
	[	"PBW_muetze2_tropen"	,	"PBW_Helm1_tropen"	,	"PBW_muetze1_tropen"]
];

_knieschoner_runter = 
[
	[	"PBW_Uniform3K_fleck"	,	"PBW_Uniform3_fleck"	],
	[	"PBW_Uniform4K_fleck"	,	"PBW_Uniform4_fleck"	],
	[	"PBW_Uniform3K_tropen"	,	"PBW_Uniform3_tropen"	],
	[	"PBW_Uniform4K_tropen"	,	"PBW_Uniform4_tropen"	]
];

_handschuhe_ausziehen = 
[
	[	"PBW_Uniform1H_fleck"	,	"PBW_Uniform1_fleck"	],
	[	"PBW_Uniform1H_tropen"	,	"PBW_Uniform1_tropen"	]
];

_handschuhe_anziehen = 
[
	[	"PBW_Uniform1_fleck"	,	"PBW_Uniform1H_fleck"	],
	[	"PBW_Uniform2_fleck"	,	"PBW_Uniform1H_fleck"	],
	[	"PBW_Uniform1_tropen"	,	"PBW_Uniform1H_tropen"	],
	[	"PBW_Uniform2_tropen"	,	"PBW_Uniform1H_tropen"	]
];

_aermel_runterziehen = 
[
	[	"PBW_Uniform2_fleck"	,	"PBW_Uniform1_fleck"	],
	[	"PBW_Uniform2_tropen"	,	"PBW_Uniform1_tropen"	],
	[	"PBW_Uniform4K_fleck"	,	"PBW_Uniform3K_fleck"	],
	[	"PBW_Uniform4K_tropen"	,	"PBW_Uniform3K_tropen"	],
	[	"PBW_Uniform4_fleck"	,	"PBW_Uniform3_fleck"	],
	[	"PBW_Uniform4_tropen"	,	"PBW_Uniform3_tropen"	]
];

_uniformen =
[
	"PBW_Uniform1_fleck"	,
	"PBW_Uniform1_tropen"	,
	"PBW_Uniform1H_fleck"	,
	"PBW_Uniform1H_tropen"	,
	"PBW_Uniform2_fleck"	,
	"PBW_Uniform2_tropen"	,
	"PBW_Uniform3K_fleck"	,
	"PBW_Uniform3K_tropen"	,
	"PBW_Uniform3_fleck"	,
	"PBW_Uniform3_tropen"	,
	"PBW_Uniform4K_fleck"	,
	"PBW_Uniform4K_tropen"	,
	"PBW_Uniform4_fleck"	,
	"PBW_Uniform4_tropen"	
];

if (_param == "headsethelme") then {_ubergabe = _headsethelme;};
if (_param == "brille_unten_oben") then {_ubergabe = _brille_unten_oben;};
if (_param == "brille_unten_oben_brille") then {_ubergabe = _brille_unten_oben_brille;};
if (_param == "brille_oben_unten_brille") then {_ubergabe = _brille_oben_unten_brille;};
if (_param == "brille_losen") then {_ubergabe = _brille_losen;};
if (_param == "tarnen") then {_ubergabe = _tarnen;};
if (_param == "helm_aufsetzen") then {_ubergabe = _helm_aufsetzen;};	
if (_param == "knieschoner_runter") then {_ubergabe = _knieschoner_runter;};
if (_param == "handschuhe_ausziehen") then {_ubergabe = _handschuhe_ausziehen;};
if (_param == "handschuhe_anziehen") then {_ubergabe = _handschuhe_anziehen;};
if (_param == "aermel_runterziehen") then {_ubergabe = _aermel_runterziehen;};
if (_param == "uniformen") then {_ubergabe = _uniformen;};	

_ubergabe

/*
//-------	Uniformen -----------------------------------------------------------------------------------------------------	//

"PBW_Uniform1_fleck",		//Feldbluse Fleck					
"PBW_Uniform1H_fleck",		//Feldbluse Fleck  (Handschuhe)				
"PBW_Uniform2_fleck",		//Feldbluse Fleck  (Kurz)				
"PBW_Uniform3_fleck",		//Feldbluse Fleck  (Kampf)				
"PBW_Uniform3K_fleck",		//Feldbluse Fleck  (Kampf,Knieschoner)		
"PBW_Uniform4_fleck",		//Feldbluse Fleck  (Kurz,Kampf)				
"PBW_Uniform4K_fleck",		//Feldbluse Fleck  (Kurz,Kampf,Knieschoner)		

"PBW_Uniform1_tropen",		//Feldbluse Tropen					
"PBW_Uniform1H_tropen",		//Feldbluse Tropen (Handschuhe)				
"PBW_Uniform2_tropen",		//Feldbluse Tropen (Kurz)				
"PBW_Uniform3_tropen",		//Feldbluse Tropen (Kampf)				
"PBW_Uniform3K_tropen", 	//Feldbluse Tropen (Kampf,Knieschoner)			
"PBW_Uniform4_tropen",		//Feldbluse Tropen (Kurz,Kampf)				
"PBW_Uniform4K_tropen",		//Feldbluse Tropen (Kurz,Kampf,Knieschoner)		

//-------	Buschhut ------------------------------------------------------------------------------------------------------	//

"PBW_Buschhut_fleck",		//Buschut Fleck						
"PBW_Buschhut_tropen",		//Buschut Tropen					

//-------	Feldmütze -----------------------------------------------------------------------------------------------------	//

"PBW_muetze1_fleck",		//Feldmütze Fleck					
"PBW_muetze1_tropen",		//Feldmütze Fleck  (Helm)							

"PBW_muetze2_fleck",		//Feldmütze Tropen					
"PBW_muetze2_tropen",		//Feldmütze Tropen (Helm)								

//-------	M92 Helm ------------------------------------------------------------------------------------------------------	//

"PBW_Helm1_fleck",			//M92 Helm Fleck					
"PBW_Helm1_fleck_BO",		//M92 Helm Fleck  (Brille oben)				
"PBW_Helm1_fleck_BOD",		//M92 Helm Fleck  (Brille oben dunkel)			
"PBW_Helm1_fleck_BU",		//M92 Helm Fleck  (Brille unten)			
"PBW_Helm1_fleck_BUD",		//M92 Helm Fleck  (Brille unten dunkel)			
"PBW_Helm1_fleck_H",		//M92 Helm Fleck  (Headset)				
"PBW_Helm1_fleck_HBO",		//M92 Helm Fleck  (Headset,Brille oben)			
"PBW_Helm1_fleck_HBOD",		//M92 Helm Fleck  (Headset,Brille oben dunkel)		
"PBW_Helm1_fleck_HBU",		//M92 Helm Fleck  (Headset,Brille unten)		
"PBW_Helm1_fleck_HBUD",		//M92 Helm Fleck  (Headset,Brille unten dunkel)		
					
"PBW_Helm1_tropen",			//M92 Helm Tropen					
"PBW_Helm1_tropen_BO",		//M92 Helm Tropen (Brille oben)				
"PBW_Helm1_tropen_BOD",		//M92 Helm Tropen (Brille oben dunkel)			
"PBW_Helm1_tropen_BU",		//M92 Helm Tropen (Brille unten)			
"PBW_Helm1_tropen_BUD",		//M92 Helm Tropen (Brille unten dunkel)			
"PBW_Helm1_tropen_H",		//M92 Helm Tropen (Headset)				
"PBW_Helm1_tropen_HBO",		//M92 Helm Tropen (Headset,Brille oben)			
"PBW_Helm1_tropen_HBOD",	//M92 Helm Tropen (Headset,Brille oben dunkel)		
"PBW_Helm1_tropen_HBU",		//M92 Helm Tropen (Headset,Brille unten)		
"PBW_Helm1_tropen_HBUD",	//M92 Helm Tropen (Headset,Brille unten dunkel)		

"PBW_Helm2_fleck",			//M92 Helm Fleck  (Tarn)				
"PBW_Helm2_fleck_BU",		//M92 Helm Fleck  (Tarn,Brille unten)			
"PBW_Helm2_fleck_BUD",		//M92 Helm Fleck  (Tarn,Brille unten dunkel)		
"PBW_Helm2_fleck_H",		//M92 Helm Fleck  (Tarn,Headset)			
"PBW_Helm2_fleck_HBU",		//M92 Helm Fleck  (Tarn,Headset,Brille unten)		
"PBW_Helm2_fleck_HBUD",		//M92 Helm Fleck  (Tarn,Headset,Brille unten dunkel)	

"PBW_Helm3_fleck",			//M92 Helm Blank  (Grün)				
"PBW_Helm3_tropen",			//M92 Helm Blank  (Braun)				
"PBW_Helm3_UN",				//M92 Helm Blank  (UN Version)				

//-------	Stuff ---------------------------------------------------------------------------------------------------------	//

"PBW_Headset",				//Headset					
"PBW_Brille_gelb",			//Schutzbrille Gelb					
"PBW_Brille_braun",			//Schutzbrille Braun					
"PBW_Brille_schwarz"		//Schutzbrille Schwarz	

PBW_RevisionF_Dunkel	PBW_Brille_schwarz
PBW_RevisionF_klar		PBW_Brille_braun
PBW_RevisionT_Dunkel	PBW_Brille_schwarz
PBW_RevisionT_Klar		PBW_Brille_gelb	
*/