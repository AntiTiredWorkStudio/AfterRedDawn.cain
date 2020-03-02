_logic = _this select 0;
_result = [_logic,ControlLeaders,ControllerGroup] call Func_SearchTeamByLogic;
_aid01 = _logic addAction[format["[%1]Command",_result select 1],"cmd\Actions1\Action_CommandMenu.sqs"];
_aid02 = _logic addAction[format["[%1]Assign Team",_result select 1],"cmd\Actions1\Action_AssignTeam.sqs"];
_aid03 = _logic addAction[format["[%1]Close Team Menu",_result select 1],"cmd\Actions1\Action_ExitMenu.sqs"];
[_aid01,_aid02,_aid03]