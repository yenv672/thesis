using UnityEngine;
using System.Collections;

public class look : MonoBehaviour {

	public static bool hittingSomething = false;
	public static Transform hitThis;
	public static Vector3 hitPoint;
	public float maxDistanceToSee = 1000f;
	public LayerMask raycastMask;

	void Start(){
		UnityEngine.Cursor.visible = false;
	}

	void Update(){
		//basic setting of ray
		Ray ray = new Ray( transform.position, transform.forward );
		RaycastHit rayHit = new RaycastHit();
		Debug.DrawRay(transform.position,transform.forward*maxDistanceToSee,Color.green);
		hittingSomething = Physics.Raycast(ray, out rayHit, maxDistanceToSee, raycastMask);
		if(hittingSomething){
			hitThis = rayHit.transform;
			hitPoint = rayHit.point;
			Debug.DrawRay(rayHit.point,rayHit.normal,Color.red);
		}

	}

}
