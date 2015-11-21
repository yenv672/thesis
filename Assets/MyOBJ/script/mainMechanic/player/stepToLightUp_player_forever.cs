using UnityEngine;
using System.Collections;

public class stepToLightUp_player_forever : MonoBehaviour {
	string interactTag = "stepLight";
	
	
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		RaycastHit hit;
		if(Physics.Raycast (transform.position, transform.TransformDirection(Vector3.down), out hit,1f) )
		{
			if(hit.transform.tag == interactTag){
				hit.transform.GetComponentInChildren<Light>().intensity = 1;
				hit.transform.GetComponent<AudioSource>().enabled = true;
			}
		}
	}
	
//	void OnTriggerEnter(Collider who){
//		//print(who);
//		if(who.transform.tag == interactTag){
//			who.GetComponentInChildren<Light>().intensity = 1;
//		}
//	}

}
