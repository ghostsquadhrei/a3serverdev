// Vehicle Service Point (Rearm) by Axe Cop
//reworked for a3 epoch by Halv
//reworked for a3 exile by Dodo
 
private ["_vehicle","_args","_servicePoint","_costs","_magazineCount","_weapon","_type","_name","_weaponType","_weaponName","_turret","_magazines","_ammo","_wallet","_veh"];
 
_vehicle = _this select 0;
_args = _this select 3;
_servicePoint = _args select 0;
_costs = _args select 1;
_weapon = _args select 2;
_type = typeOf _vehicle;
_name = getText(configFile >> "cfgVehicles" >> _type >> "displayName");
_weaponName = _weapon select 0;
_ammoClass = _weapon select 1;
_ammoName = _weapon select 2;
_ammoMAX = _weapon select 3;
_ammoMIN = _weapon select 4;
_turret = _weapon select 5;
_wallet = ExileClientPlayerMoney;
_veh = vehicle player; 

if (!local _vehicle) exitWith {cutText [format["%2 is not local to %1 - Re-Arm Denied!",name player, _name], "PLAIN DOWN"]; diag_log format["Error: called service_point_rearm.sqf with non-local vehicle: %1", _vehicle] };
//if(count (crew _vehicle) > 1) exitWith {cutText ["Tous les passagers doivent quitter le véhicule!", "PLAIN DOWN"];}; 
if(!(_veh isEqualTo player) && {(driver _veh) isEqualTo player}) exitWith {["Whoops", format ["Tu dois monter en Gunner avant!"]] call ExileClient_gui_notification_event_addNotification;};
if (_wallet <_costs) exitWith {["Whoops", format ["Tu as besoin de %1 Pop tab!", _costs]] call ExileClient_gui_notification_event_addNotification;};  
_currentmags = magazines _vehicle;
_magscount = count _currentmags;
_ammocount = {_ammoClass == _x}count _currentmags;
if(_magscount > _ammoMAX)exitWith{["Whoops", format ["Max de chargeurs atteints!"]] call ExileClient_gui_notification_event_addNotification;};
if(_ammocount > _ammoMIN)exitWith{cutText [format["Tu as déjà %1 chargeurs de %2 dans le %3\nChargeur(s): %4 ",_ammocount,_ammoName,_weaponName,_magscount], "PLAIN DOWN"];};
 
if(_costs > 0 && isTradeEnabled)then{
        takegive_poptab = [player,_costs,true];
        publicVariableServer "takegive_poptab";
};
 
// add a magazines
_vehicle addMagazineTurret [_ammoClass, _turret];
["Success", format ["Le %1 est ré-armé", _name]] call ExileClient_gui_notification_event_addNotification;

