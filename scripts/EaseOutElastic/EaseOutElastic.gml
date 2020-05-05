/// @desc EaseOutElastic(current time,duration,start value,change in value, [absolute = false])
/// @arg currentTime
/// @arg duration
/// @arg start value
/// @arg change in value
/// @arg ?absolute



if (argument_count>4) {
	if (argument[4]) {
		argument[3] = argument[3] - argument[2];
	}
}

var _s = 1.70158;
var _p = 0;
var _a = argument[3];

if (argument[0] == 0 || _a == 0)
{
    return argument[2];
}

argument[0] /= argument[1];

if (argument[0] == 1)
{
    return argument[2] + argument[3];
}

if (_p == 0)
{
    _p = argument[1] * 0.3;
}

if (_a < abs(argument[3])) 
{ 
    _a = argument[3];
    _s = _p * 0.25; 
}
else 
{
    _s = _p / (2 * pi) * arcsin (argument[3] / _a);
}

return _a * power(2, -10 * argument[0]) * sin((argument[0] * argument[1] - _s) * (2 * pi) / _p ) + argument[3] + argument[2];
