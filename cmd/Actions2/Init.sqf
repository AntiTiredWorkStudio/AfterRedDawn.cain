_logic = _this select 0;
_result = [_logic,ControlLeaders,ControllerGroup] call Func_SearchTeamByLogic;
_aidRed = _logic addAction[format["[%1]Assign Team Red(%2)",(_result select 1),(count units (ControlLeaders select 0))],"cmd\Actions2\TeamRed.sqs"];
_aidGreen = _logic addAction[format["[%1]Assign Team Green(%2)",(_result select 1),(count units (ControlLeaders select 1))],"cmd\Actions2\TeamGreen.sqs"];
_aidBlue = _logic addAction[format["[%1]Assign Team Blue(%2)",(_result select 1),(count units (ControlLeaders select 2))],"cmd\Actions2\TeamBlue.sqs"];
_aidYellow = _logic addAction[format["[%1]Assign Team Yellow(%2)",(_result select 1),(count units (ControlLeaders select 3))],"cmd\Actions2\TeamYellow.sqs"];
_aidBlack = _logic addAction[format["[%1]Assign Team Black(%2)",(_result select 1),(count units (ControlLeaders select 4))],"cmd\Actions2\TeamBlack.sqs"];
_aidWhite = _logic addAction[format["[%1]Assign Team White(%2)",(_result select 1),(count units (ControlLeaders select 5))],"cmd\Actions2\TeamWhite.sqs"];
_aidBack = _logic addAction[format["[%1]Back to up menu",(_result select 1)],"cmd\Actions2\Back.sqs"];
[_aidRed,_aidGreen,_aidBlue,_aidYellow,_aidBlack,_aidWhite,_aidBack]