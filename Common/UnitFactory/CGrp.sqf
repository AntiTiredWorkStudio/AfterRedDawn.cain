_pos = _this select 0;
_factory = _this select 1;
_leaderType = "OfficerW";
_solidersDefine = ["SoldierWMG","SoldierWG","SoldierWG","SoldierWLAW","SoldierWMG","SoldierWB","SoldierWB"];

if(count _this >= 4)Then{_leaderType = _this select 3};
if(count _this >= 3)Then{_solidersDefine = _this select 2};

_leader = [_pos,_leaderType,_factory] call Func_CUnit;
_i=0;
while{_i<(count _solidersDefine) && (count units (group _leader) < 12)}do{
	(_solidersDefine select _i) createUnit [_pos, group _leader];
	_i = _i+1;
};
group _leader setBehaviour "AWARE";
group _leader setCombatMode "RED";
group _leader setFormation "LINE";
{_x setSkill 1;_x doFollow _leader;}forEach units (group _leader); 
(group _leader) setSpeedMode "FULL";
(group _leader) allowFleeing 1;
group _leader