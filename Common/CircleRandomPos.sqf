_corepos = _this select 0;
_radius = _this select 1;
_movepos = [(_corepos select 0),(_corepos select 1)];
_angle = random 360;
_tRadius = random _radius;
_movepos set[0,(_movepos select 0)+(cos _angle)*_tRadius];
_movepos set[1,(_movepos select 1)+(sin _angle)*_tRadius];
_movepos