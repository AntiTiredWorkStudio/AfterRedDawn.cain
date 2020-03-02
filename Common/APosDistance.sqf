_pos01 = _this select 0;
_pos02 = _this select 1;

_L01 = "Logic" createVehicle _pos01;
_L02 = "Logic" createVehicle _pos02;
_L01 setpos _pos01;
_L02 setpos _pos02;
_result = _L01 distance _L02;
deleteVehicle _L01;
deleteVehicle _L02;
_result