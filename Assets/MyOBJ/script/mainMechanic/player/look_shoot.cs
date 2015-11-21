using UnityEngine;
using System.Collections;

public class look_shoot : MonoBehaviour {

	public float zeroGate = 0.001f;
	public GameObject flyingLightTuple;
	public Transform shootFromHere;
	GameObject playerStick;
	public GameObject createZone;
	public AudioClip playThis;
	public Vector3 adjust;
	
	float howCloseToTheTarget = 1.5f;
//	Light myLight = null;
	Light[] playerStickLight;
	float speed = 0.8f;
	int which = 0;
	GameObject NewLightObj;
	Vector3 to;
	
	// Use this for initialization
	void Start () {
		playerStick = GameObject.FindGameObjectWithTag("PlayerStick");

	}
	
	// Update is called once per frame
	void Update () {

		if(playerStickLight==null){
			playerStickLight = playerStatus.playerStickLight;
		}

		if (which==1){//shoot
			
			iamFlying();
			if(GetComponent<AudioSource>()==null && playThis!=null){
				gameObject.AddComponent<AudioSource>().clip = playThis;
				gameObject.GetComponent<AudioSource>().enabled = false;
			}
			
		}else{
			NewLightObj = null;
			to = Vector3.zero;
		}
	}

	
	void Shoot(){
		print("shoot!!");
		if(which==0 && ifAnyIntensityIsThisValue(false)){
			createLight(shootFromHere.position);
			//fly to here
			to = look.hitPoint;
			which = 1;
		}
	}


	
	void iamFlying(){

		
		if(Vector3.Distance(NewLightObj.transform.position,to)>howCloseToTheTarget){
			NewLightObj.transform.position += (to-NewLightObj.transform.position)*(1+speed)*Time.deltaTime;
			
		}else{
			GameObject newZone = Instantiate(createZone,to,createZone.transform.rotation) as GameObject;
			Destroy(NewLightObj);
			which = 0;

		}
	}
	
	void createLight(Vector3 birthPlace){

		NewLightObj = Instantiate(flyingLightTuple,birthPlace,Quaternion.identity) as GameObject;
		
	}
	
	bool ifAnyIntensityIsThisValue(bool which){

			for(int i=playerStickLight.Length-1;i >=0;i--){
				if(playerStickLight[i].intensity >0){
				playerStickLight[i].intensity = 0;
					return true;
				}
			}

		return false;
	}
}
