_teamIndex = SelectionTeamIndex;
_grp = ControlLeaders select _teamIndex;
_grpFlag = ControlTexts select _teamIndex;
[objNull,[_grp,_grpFlag]]exec "cmd\PlayerLeadTeam.sqs";
[] call Func_ResetMenu;