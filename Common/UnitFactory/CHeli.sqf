_pos = _this select 0;
_heliDefine = _this select 1;
_factory = _this select 2;
_vehDirs = random 360;
if(count _this >= 4)Then{_vehDirs = _this select 3};
_heli = _heliDefine createVehicle _pos;
_pos set[2,50];
_heli setpos _pos;
_heli setDir _vehDirs;
_driver = [_pos,"SoldierWPilot",_factory]call Func_CUnit;
_gunner = [_pos,"SoldierWPilot",_factory]call Func_CUnit;
[_gunner] join group _driver;
_driver moveInDriver _heli;
_gunner moveInGunner _heli;
_heli action["Engine On"];
[_heli,50] exec "Common\VelocityStatic.sqs";
_heli doMove getpos _heli;
_heli