using UnityEngine;
using System.Collections;
using UnityStandardAssets.ImageEffects;

public class playerChangeLayer : MonoBehaviour {

	public GameObject LightCamera;
	public GameObject DarkCamera;
	public float minSat = 0.5f;
	bool triggerDark = false;
	bool triggerLight = false;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	
		if(triggerDark){
			DarkCamera.GetComponent<ColorCorrectionCurves>().saturation -= 0.01f;
			if(DarkCamera.GetComponent<ColorCorrectionCurves>().saturation < minSat){
				LightCamera.GetComponent<ColorCorrectionCurves>().saturation = DarkCamera.GetComponent<ColorCorrectionCurves>().saturation;
				triggerDark = false;
			}
		}

		if(triggerLight){
			LightCamera.GetComponent<ColorCorrectionCurves>().saturation += 0.01f;
			if(LightCamera.GetComponent<ColorCorrectionCurves>().saturation > 0.99f){
				DarkCamera.GetComponent<ColorCorrectionCurves>().saturation = LightCamera.GetComponent<ColorCorrectionCurves>().saturation;
				triggerLight = false;
			}
		}
	}

	void GetOutTheLight(){
		print ("into dark");
		triggerDark = true;
		triggerLight = false;
		LightCamera.GetComponent<Camera>().enabled = false;
		DarkCamera.GetComponent<Camera>().enabled = true;
		LightCamera.GetComponent<AudioListener>().enabled = false;
		DarkCamera.GetComponent<AudioListener>().enabled = true;
	}
	void IntoTheLight(){
//		print ("into light");
		triggerLight = true;
		triggerDark = false;
		DarkCamera.GetComponent<Camera>().enabled = false;
		LightCamera.GetComponent<Camera>().enabled = true;
		DarkCamera.GetComponent<AudioListener>().enabled = false;
		LightCamera.GetComponent<AudioListener>().enabled = true;
	}
}
