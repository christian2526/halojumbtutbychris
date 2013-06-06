Code für das Ende der init.sqf: 

//HALO SPAWN SCRIPT
 
bis_fnc_halo = compile preprocessFileLineNumbers "fixes\fn_HALO.sqf";
 
if (!isDedicated) then {
    [] spawn {
        waitUntil { !isNil ("dayz_Totalzedscheck") and  !(player getVariable ["humanity",0] > 5000 and typeOf player == "Survivor2_DZ") and !(player getVariable ["humanity",0] < -2000 and (typeOf player == "Survivor2_DZ" or typeOf player == "SurvivorW2_DZ") ) and !(player getVariable ["humanity",0] > 0 and (typeOf player == "Bandit1_DZ" or typeOf player == "BanditW1_DZ") ) };
 
        if (dayzPlayerLogin2 select 2) then
        {
            _pos = position player;
            "respawn_west" setMarkerPos [_pos select 0, _pos select 1];
            [player, 1000] spawn bis_fnc_halo;
        };
    };
};