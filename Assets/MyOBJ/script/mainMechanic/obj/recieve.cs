using UnityEngine;
using System.Collections;

public class recieve : MonoBehaviour {

	public float zeroGate = 0.001f;
	public GameObject flyingLightTuple;
	public GameObject playerStick;
	public float Brightness = 1.0f;
	public AudioClip playThis;
	public Light baseOnThisLight;
	public int regenrateLightNum = 3;

	int createLightNum = 0;
	float howCloseToTheTarget = 1.5f;
	Light myLight = null;
	Light[] playerStickLight;
	Light ThisTurnLight;
	float speed = 0.8f;
	int which = 0;
	GameObject NewLightObj;
	Vector3 to;

	// Use this for initialization
	void Start () {
		myLight = GetComponentInChildren<Light>();
//		print (myLight);
		playerStickLight = playerStatus.playerStickLight;
		if(baseOnThisLight!=null){
			myLight = baseOnThisLight;
		}
	}
	
	// Update is called once per frame
	void Update () {
		playerStickLight = playerStatus.playerStickLight;
		if(myLight==null){
			myLight = GetComponentInChildren<Light>();
		}
//		print("which "+which);
		if(which==1){//take
			print ("take take tak");
			to = playerStick.transform.position;
			iamFlying(ThisTurnLight,myLight);
			
		}else if (which==2){//give
			
			iamFlying(myLight,ThisTurnLight);
			if(GetComponent<AudioSource>()==null && playThis!=null){
				gameObject.AddComponent<AudioSource>().clip = playThis;
				gameObject.GetComponent<AudioSource>().enabled = false;
			}
			
		}else{
			NewLightObj = null;
			ThisTurnLight = null;
			to = Vector3.zero;
		}
	}

	void Take(){
		print ("Take me");
		if(which==0 && ifAnyIntensityIsThisValue(true) && myLight.intensity>0){
			createLight(look.hitPoint);
			//fly to player
			to = playerStick.transform.position;
			which = 1;
		}
	}

	void Give(){
		print ("Give me");
		if(which==0 && ifAnyIntensityIsThisValue(false) && myLight.intensity<1){
			createLight(playerStick.transform.position);
			//fly to obj
			to = playerStatus.inThisAshZone.transform.position;
			which = 2;
		}
	}

	void iamFlying(Light turnItOn,Light turnItOff){
		bool endFlying = false;
		turnItOff.intensity = 0;
		
		if(Vector3.Distance(NewLightObj.transform.position,to)>howCloseToTheTarget){
			NewLightObj.transform.position += (to-NewLightObj.transform.position)*(1+speed)*Time.deltaTime;
		}else{

//			print ("turn on the obj light");
			//turn on the light
			if(turnItOn.intensity<Brightness){
//				print (turnItOn.intensity + " createLightNum "+ createLightNum);
				NewLightObj.GetComponent<Renderer>().enabled = false;
				turnItOn.intensity += speed;
				NewLightObj.GetComponent<Light>().intensity -= speed;
				if(turnItOn.intensity>1 && which == 1){
					createLightNum++;
					endFlying = !(ifAnyIntensityIsThisValue(true));
				}
			}else{
				createLightNum = 0;
				which = 0;
				Destroy(NewLightObj);
			}

			if(createLightNum==regenrateLightNum || endFlying){
				//delete this light
				createLightNum = 0;
				which = 0;
				Destroy(NewLightObj);
			}
		}
	}
	
	void createLight(Vector3 birthPlace){
		
		//instanciate the light
		NewLightObj = Instantiate(flyingLightTuple,birthPlace,Quaternion.identity) as GameObject;
		//animate the light fly
		//(NewLightObj.GetComponent("floating") as MonoBehaviour).enabled = true;
		
	}

	bool ifAnyIntensityIsThisValue(bool which){
		
		if(which){//take
			for(int i=0;i <playerStickLight.Length;i++){
				if(playerStickLight[i].intensity ==0){
					//print(i+": "+playerStickLight[i].intensity);
					ThisTurnLight = playerStickLight[i];
					ThisTurnLight.intensity = zeroGate;
					//print(ThisTurnLight);
					return true;
				}
			}
		}else{//give
			for(int i=playerStickLight.Length-1;i >=0;i--){
				if(playerStickLight[i].intensity >0){
					ThisTurnLight = playerStickLight[i];
					//print (ThisTurnLight.name);
					return true;
				}
			}
		}
		return false;
	}
}
