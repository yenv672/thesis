using UnityEngine;
using System.Collections;

public class crossover : MonoBehaviour {

	public float speed = 0.1f;
	public float heightToDel = 100f;
	float myspeed = 0;
	public Light myLight;
	Vector3 heightToDelPlace;

	// Use this for initialization
	void Start () {
		heightToDelPlace = transform.position+Vector3.up*heightToDel;
	}
	
	// Update is called once per frame
	void Update () {
		if(myLight==null){
			myLight = GetComponentInChildren<Light>();
		}else{
			if(myLight.intensity>0.99){
				playerStatus.inAshZone = false;
				playerStatus.inThisAshZone = null;
				this.gameObject.GetComponent<Collider>().enabled = false;
				myspeed += speed;
				transform.position += Vector3.up*myspeed;
			}
			if(transform.position.y>heightToDelPlace.y){
				Destroy(gameObject);
			}
		}
	}
}
