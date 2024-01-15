[SettingsTab name="Stadium Car" icon="Magic"]
void S_RenderAnimSettingsTab() {
    if(UI::Button("Apply changes")){
        ApplyChanges();
    }
    UI::SameLine();
    if(UI::Button("Reset all changes")){
        S_InvertReactorType = S_InvertReactorType_Defaut;
        S_ReactorWheelsAngle = S_ReactorWheelsAngle_Default;
        S_ReactorWheelTransitionDuration = S_ReactorWheelTransitionDuration_Default;

        S_SpoilerTipLeftDistance = S_SpoilerTipLeftDistance_Default;
        S_SpoilerTipLeftTranslationAxis = S_SpoilerTipLeftTranslationAxis_Default;
        S_SpoilerTipRightDistance = S_SpoilerTipRightDistance_Default;
        S_SpoilerTipRightTranslationAxis = S_SpoilerTipRightTranslationAxis_Default;
        S_SpoilerTipBottomDistance = S_SpoilerTipBottomDistance_Default;
        S_SpoilerTipBottomTranslationAxis = S_SpoilerTipBottomTranslationAxis_Default;
        S_SpoilerTipBottomLeftDistance = S_SpoilerTipBottomLeftDistance_Default;
        S_SpoilerTipBottomLeftTranslationAxis = S_SpoilerTipBottomLeftTranslationAxis_Default;
        S_SpoilerTipBottomRightDistance = S_SpoilerTipBottomRightDistance_Default;
        S_SpoilerTipBottomRightTranslationAxis = S_SpoilerTipBottomRightTranslationAxis_Default;
        S_SpoilerTopRotation = S_SpoilerTopRotation_Default;
        S_SpoilerTopTranslationAxis = S_SpoilerTopTranslationAxis_Default;

        S_FLWheelInvert = S_FLWheelInvert_Default;
        S_FLWheelSpeed = S_FLWheelSpeed_Default;
        S_FLWheelTranslationAxis = S_FLWheelTranslationAxis_Default;
        S_FRWheelInvert = S_FRWheelInvert_Default;
        S_FRWheelSpeed = S_FRWheelSpeed_Default;
        S_FRWheelTranslationAxis = S_FRWheelTranslationAxis_Default;
        S_RRWheelInvert = S_RRWheelInvert_Default;
        S_RRWheelSpeed = S_RRWheelSpeed_Default;
        S_RRWheelTranslationAxis = S_RRWheelTranslationAxis_Default;
        S_RLWheelInvert = S_RLWheelInvert_Default;
        S_RLWheelSpeed = S_RLWheelSpeed_Default;
        S_RLWheelTranslationAxis = S_RLWheelTranslationAxis_Default;
        S_FLWheelAngleMultiplier = S_FLWheelAngleMultiplier_Default;
        S_FLWheelSteeringTranslationAxis = S_FLWheelSteeringTranslationAxis_Default;
        S_FRWheelAngleMultiplier = S_FRWheelAngleMultiplier_Default;
        S_FRWheelSteeringTranslationAxis = S_FRWheelSteeringTranslationAxis_Default;

        S_StaticDoorAnim = S_StaticDoorAnim_Default;
        S_HideDoor = S_HideDoor_Default;
        S_CloseDoorWhenSpoilerOpens = S_CloseDoorWhenSpoilerOpens_Default;
        S_CloseDoorWhenSpeedExceeds37 = S_CloseDoorWhenSpeedExceeds37_Default;
        S_CloseDoorWhenSpeedExceeds37_Value = S_CloseDoorWhenSpeedExceeds37_Value_Default;
        S_RRAirBrakeDegree = S_RRAirBrakeDegree_Default;
        S_RLAirBrakeDegree = S_RLAirBrakeDegree_Default;
        S_FAirBrakeDegree = S_FAirBrakeDegree_Default;
        S_LWingMultiplier = S_LWingMultiplier_Default;
        S_LWingMultiplierTranslationAxis = S_LWingMultiplierTranslationAxis_Default;
        S_RWingMultiplier = S_RWingMultiplier_Default;
        S_RWingMultiplierTranslationAxis = S_RWingMultiplierTranslationAxis_Default;
        S_SteeringWheelMaxAngle = S_SteeringWheelMaxAngle_Default;
        S_SteeringWheelMultiplier = S_SteeringWheelMultiplier_Default;
        S_SteeringWheelTranslationAxis = S_SteeringWheelTranslationAxis_Default;
        S_HeadguardDivider = S_HeadguardDivider_Default;
        S_HeadguardTranslationAxis = S_HeadguardTranslationAxis_Default;

        ApplyChanges();
    }

    if (UI::CollapsingHeader("Reactors")) {
        S_InvertReactorType = UI::Checkbox("Invert reactor type", S_InvertReactorType);
        UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: Unchecked"); UI::EndTooltip(); }

        S_ReactorWheelsAngle = UI::SliderFloat("Reactor wheels angle multiplier", S_ReactorWheelsAngle, -6, 6, "%.02f");
        UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 0.3"); UI::EndTooltip(); }

        S_ReactorWheelTransitionDuration = UI::SliderFloat("Reactor wheels animation speed (radian per second)", S_ReactorWheelTransitionDuration, 0, 20, "%.02f");
        UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 3.14"); UI::EndTooltip(); }
    }

    if (UI::CollapsingHeader("Spoiler")) {
        UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
        if(UI::CollapsingHeader("Top spoiler")){
            // TOP SPOILER
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTopRotation = UI::SliderFloat("Top spoiler rotation", S_SpoilerTopRotation, -10, 10, "%.02f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 0.13"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTopTranslationAxis = UI::SliderFloat3("Top spoiler translation axis (X, Y, Z)", S_SpoilerTopTranslationAxis, -10, 10, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTipLeftDistance = UI::SliderFloat("Top left spoiler tip distance", S_SpoilerTipLeftDistance, -10, 10, "%.02f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 0.06"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTipLeftTranslationAxis = UI::SliderFloat3("Top left spoiler tip translation axis (X, Y, Z)", S_SpoilerTipLeftTranslationAxis, -10, 10, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTipRightDistance = UI::SliderFloat("Top right spoiler tip distance", S_SpoilerTipRightDistance, -10, 10, "%.02f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 0.06"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTipRightTranslationAxis = UI::SliderFloat3("Top right spoiler tip translation axis (X, Y, Z)", S_SpoilerTipRightTranslationAxis, -10, 10, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }
        }

        UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
        if(UI::CollapsingHeader("Bottom spoiler")){
            // BOTTOM SPOILER
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTipBottomDistance = UI::SliderFloat("Bottom spoiler distance", S_SpoilerTipBottomDistance, -10, 10, "%.02f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 0.2"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTipBottomTranslationAxis = UI::SliderFloat3("Bottom spoiler translation axis (X, Y, Z)", S_SpoilerTipBottomTranslationAxis, -10, 10, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTipBottomLeftDistance = UI::SliderFloat("Bottom left spoiler tip distance", S_SpoilerTipBottomLeftDistance, -10, 10, "%.02f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 0"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTipBottomLeftTranslationAxis = UI::SliderFloat3("Bottom left spoiler tip translation axis (X, Y, Z)", S_SpoilerTipBottomLeftTranslationAxis, -10, 10, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTipBottomRightDistance = UI::SliderFloat("Bottom right spoiler tip distance", S_SpoilerTipBottomRightDistance, -10, 10, "%.02f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 0"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SpoilerTipBottomRightTranslationAxis = UI::SliderFloat3("Bottom right spoiler tip translation axis (X, Y, Z)", S_SpoilerTipBottomRightTranslationAxis, -10, 10, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }
        }
    }

    if (UI::CollapsingHeader("Wheels")) {
        UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
        if(UI::CollapsingHeader("Front left wheel")){
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_FLWheelInvert = UI::Checkbox("Invert wheel rotation##1", S_FLWheelInvert);
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: Unchecked"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_FLWheelSpeed = UI::SliderFloat("Wheel rotation speed##1", S_FLWheelSpeed, 0, 10, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 1"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_FLWheelTranslationAxis = UI::SliderFloat3("Wheel rotation axis (X, Y, Z)##1", S_FLWheelTranslationAxis, 0, 1, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }
        
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_FLWheelAngleMultiplier = UI::SliderFloat("Wheel steering multiplier##1", S_FLWheelAngleMultiplier, 0, 10, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 1"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_FLWheelSteeringTranslationAxis = UI::SliderFloat3("Wheel steering rotation axis (X, Y, Z)##1", S_FLWheelSteeringTranslationAxis, -1, 1, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }
        }

        UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
        if(UI::CollapsingHeader("Front right wheel")){
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_FRWheelInvert = UI::Checkbox("Invert wheel rotation##2", S_FRWheelInvert);
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: Unchecked"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_FRWheelSpeed = UI::SliderFloat("Wheel rotation speed##2", S_FRWheelSpeed, 0, 10, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 1"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_FRWheelTranslationAxis = UI::SliderFloat3("Wheel rotation axis (X, Y, Z)##2", S_FRWheelTranslationAxis, 0, 1, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }
        
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_FRWheelAngleMultiplier = UI::SliderFloat("Wheel steering multiplier##2", S_FRWheelAngleMultiplier, 0, 10, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 1"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_FRWheelSteeringTranslationAxis = UI::SliderFloat3("Wheel steering rotation axis (X, Y, Z)##2", S_FRWheelSteeringTranslationAxis, -1, 1, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }
        }

        UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
        if(UI::CollapsingHeader("Rear right wheel")){
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_RRWheelInvert = UI::Checkbox("Invert wheel rotation##3", S_RRWheelInvert);
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: Unchecked"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_RRWheelSpeed = UI::SliderFloat("Wheel rotation speed##3", S_RRWheelSpeed, 0, 10, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 1"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_RRWheelTranslationAxis = UI::SliderFloat3("Wheel rotation axis (X, Y, Z)##3", S_RRWheelTranslationAxis, 0, 1, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }
        }

        UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
        if(UI::CollapsingHeader("Rear left wheel")){
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_RLWheelInvert = UI::Checkbox("Invert wheel rotation##4", S_RLWheelInvert);
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: Unchecked"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_RLWheelSpeed = UI::SliderFloat("Wheel rotation speed##4", S_RLWheelSpeed, 0, 10, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 1"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_RLWheelTranslationAxis = UI::SliderFloat3("Wheel rotation axis (X, Y, Z)##4", S_RLWheelTranslationAxis, 0, 1, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }
        }
    }

    if (UI::CollapsingHeader("Extras")) {
        UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
        if(UI::CollapsingHeader("Door")){
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_HideDoor = UI::Checkbox("Hide door##1", S_HideDoor);
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: Unchecked"); UI::EndTooltip(); }

            if(!S_HideDoor){
                UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
                S_StaticDoorAnim = UI::SliderFloat("Force door animation value##1", S_StaticDoorAnim, -0.1, 5, "%.01f");
                UI::SameLine(); UI::Text(warningIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Caution: This will mess with the settings below."); UI::EndTooltip(); }
                UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 0"); UI::EndTooltip(); }
                
                UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
                S_CloseDoorWhenSpoilerOpens = UI::Checkbox("Close door when spoiler deploys##1", S_CloseDoorWhenSpoilerOpens);
                UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: Unchecked"); UI::EndTooltip(); }
                if(S_CloseDoorWhenSpoilerOpens) S_CloseDoorWhenSpeedExceeds37 = false;

                UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
                S_CloseDoorWhenSpeedExceeds37 = UI::Checkbox("Close door when speed exceeds speed##1", S_CloseDoorWhenSpeedExceeds37);
                UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: Unchecked"); UI::EndTooltip(); }
                if(S_CloseDoorWhenSpeedExceeds37) S_CloseDoorWhenSpoilerOpens = false;

                if(S_CloseDoorWhenSpeedExceeds37){
                    UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
                    S_CloseDoorWhenSpeedExceeds37_Value = UI::SliderFloat("Wheel rotation speed##4", S_CloseDoorWhenSpeedExceeds37_Value, 0, 50, "%.01f");
                    UI::SameLine(); UI::Text(infoIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Generic value without unit.\nIncrease it and it'll close before. Reduce it and it'll close after."); UI::EndTooltip(); }
                    UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 10"); UI::EndTooltip(); }
                }
            }
        }

        UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
        if(UI::CollapsingHeader("Air brake")){
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_RRAirBrakeDegree = UI::SliderFloat("Rear right air brake angle##1", S_RRAirBrakeDegree, -180, 180, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 30"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_RLAirBrakeDegree = UI::SliderFloat("Rear left air brake angle##1", S_RLAirBrakeDegree, -180, 180, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 30"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_FAirBrakeDegree = UI::SliderFloat("front air brake angle##1", S_FAirBrakeDegree, -180, 180, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 15"); UI::EndTooltip(); }
        }

        UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
        if(UI::CollapsingHeader("Wings")){
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_LWingMultiplier = UI::SliderFloat("Left wing multiplier##1", S_LWingMultiplier, 0, 50, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 1"); UI::EndTooltip(); }
            
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_LWingMultiplierTranslationAxis = UI::SliderFloat3("Left wing axis (X, Y, Z)##1", S_LWingMultiplierTranslationAxis, 0, 1, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }
            
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_RWingMultiplier = UI::SliderFloat("Right wing multiplier##1", S_RWingMultiplier, 0, 50, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 1"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_RWingMultiplierTranslationAxis = UI::SliderFloat3("Right wing axis (X, Y, Z)##1", S_RWingMultiplierTranslationAxis, 0, 1, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }
        }

        UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
        if(UI::CollapsingHeader("Steering wheel")){
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SteeringWheelMaxAngle = UI::SliderFloat("Steering wheel max angle##1", S_SteeringWheelMaxAngle, 0, 50, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 30"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SteeringWheelMultiplier = UI::SliderFloat("Steering wheel multiplier##1", S_SteeringWheelMultiplier, 0, 50, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 1"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_SteeringWheelTranslationAxis = UI::SliderFloat3("Right wing axis (X, Y, Z)##1", S_SteeringWheelTranslationAxis, 0, 1, "%1.0f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {1, 0, 0}"); UI::EndTooltip(); }
        }

        UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
        if(UI::CollapsingHeader("Headguard")){
            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_HeadguardDivider = UI::SliderFloat("Heaguard divider##1", S_HeadguardDivider, 0, 50, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: 4"); UI::EndTooltip(); }

            UI::SetCursorPos(vec2(UI::GetCursorPos().x + 16, UI::GetCursorPos().y));
            S_HeadguardTranslationAxis = UI::SliderFloat3("Headguard translation axis (X, Y, Z)##1", S_HeadguardTranslationAxis, -10, 10, "%.01f");
            UI::SameLine(); UI::Text(tooltipIcon); if (UI::IsItemHovered()) { UI::BeginTooltip(); UI::Text("Default value: {0, 1, 0}"); UI::EndTooltip(); }
        }
    }
}