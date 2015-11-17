using UnityEngine;
using System.Collections;
using System;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public class recordDeadPlace : MonoBehaviour {

	public bool cleanUp = false;
	public static recordDeadPlace re;
	public Vector3 deadPlace = Vector3.zero;
	public GameObject bodyTuple;

	// Use this for initialization
	void Start () {
		if(cleanUp){
			File.Delete(Application.persistentDataPath+"/Record.dat");
		}
		Load();
		Instantiate(bodyTuple,deadPlace,Quaternion.identity);
	}
	
	// Update is called once per frame
	void Update () {
		if(playerStatus.areYouDead){
			deadPlace = GameObject.FindGameObjectWithTag("Player").transform.position;
			Save ();
		}
	}

	public void Save(){
		BinaryFormatter bi = new BinaryFormatter();
		FileStream file = File.Create(Application.persistentDataPath+"/Record.dat");
		DeadPlaceLastTime data =new DeadPlaceLastTime();
		data.x = deadPlace.x;
		data.y = deadPlace.y;
		data.z = deadPlace.z;
		bi.Serialize(file,data);
		file.Close();
	}

	public void Load(){
		if(File.Exists(Application.persistentDataPath+"/Record.dat")){
			BinaryFormatter bi = new BinaryFormatter();
			FileStream file = File.Open(Application.persistentDataPath+"/Record.dat",FileMode.Open);
			DeadPlaceLastTime data = (DeadPlaceLastTime)bi.Deserialize(file);
			deadPlace = new Vector3(data.x,data.y,data.z);
//			print (deadPlace);
		}
	}
}
[Serializable]
public class DeadPlaceLastTime{
	public float x;
	public float y;
	public float z;
}
