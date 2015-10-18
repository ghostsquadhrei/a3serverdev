waituntil {!isnil "bis_fnc_init"};
waitUntil { time > 0 };

IL_EV_Count = 0;
IL_Veh_Array = [];

sleep (random 30);

_null = [Player] execVM "addons\IgiLoad\IgiLoad.sqf";
waitUntil {scriptDone _null};

sleep (random (IL_Check_Veh_Max - IL_Check_Veh_Min));
{
	if ((typeOf _x) in (IL_Supported_Vehicles_All)) then
	{
		IL_Veh_Array = IL_Veh_Array + [_x];
		_null = [_x] execVM "addons\IgiLoad\IgiLoad.sqf";
		waitUntil {scriptDone _null};
	};
} forEach (vehicles);

call compileFinal preprocessFileLineNumbers "addons\IgiLoad\IgiLoadTaru.sqf";

while {true} do 
{
	sleep (IL_Check_Veh_Min + (random (IL_Check_Veh_Max - IL_Check_Veh_Min)));
	IL_LST_Count = nearestObjects[getPos player,IL_Supported_Cargo_All,50];
	//Delete vehicles from "IL_Veh_Array" if not in "vehicles"
	{
		if !(_x in vehicles) then
		{
			IL_Veh_Array = IL_Veh_Array - [_x];
		};
	} forEach (IL_Veh_Array);
	{
		if (!(_x in IL_Veh_Array)) then
		{
			IL_Veh_Array = IL_Veh_Array + [_x];
			_null = [_x] execVM "addons\IgiLoad\IgiLoad.sqf";
			waitUntil {scriptDone _null};
		};
	} forEach IL_LST_Count;
};
