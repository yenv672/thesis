using UnityEngine;
using System.Collections;

public class addOnGenerator : MonoBehaviour {

	public GameObject addOn;
	public Vector3 placeHere;
	public string tagToAddhere;

	GameObject[] ChangeOBJs;

	// Use this for initialization
	void Start () {
		ChangeOBJs = GameObject.FindGameObjectsWithTag(tagToAddhere);
		print (ChangeOBJs.Length);
		for(int i =0;i<ChangeOBJs.Length;i++){
			GameObject myChild = Instantiate(addOn,ChangeOBJs[i].transform.position,addOn.transform.rotation) as GameObject;
			myChild.name = tagToAddhere+i;
			myChild.transform.SetParent(ChangeOBJs[i].transform);
			myChild.transform.localPosition += placeHere;
		}
	}

}
