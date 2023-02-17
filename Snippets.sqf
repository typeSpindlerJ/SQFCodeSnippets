// HALO JUMP - This is very basic, once triggered you can goto the map
//             single click again and you will halo again right away:

//*** add this to an object you placed on the ground ( like a sign ):

this addAction ["HALO Jump", "halo.sqf"]

//*** create halo.sqf in your mission folder, add this code:

openMap true;
onMapSingleClick
{
   player setPos _pos;
   _alt = 2000;
   [ player, _alt ] spawn BIS_fnc_halo;
   player addBackpack "B_Parachute";
   openMap false;
};

//*** you could also set the above code in a trigger and 
//	   add this in "On Activation"

