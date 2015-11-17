using UnityEngine;
using System.Collections;

public class mouseView : MonoBehaviour {

	public Transform[] rotateThis_Hor;
	public Transform[] rotateThis_Ver;
	public float speed = 1f;


	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		float Hor = Input.GetAxis("Mouse X") * speed;
		float Ver = Input.GetAxis("Mouse Y") * speed;
//		print ("Hor: "+Hor);
		for(int i=0;i<rotateThis_Ver.Length;i++){
			rotateThis_Ver[i].localRotation *= Quaternion.Euler(-Ver,0,0);
		}
		for(int j=0;j<rotateThis_Hor.Length;j++){
			rotateThis_Hor[j].localRotation *= Quaternion.Euler(0,Hor,0);
		}
	}
}
