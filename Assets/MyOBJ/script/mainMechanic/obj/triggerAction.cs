using UnityEngine;
using System.Collections;

public class triggerAction : MonoBehaviour {

	//attach this code to the light zone
	public float speed = 0.1f;
	public int DarkLayer;
	public int LightLayer;
	public string ChangeOBJTag_DarkWorld = "change_DarkWorld";
	public string ChangeOBJTag_LightWorld = "change_LightWorld";
	GameObject[] ChangeOBJs_Dark;
	GameObject[] ChangeOBJs_Light;
	GameObject player;
	float myColor_A = 0f;
	// Use this for initialization
	void Start () {
		
		ChangeOBJs_Dark = GameObject.FindGameObjectsWithTag(ChangeOBJTag_DarkWorld);
		ChangeOBJs_Light = GameObject.FindGameObjectsWithTag(ChangeOBJTag_LightWorld);
		player = GameObject.FindGameObjectWithTag("Player");
	}
	
	void Update(){
		ChangeOBJs_Dark = GameObject.FindGameObjectsWithTag(ChangeOBJTag_DarkWorld);
		ChangeOBJs_Light = GameObject.FindGameObjectsWithTag(ChangeOBJTag_LightWorld);
//		print (transform.name +" said indark:"+ inDark);

		if(!playerStatus.inDark_Player){
			if(!triggerZone.sent_player){
				triggerZone.sent_player = true;
				player.SendMessage("IntoTheLight",SendMessageOptions.DontRequireReceiver);
			}
			changingOBJ(ChangeOBJs_Dark,false);
			changingOBJ(ChangeOBJs_Light,true);
		}else{
			changingOBJ(ChangeOBJs_Dark,true);
			changingOBJ(ChangeOBJs_Light,false);
			if( myColor_A <speed && !triggerZone.sent_player){
				triggerZone.sent_player = true;
				player.SendMessage("GetOutTheLight",SendMessageOptions.DontRequireReceiver);
			}
		}
		
		
	}
	
	
	public void changingOBJ(GameObject[] item, bool OBJ_Show){
		for(int i=0;i<item.Length;i++){
			bool action = true;
			bool OBj_Show_temp = OBJ_Show;

			if(item[i].tag == ChangeOBJTag_LightWorld ){
				if((item[i].GetComponent("objStatus") as MonoBehaviour).enabled){ //if light obj in light world-->show
					if(item[i].GetComponent<Renderer>().enabled)	action = false; //if already render,dont action
				}else{ // if light obj not in light world --> notshow
					OBj_Show_temp = false;
				}
				 
			}

			if(action){
				if(item[i].GetComponent<Renderer>()){
					if(!item[i].GetComponent<Renderer>().enabled) item[i].GetComponent<Renderer>().enabled = true;
					Color myColor = item[i].GetComponent<Renderer>().material.color;
					myColor_A = myColor.a;
					myColor_A = gradually(myColor_A,OBj_Show_temp);
					item[i].GetComponent<Renderer>().material.color = new Color(myColor.r,myColor.g,myColor.b,myColor_A);
					if(myColor_A<speed){
						item[i].GetComponent<Renderer>().enabled = false;
					}
				}
				if(item[i].GetComponent<Light>()){
					float myLightInten = item[i].GetComponent<Light>().intensity;
					myLightInten = gradually(myLightInten,OBj_Show_temp);
					item[i].GetComponent<Light>().intensity = myLightInten;
				}
				if(item[i].GetComponent<Collider>()){
					if(!OBj_Show_temp){
						item[i].GetComponent<Collider>().enabled = false;
					}else{
						item[i].GetComponent<Collider>().enabled = true;
					}
				}
			}

		}
	}
	
	float gradually(float oldNum, bool OBJ_Show){
		if(!OBJ_Show){
			if(oldNum>speed) oldNum = oldNum - speed;
		}else{
			if(oldNum<1-speed) oldNum = oldNum + speed;
		}
		return oldNum;
	}

}
