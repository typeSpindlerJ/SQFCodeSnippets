//No weapon sway, no fatigue:
player setCustomAimCoef 0.001; player enableFatigue false;

//Set the trigger to heal:
{_x setDamage 0} foreach thisList; hint "You are healed!";

//Set Player damage:
player setDamage `*set 0 - 1 here *`;

//Unlimited ammo:
player addEventHandler ["Fired",{(_this select 0) setVehicleAmmo 1}];

//Spawn vehicle on player, place a different class between "" for different vehicle:
"B_Quadbike_01_F" createVehicle position player;
//***https://community.bistudio.com/wiki/Arma_3:_CfgVehicles_WEST***