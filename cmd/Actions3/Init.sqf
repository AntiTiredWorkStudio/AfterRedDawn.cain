_logic = _this select 0;
_result = [_logic,ControlLeaders,ControllerGroup] call Func_SearchTeamByLogic;
_aidSetDestine = _logic addAction[format["[%1]Set Destine",(_result select 1)],"cmd\Actions3\SetDestine.sqs"];
_aidLead = _logic addAction[format["[%1]Lead Team",(_result select 1)],"cmd\Actions3\LeadTeam.sqs"];
_aidBack = _logic addAction[format["[%1]Back to up menu",(_result select 1)],"cmd\Actions3\Back.sqs"];
[_aidSetDestine,_aidLead,_aidBack]