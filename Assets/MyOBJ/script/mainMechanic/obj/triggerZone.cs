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

		if(who.tag == "change_LightWorld" || who.tag == "change_DarkWorld"){
			who.GetComponent<objStatus>().inDark = true;
		}

		if(who.tag == "Player"){
			playerStatus.inDark_Player = true;
			sent_player = false;
		}
	}

	void OnTriggerEnter(Collider who){

		if(who.tag == "change_LightWorld" || who.tag == "change_DarkWorld"){
			who.GetComponent<objStatus>().inDark = false;
		}

		if(who.tag == "Player"){
			playerStatus.inDark_Player = false;
			sent_player = false;
		}
	}

	void OnTriggerStay(Collider who){

		if(who.tag == "change_LightWorld" || who.tag == "change_DarkWorld"){
			who.GetComponent<objStatus>().inDark = false;
		}

		if(who.tag == "Player"){
			playerStatus.inDark_Player = false;
		}
	}
}
