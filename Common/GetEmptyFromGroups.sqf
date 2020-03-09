_groupArray = _this select 0;
_i=0;
_resultGrp = grpNull;
while{_i<(count _groupArray)}do{
	_cgrp = _groupArray select _i;
	if((count units _cgrp) == 0)Then{
		_resultGrp = _cgrp;
	};
	_i=_i+1;
};
_resultGrp