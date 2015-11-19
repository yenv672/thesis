using UnityEngine;
using System.Collections;

public class ash_triggerZone : MonoBehaviour {

	public GameObject ash;

	void OnTriggerExit(Collider who){
		//		print (transform.name+" said "+who.name+" is out");
		if(who.tag == "Player"){
			playerStatus.inAshZone = false;
			playerStatus.inThisAshZone = null;
		}
	}
	
	void OnTriggerEnter(Collider who){
		if(who.tag == "Player"){
			playerStatus.inAshZone = true;
			playerStatus.inThisAshZone = ash;
		}
	}
}
