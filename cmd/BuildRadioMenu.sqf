_menu = _this;
3 setRadioMsg  "NULL";
4 setRadioMsg  "NULL";
5 setRadioMsg  "NULL";
6 setRadioMsg  "NULL";
7 setRadioMsg  "NULL";
8 setRadioMsg  "NULL";
_i=0;
RadioMenuHandle = [];
_activeItems = [];
while{_i<(count _menu)}do{
	_menuItem = _menu select _i;
	_itemName = ([(_menuItem select 1)] call Func_TeamFlag);
	if(_itemName != "NULL")Then{
		_activeItems = _activeItems+[_itemName];
	};
	(_menuItem select 0) setRadioMsg _itemName;
		RadioMenuHandle =RadioMenuHandle + [[(_menuItem select 2),(_menuItem select 3)]];
	_i=_i+1;
};
if(count _activeItems == 0)Then{hint "no team control.";[]exec "cmd\InitRadio.sqs"};
RadioMenuHandle