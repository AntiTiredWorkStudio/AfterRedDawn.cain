_logic = _this select 0;
_colorID = _this select 1;
_grp = _this select 2;
_tGrp = ControlLeaders select _colorID;
if((count units _grp) + (count units _tGrp) <= 12)Then{
units _grp join _tGrp;
deleteVehicle _logic;
}Else{
	hint "Over the team limit.";
};