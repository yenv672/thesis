using UnityEngine;
using System.Collections;

public class look_action : MonoBehaviour {

	public static look_action lookACT;
	public static bool giving = false;
	public static bool taking = false;
	public string sendMessage_take = "Take";
	public string sendMessage_give = "Give";
	public AudioSource playThis_pressing_take;
	public AudioSource playThis_pressing_give;
	public AudioSource playThis_pressing_shoot;
	public AudioSource playThis_active;
	public int holdingCount_sum = 20;
//	int myLightamount = 5;//changeThis
	string objName;
//	int holdingCount;
	float startTime = -1;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		if(UI.startInteractUI){// able to interact when UI is active

			if(Input.GetMouseButton(0) && playerStatus.playerLight>1){//shoot
				print ("trigger shoot" +(Time.time - startTime));
				if(playThis_pressing_shoot!=null) playThis_pressing_shoot.Play();

				this.SendMessage("Shoot",SendMessageOptions.DontRequireReceiver);

//				if(startTime==-1){
//					startTime = Time.time;
//				}else if(Time.time - startTime>holdingCount_sum){
//					startTime = -1;
//					this.SendMessage("Shoot",SendMessageOptions.DontRequireReceiver);
//				}
			}

		}else if(playerStatus.inAshZone){
			//able to interact with ash
			if(Input.GetMouseButton(1)){
				taking = true;
				print ("trigger take ash");
				if(playThis_pressing_take!=null) playThis_pressing_take.Play();

				if(startTime==-1){
					startTime = Time.time;
				}else if(Time.time - startTime>holdingCount_sum){
					taking = false;
					interactLife(sendMessage_take,playerStatus.inThisAshZone.transform);
				}
				
			} else if(Input.GetMouseButton(0) && playerStatus.playerLight>1 ){
				giving = true;
				print ("trigger give ash");
				if(playThis_pressing_give!=null) playThis_pressing_give.Play();
				
				if(startTime==-1){
					startTime = Time.time;
				}else if(Time.time - startTime>holdingCount_sum){
					taking = false;
					interactLife(sendMessage_give,playerStatus.inThisAshZone.transform);
				}
				
			}
		}else{
			startTime = -1;
			taking = false;
			giving = false;
		}
	}

	void interactLife(string msg, Transform sendWhere){
		print (msg);
		if(playThis_active!=null) playThis_active.Play();

		sendWhere.SendMessage(msg,SendMessageOptions.DontRequireReceiver);
		startTime = -1;
	}
}
