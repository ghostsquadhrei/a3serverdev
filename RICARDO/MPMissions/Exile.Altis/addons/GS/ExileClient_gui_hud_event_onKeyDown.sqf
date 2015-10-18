/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_stopPropagation","_caller","_keyCode","_shiftState","_controlState","_altState"];
_stopPropagation = false;
_caller = _this select 0;
_keyCode = _this select 1;
_shiftState = _this select 2;
_controlState = _this select 3;
_altState = _this select 4; 
if (_keyCode in (actionKeys 'TacticalView'))exitWith{true};
switch (_keyCode) do  
{ 
	case 0x29:	{ _stopPropagation = true; }; 
	case 0x0B:	 	{ _stopPropagation = true; };
	case 0x06: 	{ _stopPropagation = true; };
	case 0x07: 	{ _stopPropagation = true; };
	case 0x08: 	{ _stopPropagation = true; };
	case 0x09: 	{ _stopPropagation = true; };
	case 0x0A: 	{ _stopPropagation = true; };
	case 0x3B: 	{ _stopPropagation = true; };
	case 0x3C: 	{ _stopPropagation = true; };
	case 0x3D:	{ _stopPropagation = true; };
	case 0x3E:	{ _stopPropagation = true; };
	case 0x3F:	{ _stopPropagation = true; };
	case 0x40: 	{ _stopPropagation = true; };
	case 0x41: 	{ _stopPropagation = true; };
	case 0x42:	{ _stopPropagation = true; };
	case 0x43: 	{ _stopPropagation = true; };
	case 0x44:	{ _stopPropagation = true; };
	case 0x57: 	{ _stopPropagation = true; };
	case 0x58: 	{ _stopPropagation = true; };
	case 0x0E: 	{ _stopPropagation = true; };
	case 0xCF:	{ _stopPropagation = true; };
	case 0xC7:	{ _stopPropagation = true; };
	case 0x02: 	
	{ 
		_stopPropagation = true; 
	};
	case 0x03: 	
	{ 
		_stopPropagation = true; 
	};
	case 0x04: 	
	{ 
		_stopPropagation = true; 
	};
	case 0x05: 	
	{ 
		_stopPropagation = true;
	};
	case 0xD2:
	{
		_stopPropagation = true;
	};
	case 0x10:
	{
		if (ExileClientIsInConstructionMode) then
		{
			_stopPropagation = true;
		};
	};
	case 0x12:
	{
		if (ExileClientIsInConstructionMode) then
		{
			_stopPropagation = true;
		};
	};
	case 0xC9: 
	{
		if (ExileClientIsInConstructionMode) then
		{
			_stopPropagation = true;
		};
	};
	case 0xD1: 
	{
		if (ExileClientIsInConstructionMode) then
		{
			_stopPropagation = true;
		};
	};
	case 0x39:
	{
		if (ExileClientIsInConstructionMode) then
		{
			_stopPropagation = true;
		};
	};
	case 0x01:
	{
		if (ExileClientIsInConstructionMode) then
		{
			ExileClientConstructionResult = 2;
			_stopPropagation = true;
		};
	};
	case 0x15:
	{

	call TAWVD_fnc_openTAWVD;
	_stopPropagation = true;

	};
	case 0x16:
	{
		private["_vehicle"];
		if(vehicle player == player) then {
			_vehicle = cursorTarget;
		} else {
			_vehicle = vehicle player;
		};
		if ( vehicle player != player ) then { hint "Descendez d'abord du véhicule"; }
		else{
			if(!isNull _vehicle) then {
				private["_locked"];
				_locked = locked _vehicle;
				if(_locked != 1) then {
					if(player distance _vehicle < 8 && _locked != -1) then {
						ExileClientInteractionObject = _vehicle;
						if(_locked != 0) then {
							false spawn ExileClient_object_lock_toggle;
						} else {
							true spawn ExileClient_object_lock_toggle;
						};
					};
				};
			};
		};
		_stopPropagation = true;
	};
};
_stopPropagation