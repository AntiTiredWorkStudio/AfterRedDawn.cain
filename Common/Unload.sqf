_tVeh = _this select 0;
_driver = Driver _tVeh;
_gunner = Gunner _tVeh;
_cargoUnit = [];
{if(_x != _driver && _x != _gunner)Then{_cargoUnit = _cargoUnit + [ _x];}}forEach crew _vehicle;
{UnAssignVehicle _x}forEach _cargoUnit;