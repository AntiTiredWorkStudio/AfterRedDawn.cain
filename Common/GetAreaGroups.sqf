_area = _this select 0;
_grpList = [];
{if(Leader _x == _x)Then{_grpList=_grpList+[group _x]}}forEach list _area;
_grpList