using UnityEngine;
using System.Collections;

public class rotatioin : MonoBehaviour {
	
	public Vector3 rotateDirection = Vector3.up;
	public float speed =20f;
	public float range = 20f;
	public bool keepRotate = true;
	Light myLight;
	Vector3 goal = Vector3.zero;
	Vector3 original = Vector3.zero;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {

		if(transform.parent!=null &&  GetComponentInChildren<Light>()!=null){

			if(myLight==null){
				myLight = GetComponentInChildren<Light>();
			}

			if(goal==Vector3.zero){
				original = transform.parent.rotation.eulerAngles;
				goal = transform.parent.rotation.eulerAngles + rotateDirection * range;
			}

			Transform myParent = transform.parent;

			if(myLight.intensity>0){//light is on
				if(keepRotate){
					transform.parent.RotateAround(myParent.position,rotateDirection, speed * Time.deltaTime);
				}else{
					rotateHere(goal,myParent);
				}
			}else{//light is off
				//rotateHere(original,myParent);
			}
		}
	}

	void rotateHere(Vector3 target, Transform me){
		if(Vector3.Distance(target, me.rotation.eulerAngles)>0.5f){
			Quaternion QTarget = Quaternion.Euler(target);
			me.rotation = Quaternion.Slerp(me.rotation,QTarget,Time.deltaTime * (speed/360));
		}
	}
}
