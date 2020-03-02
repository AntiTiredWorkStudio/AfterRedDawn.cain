_pos = _this select 0;
_factory = _this select 1;
_InCargo = false;
_solidersDefine = ["SoldierWMG","SoldierWG","SoldierWG","SoldierWLAW","SoldierWMG","SoldierWB","SoldierWB"];
_leaderType = "OfficerW";
_crewType = "SoldierWPilot";
_vehiclesDefine = "M113";

if(count _this >= 3)Then{_InCargo = _this select 2};
if(count _this >= 4)Then{_leaderType = _this select 3};
if(count _this >= 5)Then{_crewType = _this select 4};
if(count _this >= 6)Then{_vehiclesDefine = _this select 5};
if(count _this >= 7)Then{_solidersDefine = _this select 6};

_group =[_pos,_factory,_solidersDefine,_leaderType] call Func_CGrp;
_groupCrew =[_pos,_factory,[_crewType],_crewType] call Func_CGrp;
_crews = units _groupCrew;
units _groupCrew join _group;
_veh = _vehiclesDefine createVehicle _pos;
(_crews select 0) moveInGunner _veh;
(_crews select 1) moveInDriver _veh;
_group setBehaviour "AWARE";
_group setCombatMode "RED";
_group setFormation "LINE";
_group setSpeedMode "FULL";
_group allowFleeing 1;
{_x setSkill 1;_x doFollow (Leader _group);if(_InCargo && (Vehicle _x!=_veh))Then{_x moveInCargo _veh;};}forEach units _group;
_group