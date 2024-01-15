string tooltipIcon = "\\$888" + Icons::QuestionCircle + "\\$z";
string warningIcon = "\\$F60" + Icons::ExclamationTriangle + "\\$z";
string infoIcon = "\\$69E" + Icons::ExclamationCircle + "\\$z";

// REACTORS
[Setting hidden]
bool S_InvertReactorType = false;
bool S_InvertReactorType_Defaut = false;

[Setting hidden]
float S_ReactorWheelsAngle = 0.3;
float S_ReactorWheelsAngle_Default = 0.3;

[Setting hidden]
float S_ReactorWheelTransitionDuration = 3.14;
float S_ReactorWheelTransitionDuration_Default = 3.14;

// SPOILER
[Setting hidden]
float S_SpoilerTipLeftDistance = 0.06;
float S_SpoilerTipLeftDistance_Default = 0.06;

[Setting hidden]
vec3 S_SpoilerTipLeftTranslationAxis = vec3(1,0,0);
vec3 S_SpoilerTipLeftTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
float S_SpoilerTipRightDistance = 0.06;
float S_SpoilerTipRightDistance_Default = 0.06;

[Setting hidden]
vec3 S_SpoilerTipRightTranslationAxis = vec3(1,0,0);
vec3 S_SpoilerTipRightTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
float S_SpoilerTipBottomDistance = 0.2;
float S_SpoilerTipBottomDistance_Default = 0.2;

[Setting hidden]
vec3 S_SpoilerTipBottomTranslationAxis = vec3(1,0,0);
vec3 S_SpoilerTipBottomTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
float S_SpoilerTipBottomLeftDistance = 1;
float S_SpoilerTipBottomLeftDistance_Default = 1;

[Setting hidden]
vec3 S_SpoilerTipBottomLeftTranslationAxis = vec3(1,0,0);
vec3 S_SpoilerTipBottomLeftTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
float S_SpoilerTipBottomRightDistance = 1;
float S_SpoilerTipBottomRightDistance_Default = 1;

[Setting hidden]
vec3 S_SpoilerTipBottomRightTranslationAxis = vec3(1,0,0);
vec3 S_SpoilerTipBottomRightTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
float S_SpoilerTopRotation = 0.13;
float S_SpoilerTopRotation_Default = 0.13;

[Setting hidden]
vec3 S_SpoilerTopTranslationAxis = vec3(1,0,0);
vec3 S_SpoilerTopTranslationAxis_Default = vec3(1,0,0);

// WHEELS
[Setting hidden]
bool S_FLWheelInvert = false;
bool S_FLWheelInvert_Default = false;

[Setting hidden]
float S_FLWheelSpeed = 1;
float S_FLWheelSpeed_Default = 1;

[Setting hidden]
vec3 S_FLWheelTranslationAxis = vec3(1,0,0);
vec3 S_FLWheelTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
bool S_FRWheelInvert = false;
bool S_FRWheelInvert_Default = false;

[Setting hidden]
float S_FRWheelSpeed = 1;
float S_FRWheelSpeed_Default = 1;

[Setting hidden]
vec3 S_FRWheelTranslationAxis = vec3(1,0,0);
vec3 S_FRWheelTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
bool S_RRWheelInvert = false;
bool S_RRWheelInvert_Default = false;

[Setting hidden]
float S_RRWheelSpeed = 1;
float S_RRWheelSpeed_Default = 1;

[Setting hidden]
vec3 S_RRWheelTranslationAxis = vec3(1,0,0);
vec3 S_RRWheelTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
bool S_RLWheelInvert = false;
bool S_RLWheelInvert_Default = false;

[Setting hidden]
float S_RLWheelSpeed = 1;
float S_RLWheelSpeed_Default = 1;

[Setting hidden]
vec3 S_RLWheelTranslationAxis = vec3(1,0,0);
vec3 S_RLWheelTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
float S_FLWheelAngleMultiplier = 1;
float S_FLWheelAngleMultiplier_Default = 1;

[Setting hidden]
vec3 S_FLWheelSteeringTranslationAxis = vec3(1,0,0);
vec3 S_FLWheelSteeringTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
float S_FRWheelAngleMultiplier = 1;
float S_FRWheelAngleMultiplier_Default = 1;

[Setting hidden]
vec3 S_FRWheelSteeringTranslationAxis = vec3(1,0,0);
vec3 S_FRWheelSteeringTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
float S_StaticDoorAnim = 0.0;
float S_StaticDoorAnim_Default = 0.0;

[Setting hidden]
bool S_HideDoor = false;
bool S_HideDoor_Default = false;

[Setting hidden]
bool S_CloseDoorWhenSpoilerOpens = false;
bool S_CloseDoorWhenSpoilerOpens_Default = false;

[Setting hidden]
bool S_CloseDoorWhenSpeedExceeds37 = false;
bool S_CloseDoorWhenSpeedExceeds37_Default = false;

[Setting hidden]
float S_CloseDoorWhenSpeedExceeds37_Value = 10;
float S_CloseDoorWhenSpeedExceeds37_Value_Default = 10;

[Setting hidden]
float S_RRAirBrakeDegree = 30;
float S_RRAirBrakeDegree_Default = 30;

[Setting hidden]
float S_RLAirBrakeDegree = 30;
float S_RLAirBrakeDegree_Default = 30;

[Setting hidden]
float S_FAirBrakeDegree = 15;
float S_FAirBrakeDegree_Default = 15;

[Setting hidden]
float S_LWingMultiplier = 1;
float S_LWingMultiplier_Default = 1;

[Setting hidden]
vec3 S_LWingMultiplierTranslationAxis = vec3(1,0,0);
vec3 S_LWingMultiplierTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
float S_RWingMultiplier = 1;
float S_RWingMultiplier_Default = 1;

[Setting hidden]
vec3 S_RWingMultiplierTranslationAxis = vec3(1,0,0);
vec3 S_RWingMultiplierTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
float S_SteeringWheelMaxAngle = 30;
float S_SteeringWheelMaxAngle_Default = 30;

[Setting hidden]
float S_SteeringWheelMultiplier = 1;
float S_SteeringWheelMultiplier_Default = 1;

[Setting hidden]
vec3 S_SteeringWheelTranslationAxis = vec3(1,0,0);
vec3 S_SteeringWheelTranslationAxis_Default = vec3(1,0,0);

[Setting hidden]
float S_HeadguardDivider = 4;
float S_HeadguardDivider_Default = 4;

[Setting hidden]
vec3 S_HeadguardTranslationAxis = vec3(0,1,0);
vec3 S_HeadguardTranslationAxis_Default = vec3(0,1,0);

// TODO
// v index 15
// DoorOpen (-0.1 to 5)
// DoorAxis (cancelled, useless)
// Air brake (angle + axis)
// Wings (multiplier + axis)
// Steering wheel (multiplier (multiply clamp angles + steer angle) + axis)
// Headguard (*0.25 by default + axis)
// Closes Door when spoiler opens ("-SpoilerOpen+1")
// Closes when > 40 km/h (-clamp(abs(FrontSpeed)/10, 0, 1)+1)

// DOUBLE CHECK ALL DEFAULT VALUES !!!!!!!!!