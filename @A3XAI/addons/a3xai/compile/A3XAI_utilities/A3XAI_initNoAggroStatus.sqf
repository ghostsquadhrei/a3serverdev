private ["_unitGroup", "_object", "_inArea"];

_unitGroup = _this;
_object = (leader _unitGroup);

_inArea = _object call A3XAI_checkInNoAggroArea;
[_unitGroup,_inArea] call A3XAI_setNoAggroStatus;

true
