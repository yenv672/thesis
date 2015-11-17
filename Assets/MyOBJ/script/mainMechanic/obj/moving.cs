using UnityEngine;
using System.Collections;

public class moving : MonoBehaviour {

	public float moveRange = 5f;
	public Vector3 moveDirection = Vector3.up;
	public float speed =0.01f;
	Light myLight;
	Vector3 original;
	Vector3 goal;
	bool goingToGoal = true;

	// Use this for initialization
	void Start () {
		myLight = GetComponentInChildren<Light>();
		original = transform.position;
		goal = original+moveDirection*moveRange;
	}
	
	// Update is called once per frame
	void Update () {

		if(myLight == null){
			myLight = GetComponentInChildren<Light>();
		}else{

			if(myLight.intensity>0){//light is on
				if(goingToGoal){
					if(Vector3.Distance(goal,transform.position)>0.5f){
						transform.parent.position = (goal-transform.parent.position)*speed + transform.parent.position;
						//transform.position = (goal-transform.position)*speed + transform.position;
					}else{
						goingToGoal = false;
					}
				}else{
					if(Vector3.Distance(original,transform.position)>0.5f){
						transform.parent.position = (original-transform.parent.position)*speed + transform.parent.position;
						//transform.position = (original-transform.position)*speed + transform.position;
					}else{
						goingToGoal = true;
					}
				}
			}else{//light is off

			}
		}
	}
}
