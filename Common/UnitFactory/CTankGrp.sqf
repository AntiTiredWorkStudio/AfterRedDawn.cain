_pos = _this select 0;
_factory = _this select 1;
_crewType = "SoldierWCrew";
_vehiclesDefine = "M1Abrams";

if(count _this >= 3)Then{_crewType = _this select 2};
if(count _this >= 4)Then{_vehiclesDefine = _this select 3};

_group =[_pos,_factory,[_crewType,_crewType,_crewType,_crewType,_crewType,_crewType,_crewType,_crewType,_crewType,_crewType,_crewType],_crewType] call Func_CGrp;

_vehPosList = [[_pos,[10,10,0]]Call Func_APos,[_pos,[-10,10,0]]Call Func_APos,[_pos,[10,-10,0]]Call Func_APos,[_pos,[-10,-10,0]]Call Func_APos];
_crews = (units _group);
_i=0;
_vehicles = [];
while{_i<4}do{
	_veh = _vehiclesDefine createVehicle (_vehPosList select _i);
	_veh setpos (_vehPosList select _i);
	_command = _crews select _i;
	_driver = _crews select _i+4;
	_gunner = _crews select _i+8;
	_command moveInCommander _veh;
	_driver moveInDriver _veh;
	_gunner moveInGunner _veh;
	_vehicles = _vehicles + [_veh];
	_i = _i + 1;
};
_group setBehaviour "AWARE";
_group setCombatMode "RED";
_group setFormation "LINE";
_group setSpeedMode "FULL";
_group allowFleeing 1;
{_x setSkill 1;}forEach _vehicles;
{_x setSkill 1;}forEach _crews;
[_group,_vehicles]