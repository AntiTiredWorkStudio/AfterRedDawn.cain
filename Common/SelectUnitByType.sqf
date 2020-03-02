_tRegion = _this select 0;
_typeArray = _this select 1;
_totalUnits = list _tRegion;
_result = [];
_i = 0;
while{_i<(count _totalUnits)}do{
	_current = _totalUnits select _i;
	if((typeOf _current) in _typeArray)Then{
		_result = _result + [_current];
	};
	_i=_i+1;
};
_result