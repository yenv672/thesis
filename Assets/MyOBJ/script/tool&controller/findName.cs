using UnityEngine;
using System.Collections;

public class findName : MonoBehaviour {

	public static string[] interactName = {"hitable"};
	public string[] showInteractName;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		interactName = showInteractName;
	}

	public static bool checkYourName(string yourName){
		
		foreach( string x in interactName){
//			print (yourName+" "+x);
			if(yourName.Contains(x)){
				return true;
			}
		}
		return false;
	}
}
