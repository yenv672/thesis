using UnityEngine;
using System.Collections;

public class stepOn : MonoBehaviour {

//	Transform myparent;
	public string[] onlyParentWithThis;
	public static Vector3 relativeAngle;
	public static bool setNewAngle = false;
	Transform myParent;
	bool isGrounded = false;
	Transform player;
	Transform original;
	void Start(){
		player = GameObject.FindGameObjectWithTag("Player").transform;

	}

	void Update(){
		RaycastHit hit;
		//print (player.transform.parent);
		if(Physics.Raycast (player.position, player.TransformDirection(Vector3.down), out hit,1f) )
		{
//			print("C my loc: "+player.localRotation.eulerAngles+" my globle "+
//			      player.rotation.eulerAngles+" my parent "+hit.transform.parent.localRotation.eulerAngles);
			if(player.transform.parent.parent != hit.transform.parent && checkYourName(hit.transform.name)){
				setNewAngle = true;
				//print(" hit "+hit.transform.parent.localRotation.eulerAngles);
				if(hit.transform.parent!=null){
					player.parent.SetParent(hit.transform.parent);
					myParent = player.parent.parent;
					relativeAngle =  -myParent.eulerAngles;
				}
//				print("B relative: "+relativeAngle);
			}
		}else{
			isGrounded = false;
			if(myParent!=null){
				setNewAngle = true;
				relativeAngle = myParent.eulerAngles;
			}
			//print("C my loc: "+newAngle);
			player.parent.SetParent(null);
			myParent = player.parent;
		}
	}

	bool checkYourName(string yourName){
		foreach( string x in onlyParentWithThis){
			if(x==yourName){
				return true;
			}
		}
		return false;
	}

}
