/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_position","_radius","_isNearby"];
_position = _this;
_radius = 1000;
_uid = getPlayerUID player;
_isNearby = false;
{
	if (_uid == '76561197994679825' || _uid == '76561198089647256' || _uid == '76561198106455945') then
	{
		_radius = 0;
	};
	if (getMarkerType _x == "ExileSpawnZone") then
	{
		if ((getMarkerPos _x) distance _position < _radius) exitWith
		{
			_isNearby = true;
		};
	};
}
forEach allMapMarkers;
_isNearby