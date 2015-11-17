using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEngine;

public class findWithLayer : MonoBehaviour {

	public static GameObject[] findWhichLayer(int targetLayer){
		GameObject[] all  = GameObject.FindObjectsOfType<GameObject>();
		List<GameObject> list = new List<GameObject>();
		for(int i =0;i<all.Length;i++){
			if(all[i].layer==targetLayer){
				list.Add(all[i]);
				print ("+ "+ all[i]);
			}
		}
		if(list.Count==0)return null;
		return list.ToArray();
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
