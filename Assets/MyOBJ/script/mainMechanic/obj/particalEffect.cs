using UnityEngine;
using System.Collections;

public class particalEffect : MonoBehaviour {

	public Light based;
	public float gate = 0.01f;
	public GameObject giveLightPar;
	public GameObject takeLightPar;

	float timer = 5;
	float startTime = -1f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(look_action.taking){//take
			print("active take par");
			if(startTime==-1) takeLightPar.SetActive(true);
			startTime = Time.time;
		}else if(look_action.giving){//give
			print("active give par");
			if(startTime==-1) {
				giveLightPar.transform.position = playerStatus.inThisAshZone.transform.position;
				giveLightPar.SetActive(true);
			}
			startTime = Time.time;
		}else{
			takeLightPar.SetActive(false);
			giveLightPar.SetActive(false);
			startTime = -1;
		}
		if(startTime!=-1 && Time.time - startTime>timer){
			print ("cancel par");
			takeLightPar.SetActive(false);
			giveLightPar.SetActive(false);
			startTime = -1;
		}
	}
}
