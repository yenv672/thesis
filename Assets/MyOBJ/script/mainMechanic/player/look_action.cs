using UnityEngine;
using System.Collections;

public class look_action : MonoBehaviour {

	public static look_action lookACT;
	public string sendMessage_take = "Take";
	public string sendMessage_give = "Give";
	public AudioSource playThis_pressing_take;
	public AudioSource playThis_pressing_give;
	public AudioSource playThis_pressing_shoot;
	public AudioSource playThis_active;
	public int holdingCount_sum = 20;
//	int myLightamount = 5;//changeThis
	string objName;
	int holdingCount;

	// Use this for initialization
	void Start () {
		holdingCount = holdingCount_sum;
	}
	
	// Update is called once per frame
	void Update () {
		if(UI.startInteractUI){// able to interact when UI is active

			if(Input.GetMouseButton(0) && playerStatus.playerLight>1){//shoot
//				print ("trigger shoot"+ holdingCount);
				if(playThis_pressing_shoot!=null) playThis_pressing_shoot.Play();
				
				holdingCount--;
				
				if(holdingCount==0){
					holdingCount = holdingCount_sum;
					this.SendMessage("Shoot",SendMessageOptions.DontRequireReceiver);
				}
			}

		}else if(playerStatus.inAshZone){ //able to interact with ash
			if(Input.GetMouseButton(1)){
				print ("trigger take ash"+ holdingCount);
				if(playThis_pressing_take!=null) playThis_pressing_take.Play();
				
				holdingCount--;
				
				if(holdingCount==0) interactLife(sendMessage_take,playerStatus.inThisAshZone.transform);
				
			} else if(Input.GetMouseButton(0) && playerStatus.playerLight>1 ){
				print ("trigger give ash"+ holdingCount);
				if(playThis_pressing_give!=null) playThis_pressing_give.Play();
				
				holdingCount--;
				
				if(holdingCount==0) interactLife(sendMessage_give,playerStatus.inThisAshZone.transform);
				
			}
		}else{
			holdingCount = holdingCount_sum;
		}
	}

	void interactLife(string msg, Transform sendWhere){
		print (msg);
		if(playThis_active!=null) playThis_active.Play();

		sendWhere.transform.SendMessage(msg,SendMessageOptions.DontRequireReceiver);
		holdingCount = holdingCount_sum;
	}
}
