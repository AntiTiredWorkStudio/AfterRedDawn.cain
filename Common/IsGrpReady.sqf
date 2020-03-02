_tGrp = _this select 0;
_isReady = true;
{_isReady = (unitReady _x) && _isReady}forEach units _tGrp;
_isReady