using UnityEngine;
using System.Collections;

public class particalEffect : MonoBehaviour {

	public Light based;
	public float gate = 0.01f;
	public GameObject giveLightPar;
	public GameObject takeLightPar;

	float timer = 2;
	float startTime = -1f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(based.intensity<gate && !takeLightPar.activeSelf){//take
			takeLightPar.SetActive(true);
			startTime = Time.time;
		}
		if(based.intensity>1-gate && !giveLightPar.activeSelf){//give
			giveLightPar.SetActive(false);
			startTime = Time.time;
		}
		if(startTime!=-1 && Time.time - startTime>timer){
			takeLightPar.SetActive(false);
			giveLightPar.SetActive(false);
			startTime = -1;
		}
	}
}
