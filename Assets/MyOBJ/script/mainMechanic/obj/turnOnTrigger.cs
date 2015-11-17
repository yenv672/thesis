using UnityEngine;
using System.Collections;

public class turnOnTrigger : MonoBehaviour {

	Light myLight;
	public GameObject TriggerThis;
	public float zeroGate = 0.002f;
	GameObject player;
	// Use this for initialization
	void Start () {
		myLight = GetComponentInChildren<Light>();
		player = GameObject.FindGameObjectWithTag("Player");
	}
	
	// Update is called once per frame
	void Update () {
		if(myLight==null){
			myLight = GetComponentInChildren<Light>();
		}else{
//			print (myLight.intensity);
//			print (TriggerThis.name+" "+TriggerThis.activeSelf);
			if(myLight.intensity<zeroGate && TriggerThis.activeSelf){ //take light
				TriggerThis.SetActive(false);
				if(!playerStatus.inDark_Player){
					print ("HERE");
					playerStatus.inDark_Player = true;
					player.SendMessage("GetOutTheLight",SendMessageOptions.DontRequireReceiver);
				}
			}else if(myLight.intensity>1-zeroGate){
				print ("enable "+TriggerThis.name);
				TriggerThis.SetActive(true);
			}
		}
	}
}
