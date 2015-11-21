using UnityEngine;
using System.Collections;

public class floating : MonoBehaviour {

	public float SinWave_Freq = 5f;
	public float SinWave_range = 0.01f;

	bool toObect = true;
	Vector3 playerPosition;
	Vector3 origin;
	float randomFactor;
	// Use this for initialization
	void Start () {
		playerPosition = GameObject.FindGameObjectWithTag("Player").transform.position;
		origin = transform.position;
		randomFactor = Random.Range(0.5f,1.5f);
		//print (randomFactor);
	}
	
	// Update is called once per frame
	void Update () {
		if(!toObect){
			float newOriginY = (playerPosition.y - transform.position.y)*0.01f+transform.position.y;
			origin = new Vector3(origin.x,newOriginY,origin.z);
		}
		transform.position = new Vector3(transform.position.x,
		                                 origin.y * (1+ Mathf.Sin(Time.time*SinWave_Freq) * SinWave_range * randomFactor),
		                                 transform.position.z);
	}

	void giveLight(){
		bool toObect = true;
	}
}
