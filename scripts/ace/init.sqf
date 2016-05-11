private ["_action_ILBEAP","_action_handschuhe_anziehen","_action_handschuhe_ausziehen"];

sleep 5;

//ACE Menü
_action_ILBEAP = ["Radio","Antenna","german_common\UI\pbw_cfgfactionclasses_Kleiderkammer.paa",{},{}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action_ILBEAP] call ace_interact_menu_fnc_addActionToClass;

_action_handschuhe_anziehen =
	[
		"tfw_ilbe_handschuhe_anziehen",
		"Assemble antenna",
		"german_common\bilder\handschuhe.paa",
		{nul = [] execvm "tfw_ilbe\scripts\ace\assemble_antenna.sqf"},
		{backpack player == "tfw_ilbe_wd"
			or uniform player == "tfw_ilbe_d"
			or uniform player == "tfw_ilbe_coy"
			or uniform player == "tfw_ilbe_gr"
		}
	] call ace_interact_menu_fnc_createAction;

[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment","Radio"], _action_handschuhe_anziehen] call ace_interact_menu_fnc_addActionToClass;

_action_handschuhe_ausziehen =
	[
		"tfw_ilbe_handschuhe_ausziehen",
		"Disassemble antenna",
		"german_common\bilder\handschuhe.paa",
		{nul = [] execvm "tfw_ilbe\scripts\ace\disassemble_antenna.sqf"},
		{uniform player == "PBW_Uniform1H_fleck"
			or uniform player == "PBW_Uniform1H_tropen"
		}
	] call ace_interact_menu_fnc_createAction;

[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment","Radio"], _action_handschuhe_ausziehen] call ace_interact_menu_fnc_addActionToClass;