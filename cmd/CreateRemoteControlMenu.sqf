_group = _this select 0;
_groupNum = _this select 1;
_remoteController = _this select 2;
_logic = "Logic" createVehicle getpos _remoteController;
_logic setpos getpos _remoteController;
_logic setDir _groupNum*0.1;
[_logic]exec "cmd\MenuActions.sqs";
[group _remoteController,_logic]exec "cmd\MenuFollow.sqs";
_logic