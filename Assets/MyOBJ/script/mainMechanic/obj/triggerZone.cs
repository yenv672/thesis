using UnityEngine;
using System.Collections;

public class triggerZone : MonoBehaviour {

	//attach this code to the light zone
	public static bool sent = true;
	GameObject player;
	// Use this for initialization
	void Start () {

		player = GameObject.FindGameObjectWithTag("Player");
	}



	void OnTriggerExit(Collider who){
//	print (transform.name+" said "+who.name+" is out");
		if(who.tag == "Player"){
			playerStatus.inDark_Player = true;
			sent = false;
		}
	}

	void OnTriggerEnter(Collider who){
		if(who.tag == "change_LightWorld"){

		}
		if(who.tag == "Player"){
			playerStatus.inDark_Player = false;
			sent = false;
		}
	}

	void OnTriggerStay(Collider who){
		if(who.tag == "Player"){
			playerStatus.inDark_Player = false;
		}
	}
}
