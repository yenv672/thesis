using UnityEngine;
using System.Collections;

public class losingLifeInDark : MonoBehaviour {

	public float zeroGate = 0.01f;
	public float speed;
	Light[] playerStickLight;
	Light ThisTurnLight;

	// Use this for initialization
	void Start () {
		playerStickLight = playerStatus.playerStickLight;
	}
	
	// Update is called once per frame
	void Update () {
//		print (triggerZone.inDark+" "+playerStatus.areYouDead);
		playerStickLight = playerStatus.playerStickLight;
		if(playerStatus.inDark_Player && !playerStatus.areYouDead){
			losingWhichLight();

			ThisTurnLight.intensity -= speed;
//			print (ThisTurnLight.intensity);
		}else if(playerStatus.inHealing){

			healing();
//			print (ThisTurnLight+" "+ThisTurnLight.intensity);
			ThisTurnLight.intensity += speed;
		}
	}

	void healing(){
		for(int i=playerStickLight.Length-1;i >=0;i--){
			if(playerStickLight[i].intensity <1){
				ThisTurnLight = playerStickLight[i];
			}
		}
	}

	void losingWhichLight(){
		
		for(int i=playerStickLight.Length-1;i >=0;i--){
			if(playerStickLight[i].intensity >0){
				ThisTurnLight = playerStickLight[i];
			}
		}
	}
}
