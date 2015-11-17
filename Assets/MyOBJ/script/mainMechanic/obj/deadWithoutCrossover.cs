using UnityEngine;
using System.Collections;

public class deadWithoutCrossover : MonoBehaviour {

	Light myLight;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(myLight==null){
			myLight = GetComponentInChildren<Light>();
		}else{
			if(myLight.intensity<0.01){
				this.gameObject.GetComponent<Collider>().enabled = false;
			}
		}
	}
}
