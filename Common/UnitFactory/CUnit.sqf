//; *****************************************************
//; ** Operation Flashpoint Script File
//; *****************************************************
_pos = _this select 0;
_unitType = _this select 1;
_factory = _this select 2;
_unitType createUnit [_pos, group _factory];
_unit = (units group _factory) select 1;
[_unit] join grpNull;
_unit