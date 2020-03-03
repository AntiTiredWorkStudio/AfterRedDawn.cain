_array = _this select 0;
_tGrp = _this select 1;

_i = 0;
_searchIndex = -1;
while{_i<(count _array)}do{
	if(_tGrp == (_array select _i))Then{
		_searchIndex = _i;
	};
	_i=_i+1;
};
_searchIndex