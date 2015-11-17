using UnityEngine;
using System.Collections;

public class goToNext : MonoBehaviour {
	
	public string nextStage;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider who){
		if(who.transform.tag == "Player"){
			Application.LoadLevel(nextStage);
		}
	}

}
