_teamIndex = SelectionTeamIndex;
_grp = ControlLeaders select _teamIndex;
_grpFlag = ControlTexts select _teamIndex;
[[_grp,_grpFlag]]exec "cmd\MovingAction.sqs";