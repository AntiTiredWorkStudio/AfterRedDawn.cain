_tRegion = _this select 0;
_target = _this select 1;
_radius = _this select 2;
_totalUnits = list _tRegion;
_resultUnits = [];
{if(_x distance _target< _radius)Then{_resultUnits = _resultUnits + [_x]}}forEach _totalUnits;
_resultUnits