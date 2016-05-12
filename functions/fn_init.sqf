if (!local player) exitWith {};

fn_tfw_ilbe_classnames = compile preprocessFile "tfw_ilbe\functions\fn_classnames.sqf";

if (!isClass(configFile/'CfgPatches'/'ace_interact_menu')) exitWith{};

fn_tfw_ilbe_alle_items = compile preprocessFile "tfw_ilbe\functions\fn_alle_items.sqf";

nul = [] execVM "tfw_ilbe\scripts\init.sqf";