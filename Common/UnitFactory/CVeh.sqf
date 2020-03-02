_pos = _this select 0;
_vehDefine = _this select 1;
_vehDirs = random 360;
if(count _this >= 3)Then{_vehDirs = _this select 2};
_veh = _vehDefine createVehicle _pos;
_veh setpos _pos;
_veh setDir _vehDirs;
_veh