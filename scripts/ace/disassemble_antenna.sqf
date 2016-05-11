private ["_uniform","_items","_mags"];

_uniform = nil;
_items = backpackItems player;
_mags = backpackMagazines player;
_insignia = [ player ] call BIS_fnc_getUnitInsignia;

_handschuhe_ausziehen = ["handschuhe_ausziehen"] call fn_tfw_ilbe_classnames;

{
	if (backpack player == _x select 0) then {_uniform =  _x select 1};
} forEach _handschuhe_ausziehen;

//player forceAddUniform  _uniform; 
player addbackpack  _uniform; 

{player addItemToBackpack _x} forEach _items;
{player addMagazine _x} forEach _mags; 

[ player , _insignia ] call BIS_fnc_setUnitInsignia;