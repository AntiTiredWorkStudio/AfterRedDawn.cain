_tVeh = _this select 0;
_driver = Driver _tVeh;
_gunner = Gunner _tVeh;
_cargoUnit = [];
{if(_x != _driver && _x != _gunner)Then{_cargoUnit = _cargoUnit + [ _x];}}forEach units group _driver;
_cargoUnit orderGetIn true;
{_x assignAsCargo _tVeh}forEach _cargoUnit;