_sideStr = _this select 0;

_groupHead = ["Alpha","Bravo","Charlie","Delta","Echo","Foxtrot","Golf","Hotel","Kilo"];

_groupTail =[""," Black"," Red"," Green"," Blue"," Yellow"," Pink"];

_groupFormat = "%1 %2%3";

_resultGroup = [];
_i = 0;
_j = 0;
while{_i<(count _groupHead)}do{
	_j = 0;
	while{_j<(count _groupTail)}do{
		_grpString = _sideStr+" "+ (_groupHead select _i)+(_groupTail select _j);
		//_grpResult = call _grpString;
		_resultGroup = _resultGroup+[call _grpString];
		//if(!(isNull _grpResult))Then{_resultGroup = _resultGroup+[_grpResult];};
		_j = _j+1;
	};
	_i = _i+1;
};

_resultGroup