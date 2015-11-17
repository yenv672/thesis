using UnityEngine;
using System.Collections;

public class interactiveGenerater : MonoBehaviour {

	public GameObject EmptyTuple;
	public Material myMaterial;
	public Light tupleLight;
	public string myTag = "stepLight";
	public AudioClip[] playThis;
	public float intensity = 0;
	GameObject[] objectInteract;
	
	// Use this for initialization
	void Start () {
		objectInteract = GameObject.FindGameObjectsWithTag(myTag);
		for(int i=0;i<objectInteract.Length;i++){
			if(findName.checkYourName(objectInteract[i].name)){
				GameObject MyParent = Instantiate(EmptyTuple,objectInteract[i].transform.position,Quaternion.identity) as GameObject;
				MyParent.name = myTag+i;
				objectInteract[i].transform.SetParent(MyParent.transform);
				if(objectInteract[i].GetComponentInChildren<Light>()==null){ //if not specfic 
						Light newLight = Instantiate(tupleLight,objectInteract[i].transform.position,Quaternion.identity) as Light;
						newLight.intensity =intensity;
						newLight.transform.SetParent(objectInteract[i].transform);
						objectInteract[i].GetComponent<Renderer>().material = myMaterial;
					if(objectInteract[i].GetComponent<materialFading>()==null){
							objectInteract[i].AddComponent<materialFading>();
						}
					}
					if(playThis.Length!=0){
						objectInteract[i].AddComponent<AudioSource>().clip = playThis[Random.Range(0,playThis.Length)];
						objectInteract[i].GetComponent<AudioSource>().enabled = false;
					}
					
			}
		}
	}

}
