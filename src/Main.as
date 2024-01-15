CSystemFidFile@ file;
CPlugAnimFile@ carAnim;
void Main() {
	// while(true){
	// 	yield();
	// }
}

void ApplyChanges(){
	@file = Fids::GetGame("GameData/Skins/Models/CarSport/Stadium/Common/MainBody.Anim.Gbx");
	// print(file.ByteSize);
	if(file.ByteSize > 0){
		@carAnim = cast<CPlugAnimFile@>(file.Nod);

		ChangeReactors();
		ChangeSpoiler();
		ChangeWheels();
		ChangeExtras();
	}
}

void ChangeReactors(){
	// REACTORS
	CPlugAnimGraphNode_Graph@ graph11 = cast<CPlugAnimGraphNode_Graph@>(carAnim.NodeGraphs[0].Nodes[11]);
	if(graph11 is null) return;

	CPlugAnimGraphNode_SetVar@ setVar3 = cast<CPlugAnimGraphNode_SetVar@>(graph11.Nodes[3]);
	if(setVar3 is null) return;

	if(S_InvertReactorType){
		setVar3.Variable_Expr = """select(IsReactorBoost, 
		select(ReactorBoostType == 'Up', -1, 1),
		0)""";
	}else{
		setVar3.Variable_Expr = """select(IsReactorBoost, 
		select(ReactorBoostType == 'Up', 1, -1),
		0)""";
	}

	CPlugAnimGraphNode_SetVar@ setVar18 = cast<CPlugAnimGraphNode_SetVar@>(graph11.Nodes[18]);
	if(setVar18 is null) return;
	if(S_InvertReactorType){
		setVar18.Variable_Expr = """select(IsReactorBoost, 
		select((WheelsAreAirMode), 
					select((TargetFlameRollNormed > 0),
								TargetFlameRollNormed, 
								TargetFlameRollNormed*"""+S_ReactorWheelsAngle+"""), 
					0),
		0)""";
	}else{
		setVar18.Variable_Expr = """select(IsReactorBoost, 
		select((WheelsAreAirMode), 
					select((TargetFlameRollNormed > 0),
								TargetFlameRollNormed*"""+S_ReactorWheelsAngle+""", 
								TargetFlameRollNormed*0.3), 
					0),
		0)""";
	}

	SPlugGraphVar@ graphVar0 = cast<SPlugGraphVar@>(graph11.Vars[0]);
	graphVar0.FloatVal = S_ReactorWheelTransitionDuration;
}

void ChangeSpoiler(){
	// SPOILER
	CPlugAnimGraphNode_Graph@ graph12 = cast<CPlugAnimGraphNode_Graph@>(carAnim.NodeGraphs[0].Nodes[12]);
	if(graph12 is null) return;

	CPlugAnimGraphNode_JointTranslate@ jointTranslate2 = cast<CPlugAnimGraphNode_JointTranslate@>(graph12.Nodes[2]);
	if(jointTranslate2 is null) return;

	jointTranslate2.Translation_Expr = "SpoilerTip*"+S_SpoilerTipLeftDistance;
	jointTranslate2.Axis = S_SpoilerTipLeftTranslationAxis;

	CPlugAnimGraphNode_JointTranslate@ jointTranslate3 = cast<CPlugAnimGraphNode_JointTranslate@>(graph12.Nodes[3]);
	if(jointTranslate3 is null) return;

	jointTranslate3.Translation_Expr = "SpoilerTip*"+S_SpoilerTipRightDistance;
	jointTranslate3.Axis = S_SpoilerTipRightTranslationAxis;

	CPlugAnimGraphNode_JointTranslate@ jointTranslate4 = cast<CPlugAnimGraphNode_JointTranslate@>(graph12.Nodes[4]);
	if(jointTranslate4 is null) return;

	jointTranslate4.Translation_Expr = "SpoilerTop*"+S_SpoilerTipBottomDistance;
	jointTranslate4.Axis = S_SpoilerTipBottomTranslationAxis;

	CPlugAnimGraphNode_JointTranslate@ jointTranslate5 = cast<CPlugAnimGraphNode_JointTranslate@>(graph12.Nodes[5]);
	if(jointTranslate5 is null) return;

	jointTranslate5.Translation_Expr = "SpoilerBotTip*"+S_SpoilerTipBottomLeftDistance;
	jointTranslate5.Axis = S_SpoilerTipBottomLeftTranslationAxis;

	CPlugAnimGraphNode_JointTranslate@ jointTranslate6 = cast<CPlugAnimGraphNode_JointTranslate@>(graph12.Nodes[6]);
	if(jointTranslate6 is null) return;

	jointTranslate6.Translation_Expr = "SpoilerBotTip*"+S_SpoilerTipBottomRightDistance;
	jointTranslate6.Axis = S_SpoilerTipBottomRightTranslationAxis;

	CPlugAnimGraphNode_JointRotate@ jointRotate7 = cast<CPlugAnimGraphNode_JointRotate@>(graph12.Nodes[7]);
	if(jointRotate7 is null) return;

	jointRotate7.Rotation_Expr = "SpoilerTop*"+S_SpoilerTopRotation;
	jointRotate7.Axis = S_SpoilerTopTranslationAxis;
}

void ChangeWheels(){
	// WHEELS
	CPlugAnimGraphNode_Graph@ graph13 = cast<CPlugAnimGraphNode_Graph@>(carAnim.NodeGraphs[0].Nodes[13]);
	if(graph13 is null) return;

	CPlugAnimGraphNode_JointRotate@ jointRotate2 = cast<CPlugAnimGraphNode_JointRotate@>(graph13.Nodes[2]);
	if(jointRotate2 is null) return;

	jointRotate2.Rotation_Expr = (S_FLWheelInvert ? "-" : "")+"FLWheelRot*"+S_FLWheelSpeed;
	jointRotate2.Axis = S_FLWheelTranslationAxis;

	CPlugAnimGraphNode_JointRotate@ jointRotate3 = cast<CPlugAnimGraphNode_JointRotate@>(graph13.Nodes[3]);
	if(jointRotate3 is null) return;

	jointRotate3.Rotation_Expr = (S_FRWheelInvert ? "-" : "")+"FRWheelRot*"+S_FRWheelSpeed;
	jointRotate3.Axis = S_FRWheelTranslationAxis;

	CPlugAnimGraphNode_JointRotate@ jointRotate4 = cast<CPlugAnimGraphNode_JointRotate@>(graph13.Nodes[4]);
	if(jointRotate4 is null) return;

	jointRotate4.Rotation_Expr = (S_RRWheelInvert ? "-" : "")+"RRWheelRot*"+S_RRWheelSpeed;
	jointRotate4.Axis = S_RRWheelTranslationAxis;

	CPlugAnimGraphNode_JointRotate@ jointRotate5 = cast<CPlugAnimGraphNode_JointRotate@>(graph13.Nodes[5]);
	if(jointRotate5 is null) return;

	jointRotate5.Rotation_Expr = (S_RLWheelInvert ? "-" : "")+"RLWheelRot*"+S_RLWheelSpeed;
	jointRotate5.Axis = S_RLWheelTranslationAxis;

	CPlugAnimGraphNode_JointRotate@ jointRotate6 = cast<CPlugAnimGraphNode_JointRotate@>(graph13.Nodes[6]);
	if(jointRotate6 is null) return;

	jointRotate6.Rotation_Expr = "select(FLSteerAngle < 0, (FLSteerAngle*"+S_FLWheelAngleMultiplier+")*0.75, FLSteerAngle*"+S_FLWheelAngleMultiplier+") + (FLBentValueNormed * FLBreakNormedCoef * MaxBentDegree)";
	jointRotate6.Axis = S_FLWheelSteeringTranslationAxis;

	CPlugAnimGraphNode_JointRotate@ jointRotate7 = cast<CPlugAnimGraphNode_JointRotate@>(graph13.Nodes[7]);
	if(jointRotate7 is null) return;

	jointRotate7.Rotation_Expr = "select(FRSteerAngle > 0, (FRSteerAngle*"+S_FRWheelAngleMultiplier+")*0.75, FRSteerAngle*"+S_FRWheelAngleMultiplier+") + (FRBentValueNormed * FRBreakNormedCoef * MaxBentDegree)";
	jointRotate7.Axis = S_FRWheelSteeringTranslationAxis;
}

void ChangeExtras(){

}
// (FLSteerAngle+DoorOpen)