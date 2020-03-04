_logic = _this select 0;
_result = [_logic,ControlLeaders,ControllerGroup] call Func_SearchTeamByLogic;
_actionName = format["Group %1",_result select 1];
_aid = _logic addAction[_actionName,"cmd\Actions0\Action_OpenCommandMenu.sqs"];
[_aid]