using UnityEngine;
using System.Collections;

public class triggerZone : MonoBehaviour {

	//attach this code to the light zone
	public static bool sent_player = true;
	GameObject player;
	// Use this for initialization
	void Start () {

		player = GameObject.FindGameObjectWithTag("Player");
	}



	void OnTriggerExit(Collider who){
//	print (transform.name+" said "+who.name+" is out");
		if(who.tag == "change_LightWorld"){
			(who.GetComponent("objStatus") as MonoBehaviour).enabled = false;
		}
		if(who.tag == "Player"){
			playerStatus.inDark_Player = true;
			sent_player = false;
		}
	}

	void OnTriggerEnter(Collider who){
		print("enter"+who.name);
		if(who.tag == "change_LightWorld"){
			(who.GetComponent("objStatus") as MonoBehaviour).enabled = true;
		}
		if(who.tag == "Player"){
			playerStatus.inDark_Player = false;
			sent_player = false;
		}
	}

	void OnTriggerStay(Collider who){
		print("stay"+who.name);
		if(who.tag == "change_LightWorld"){
			print("trigger"+who.name);
			(who.GetComponent("objStatus") as MonoBehaviour).enabled = true;
		}
		if(who.tag == "Player"){
			playerStatus.inDark_Player = false;
		}
	}
}
