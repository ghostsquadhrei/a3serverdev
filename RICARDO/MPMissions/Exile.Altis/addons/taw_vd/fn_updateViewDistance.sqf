/*
	File: fn_updateViewDistance.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the view distance dependant on whether the player is on foot, a car or an aircraft.
*/
private["_dist"];
switch (true) do
{
	case ((vehicle player) isKindOf "Man"): {
		if (tawvd_foot > 3000) then {tawvd_foot=3000;};
		setViewDistance tawvd_foot;
		_dist = tawvd_foot;
	};
	case ((vehicle player) isKindOf "LandVehicle"): {
		if (tawvd_car > 3000) then {tawvd_car=3000;};
		setViewDistance tawvd_car;
		_dist = tawvd_car;
	};
	case ((vehicle player) isKindOf "Air"): {
		if (tawvd_air > 3000) then {tawvd_air=3000;};
		setViewDistance tawvd_air;
		_dist = tawvd_air;
	};
};

if(tawvd_syncObject) then {
	setObjectViewDistance [_dist,100];
	tawvd_object = _dist;
};