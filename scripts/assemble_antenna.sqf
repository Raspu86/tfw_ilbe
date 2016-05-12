private ["_backpacks","_items","_mags"];

_backpacks = nil;
_items = backpackItems player;
_mags = backpackMagazines player;
_insignia = [ player ] call BIS_fnc_getUnitInsignia;

_assemble_antenna = ["assemble_antenna"] call fn_tfw_ilbe_classnames;

{
	if (backpack player == _x select 0) then {_backpacks =  _x select 1};
} forEach _assemble_antenna;

//Store TFAR radio settings and active radio channel
_settings = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSettings;
_channel = (call TFAR_fnc_ActiveLrRadio) call TFAR_fnc_getLrChannel;

removeBackpack player; 
player addbackpack  _backpacks; 

//Apply previously saved TFAR settings to the new backpack radio
[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _settings] call TFAR_fnc_setLrSettings;
_settings set [0, _channel]; // sets the active channel to 2

{player addItemToBackpack _x} forEach _items;
{player addMagazine _x} forEach _mags; 

[ player , _insignia ] call BIS_fnc_setUnitInsignia;

player playAction "medicStop";