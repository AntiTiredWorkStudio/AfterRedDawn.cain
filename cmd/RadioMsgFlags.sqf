_native = _this select 0;
_result = _native;
if(_native == "Military Radio(%1 Teams)")Then{
	_countTeam = 0;
	{if(count units _x >0)Then{_countTeam = _countTeam+1;}}forEach ControlLeaders;
	_result = format[_native,_countTeam];
};
if(_native == "[%1]Set Destination")Then{
	_teamFlag = "NONE";
	if(SelectionTeamIndex!=-1)Then{
		_teamFlag = ControlTexts select SelectionTeamIndex;
	};
	_result = format[_native,_teamFlag];
};
if(_native == "[%1]Lead Team")Then{
	_teamFlag = "NONE";
	if(SelectionTeamIndex!=-1)Then{
		_teamFlag = ControlTexts select SelectionTeamIndex;
	};
	_result = format[_native,_teamFlag];
};
if(_native == "[%1]Close")Then{
	_teamFlag = "NONE";
	if(SelectionTeamIndex!=-1)Then{
		_teamFlag = ControlTexts select SelectionTeamIndex;
	};
	_result = format[_native,_teamFlag];
};
if(_native == "Red:%1")Then{
	if(count units (ControlLeaders select 0) >0)Then{
		_result = format[_native,(ControlLeaders select 0)];
	}Else{
		_result = "NULL";
	};
};
if(_native == "Green:%1")Then{
	if(count units (ControlLeaders select 1)>0)Then{
		_result = format[_native,(ControlLeaders select 1)];
	}Else{
		_result = "NULL";
	};
};
if(_native == "Blue:%1")Then{
	if(count units (ControlLeaders select 2)>0)Then{
		_result = format[_native,(ControlLeaders select 2)];
	}Else{
		_result = "NULL";
	};
};
if(_native == "Yellow:%1")Then{
	if(count units (ControlLeaders select 3)>0)Then{
		_result = format[_native,(ControlLeaders select 3)];
	}Else{
		_result = "NULL";
	};
};
if(_native == "Black:%1")Then{
	if(count units (ControlLeaders select 4)>0 )Then{
		_result = format[_native,(ControlLeaders select 4)];
	}Else{
		_result = "NULL";
	};
};
if(_native == "White:%1")Then{
	if(count units (ControlLeaders select 5)>0)Then{
		_result = format[_native,(ControlLeaders select 5)];
	}Else{
		_result = "NULL";
	};
};
_result