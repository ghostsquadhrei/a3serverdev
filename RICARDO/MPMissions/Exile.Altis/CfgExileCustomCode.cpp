class CfgExileCustomCode 
{	
	// Change Key Mapping to ++ actions
	ExileClient_gui_hud_event_onKeyDown = "addons\GS\ExileClient_gui_hud_event_onKeyDown.sqf";
	
	// Only for devs !!! Can now build near spawn zone
	ExileClient_util_world_isSpawnZoneNearby = "addons\GS\ExileClient_util_world_isSpawnZoneNearby.sqf";
	
	//FIXES FROM INFISTAR
	ExileClient_gui_hud_renderWeaponPanel = "fixes\ExileClient_gui_hud_renderWeaponPanel.sqf";
	ExileClient_gui_inventory_takeAll = "fixes\ExileClient_gui_inventory_takeAll.sqf";
	ExileClient_gui_xm8_slide_healthScanner_onOpen = "fixes\ExileClient_gui_xm8_slide_healthScanner_onOpen.sqf";
	ExileClient_object_player_event_onInventoryClosed = "fixes\ExileClient_object_player_event_onInventoryClosed.sqf";
	ExileClient_object_player_event_onInventoryOpened = "fixes\ExileClient_object_player_event_onInventoryOpened.sqf";
	ExileClient_object_player_event_onKilled = "fixes\ExileClient_object_player_event_onKilled.sqf";
	ExileClient_object_player_event_onTake = "fixes\ExileClient_object_player_event_onTake.sqf";
	ExileClient_object_player_initialize = "fixes\ExileClient_object_player_initialize.sqf";
	ExileClient_object_player_event_onEnterSafezone ="addons\Igiload\ExileClient_object_player_event_onEnterSafezone.sqf";
	//ExileClient_system_network_send = "fixes\ExileClient_system_network_send.sqf";
	ExileClient_util_world_getNearbyPlayers = "fixes\ExileClient_util_world_getNearbyPlayers.sqf";
};