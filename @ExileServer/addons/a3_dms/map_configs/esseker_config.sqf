/*
	Custom configs for Esseker.
	Sample by eraser1
	Credit goes to "Flowrider" and "Darth Rogue" for providing tested configs.

	All of these configs exist in the main config. The configs below will simply override any config from the main config.
	Explanations to all of these configs also exist in the main config.
*/

DMS_findSafePosBlacklist =
[
	//Insert position blacklists here.
];

// Reduce the blacklist range since Esseker is a smaller map.
DMS_PlayerNearBlacklist				= 750;
DMS_SpawnZoneNearBlacklist			= 1250;
DMS_TraderZoneNearBlacklist			= 1250;
DMS_MissionNearBlacklist			= 1250;
DMS_WaterNearBlacklist				= 250;

// Esseker is a hilly map, so reduced surfaceNormal so all the missions don't spawn in the south.
DMS_MaxSurfaceNormal				= 0.9;