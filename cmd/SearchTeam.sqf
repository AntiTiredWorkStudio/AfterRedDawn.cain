_logic = _this select 0;
_ControlArray = _this select 1;
_TotalArray = _this select 2;
_grp = _TotalArray select (getDir _logic)*10;
_i=0;
_result = [];
while{_i<6}do{
	_group = _ControlArray select _i;
	if(_group != grpNull && _group == _grp)Then{_result = [_grp,(ControlTexts select _i)];};
	_i=_i+1;
};
if(count _result==0)Then{_result=[_grp,format["%1",_grp]]};
_result