using UnityEngine;
using System.Collections;

public class materialFading : MonoBehaviour {

	public float zeroGate = 0.002f;
	public bool LightWorldOnly = true;
	Material myMat;
	Light myLight;
	Color DarkColor = new Color(0,0,0);
	Color LightColor;
	Color MidColor;
	float colorSmooth = 0.05f;

	// Use this for initialization
	void Start () {
		myLight = GetComponentInChildren<Light>();
		myMat = GetComponent<Renderer>().material;
		LightColor = myMat.GetColor("_EmissionColor");
		myMat.SetColor("_EmissionColor",DarkColor);
		MidColor = new Color(LightColor.r/2,LightColor.g/2,LightColor.b/2);
	}
	
	// Update is called once per frame
	void Update () {
		if(myLight==null){
			myLight = GetComponentInChildren<Light>();
		}else{

			if(myLight.intensity<zeroGate || (playerStatus.inDark_Player && transform.tag !="playerBody")){ //take light
				ChangeMaterialEmissionColor(DarkColor);
//				print ( transform.name +" into dark");
			}else if(myLight.intensity>0.5f-zeroGate && myLight.intensity<0.5f+zeroGate){ // give light
//				print (myLight.intensity);
				ChangeMaterialEmissionColor(MidColor);
			}else{
//				print ("triggerLightColor"+transform.name);
				ChangeMaterialEmissionColor(LightColor);
//				print ( transform.name +" into light");
			}
		}
	}

	void ChangeMaterialEmissionColor(Color target){
		float newColorFloatR = (target.r -  myMat.GetColor("_EmissionColor").r)*colorSmooth + myMat.GetColor("_EmissionColor").r;
		float newColorFloatG = (target.g -  myMat.GetColor("_EmissionColor").g)*colorSmooth + myMat.GetColor("_EmissionColor").g;
		float newColorFloatB = (target.b -  myMat.GetColor("_EmissionColor").b)*colorSmooth + myMat.GetColor("_EmissionColor").b;
		Color newColor = new Color(newColorFloatR,newColorFloatG,newColorFloatB);
//		print ( transform.name +" my color "+ newColor);
		myMat.SetColor("_EmissionColor",newColor);
	}
}
