private ["_action_ILBEAP","_action_assemble_antenna","_action_disassemble_antenna"];

sleep 5;

_action_assemble_antenna =
	[
		"tfw_ilbe_assemble_antenna",
		"Assemble antenna",
		"tfw_ilbe\data\icons\interact_icon.paa",
		{nul = [] execvm "tfw_ilbe\scripts\assemble_antenna.sqf"},
		{backpack player == "tfw_ilbe_wd"
			or backpack player == "tfw_ilbe_d"
			or backpack player == "tfw_ilbe_coy"
			or backpack player == "tfw_ilbe_gr"
		}
	] call ace_interact_menu_fnc_createAction;

[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action_assemble_antenna] call ace_interact_menu_fnc_addActionToClass;

_action_disassemble_antenna =
	[
		"tfw_ilbe_disassemble_antenna",
		"Disassemble antenna",
		"tfw_ilbe\data\icons\interact_icon.paa",
		{nul = [] execvm "tfw_ilbe\scripts\disassemble_antenna.sqf"},
		{backpack player == "tfw_ilbe_a_wd"
			or backpack player == "tfw_ilbe_a_d"
			or backpack player == "tfw_ilbe_a_coy"
			or backpack player == "tfw_ilbe_a_gr"
		}
	] call ace_interact_menu_fnc_createAction;

[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action_disassemble_antenna] call ace_interact_menu_fnc_addActionToClass;