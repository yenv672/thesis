using UnityEngine;
using System.Collections;

public class follow : MonoBehaviour {

	public Transform target;
	Vector3 distance;

	// Use this for initialization
	void Start () {
		distance = transform.position - target.position;
	}
	
	// Update is called once per frame
	void Update () {
		transform.position = distance + target.position;
	}
}
