#include "script_component.hpp"

// Exit on Headless
if (!hasInterface) exitWith {};

["ace_settingsInitialized", {
    TRACE_1("SettingInit", GVAR(enable));

    //If not enabled, then do not add CanInteractWith Condition or event handlers:
    if (!GVAR(enable)) exitWith {};

    // Add interaction menu exception
    ["isNotSitting", {isNil {(_this select 0) getVariable QGVAR(isSitting)}}] call EFUNC(common,addCanInteractWithCondition);

    // Handle interruptions
    ["ace_medical_onUnconscious", {_this call DFUNC(handleInterrupt)}] call CBA_fnc_addEventHandler;
    [QEGVAR(captives,setHandcuffed), {_this call DFUNC(handleInterrupt)}] call CBA_fnc_addEventHandler;
}] call CBA_fnc_addEventHandler;
