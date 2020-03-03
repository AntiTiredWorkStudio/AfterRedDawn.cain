_unit = _this select 0;
_index = (count ControllerGroup);
ControllerGroup set[_index,group _unit];
[group _unit,_index] exec "cmd\ControlMenu.sqs";