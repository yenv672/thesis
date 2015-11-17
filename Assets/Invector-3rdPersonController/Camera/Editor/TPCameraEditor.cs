using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;

[CustomEditor (typeof(TPCamera))]
[CanEditMultipleObjects]
public class TPCameraEditor : Editor 
{
	TPCamera tpCamera;	

	public override void OnInspectorGUI()
	{
		tpCamera = (TPCamera)target;

		EditorGUILayout.Space ();

		if (tpCamera.CameraStateList == null) 
		{
			GUILayout.EndVertical ();
			return;	
		}

		GUILayout.BeginVertical ("Camera State", "window");
        
		EditorGUILayout.HelpBox("This settings will always load in this List, you can create more List's with different settings for another characters.", MessageType.Info);

		tpCamera.CameraStateList = (TPCameraListData)EditorGUILayout.ObjectField ("CameraState List", tpCamera.CameraStateList, typeof(TPCameraListData), false);
		GUILayout.BeginHorizontal ();
		if (GUILayout.Button(new GUIContent("New CameraState")))
		{
			if(tpCamera.CameraStateList.tpCameraStates == null)
				tpCamera.CameraStateList.tpCameraStates = new List<TPCameraState>();

			tpCamera.CameraStateList.tpCameraStates.Add(new TPCameraState("New State" + tpCamera.CameraStateList.tpCameraStates.Count));
			tpCamera.index = tpCamera.CameraStateList.tpCameraStates.Count -1;
		}

		if (GUILayout.Button (new GUIContent ("Delete State")) && tpCamera.CameraStateList.tpCameraStates.Count > 1 && tpCamera.index != 0) 
		{
			tpCamera.CameraStateList.tpCameraStates.RemoveAt(tpCamera.index);
			if (tpCamera.index - 1 >= 0)
				tpCamera.index--;
		}

		GUILayout.EndHorizontal ();

		if (tpCamera.CameraStateList.tpCameraStates.Count > 0) 
		{
			tpCamera.index = EditorGUILayout.Popup("State", tpCamera.index, getListName(tpCamera.CameraStateList.tpCameraStates));

			StateData(tpCamera.CameraStateList.tpCameraStates[tpCamera.index]);
		}
        
		GUILayout.EndVertical ();

        GUILayout.BeginVertical("box");
        base.OnInspectorGUI();
        GUILayout.EndVertical();

		EditorGUILayout.Space ();

		if (GUI.changed) 
		{
			EditorUtility.SetDirty (tpCamera);
			EditorUtility.SetDirty (tpCamera.CameraStateList);
		}
	}

	void StateData(TPCameraState camState)
	{
        EditorGUILayout.Space();
        camState.cameraMode = (TPCameraMode)EditorGUILayout.EnumPopup("Camera Mode", camState.cameraMode);
		camState.Name = EditorGUILayout.TextField ("State Name", camState.Name);
		if (CheckName (camState.Name, tpCamera.index)) 
		{
			EditorGUILayout.HelpBox("This name already exist, choose another one", MessageType.Error);
		}

        switch (camState.cameraMode)
        {
            case TPCameraMode.FreeDirectional:
                FreeDirectionalMode(camState);
                break;
            case TPCameraMode.FixedAngle:
                FixedAngleMode(camState);
                break;          
        }        
	}
    void FreeDirectionalMode(TPCameraState camState)
    {
        camState.forward = (float)((int)EditorGUILayout.Slider("Forward", camState.forward, -1f, 1f));
        camState.right = EditorGUILayout.Slider("Right", camState.right, -3f, 3f);
        camState.defaultDistance = EditorGUILayout.FloatField("Default Distance", camState.defaultDistance);
        camState.useZoom = EditorGUILayout.Toggle("Use Zoom", camState.useZoom);
        if (camState.useZoom)
        {
            camState.maxDistance = EditorGUILayout.FloatField("Max Distance", camState.maxDistance);
            camState.minDistance = EditorGUILayout.FloatField("Min Distance", camState.minDistance);
        }
        camState.height = EditorGUILayout.FloatField("Height", camState.height);
        camState.smoothFollow = EditorGUILayout.FloatField("Smooth Follow", camState.smoothFollow);
        camState.cullingHeight = EditorGUILayout.FloatField("Culling Height", camState.cullingHeight);
        camState.cullingMinDist = EditorGUILayout.FloatField("Culling Min Dist", camState.cullingMinDist);
        MinMaxSlider("Limit Angle X", ref camState.xMinLimit, ref camState.xMaxLimit, -360, 360);
        MinMaxSlider("Limit Angle Y", ref camState.yMinLimit, ref camState.yMaxLimit, -180, 180);       
    }
    void FixedAngleMode(TPCameraState camState)
    {
        camState.defaultDistance = EditorGUILayout.FloatField("Default Distance", camState.defaultDistance);
        camState.useZoom = EditorGUILayout.Toggle("Use Zoom", camState.useZoom);
        if (camState.useZoom)
        {
            camState.maxDistance = EditorGUILayout.FloatField("Max Distance", camState.maxDistance);
            camState.minDistance = EditorGUILayout.FloatField("Min Distance", camState.minDistance);
        }
        camState.height = EditorGUILayout.FloatField("Height", camState.height);
        camState.smoothFollow = EditorGUILayout.FloatField("Smooth Follow", camState.smoothFollow);
        camState.cullingHeight = EditorGUILayout.FloatField("Culling Height", camState.cullingHeight);
        camState.cullingMinDist = EditorGUILayout.FloatField("Culling Min Dist", camState.cullingMinDist);
        camState.right = EditorGUILayout.Slider("Right", camState.right, -3f, 3f);
        camState.fixedAngle.x = EditorGUILayout.Slider("Angle X", camState.fixedAngle.x, -360, 360);
        camState.fixedAngle.y = EditorGUILayout.Slider("Angle Y", camState.fixedAngle.y, -360, 360);
    }
    void MinMaxSlider(string name,ref float minVal,ref float maxVal, float minLimit, float maxLimit)
    {
        GUILayout.BeginVertical();
        GUILayout.Label(name);
        GUILayout.BeginHorizontal("box");
         minVal= EditorGUILayout.FloatField( minVal,GUILayout.MaxWidth(60));
        EditorGUILayout.MinMaxSlider(ref minVal,ref maxVal, minLimit, maxLimit);
        maxVal = EditorGUILayout.FloatField(maxVal, GUILayout.MaxWidth(60));
        GUILayout.EndHorizontal();
        GUILayout.EndVertical();
    }

	bool CheckName(string Name, int _index)
	{
		foreach (TPCameraState state in tpCamera.CameraStateList.tpCameraStates) 		
			if (state.Name.Equals (Name) && tpCamera.CameraStateList.tpCameraStates.IndexOf(state) != _index)
				return true;
		
		return false;
	}

	[MenuItem("3rd Person Controller/Resources/New CameraState List Data")]
	static void NewCameraStateData()
	{
		ScriptableObjectUtility.CreateAsset<TPCameraListData>();
	}

	private string[] getListName(List<TPCameraState> list)
	{
		string[] names = new string[list.Count];
		for (int i = 0; i < list.Count; i++)
		{
			names[i] = list[i].Name;
		}
		return names;
	}
}
