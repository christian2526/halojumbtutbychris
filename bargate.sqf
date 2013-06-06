Access = False; 
_UIDlist = ["xxxx"]; //a list of all the UIDs of the vips. 
_trigger = "return"; //the trigger that activates the gates. 

while {true} do { 
{  
waitUntil {(vehicle _x) in (list _trigger)}; 
_uid = getPlayerUID _x; 
if (_uid in _UIDlist) then { 
Access = True; 
}; 
waitUntil {!((vehicle _x) in (list _trigger))}; 
Access = False; 
sleep 1; 
} forEach playableUnits; 
sleep 1; 
}; 