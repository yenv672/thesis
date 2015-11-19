using UnityEngine;
using System.Collections;

public class playerStatus : MonoBehaviour {

	public static playerStatus player_status;
	public static bool inDark_Player;
	public static bool inAshZone;
	public static GameObject inThisAshZone;
	public static bool inHealing;
	public GameObject playerStick;
	public static Light[] playerStickLight;
	public static int playerLight = 0;
	public static bool areYouDead = false;
	public float timeCount = 5;
	float startCount = 0;
	// Use this for initialization
	void Start () {
		playerStickLight = playerStick.GetComponentsInChildren<Light>();
	}
	
	// Update is called once per frame
	void Update () {
		playerLight = 0;
		for(int i=0;i<playerStickLight.Length;i++){
			if(playerStickLight[i].intensity>0){
				playerLight++;
			}
		}

//		print ("inAshZone "+ inAshZone);

		if(playerLight==0 && startCount == 0){
			areYouDead = true;
			startCount = Time.time;
			print ("dead");
		}

		if(Time.time - startCount>timeCount && startCount != 0){
			
			areYouDead = false;
			Application.LoadLevel(0);
		}
	}
}
