using UnityEngine;
using System.Collections;

public class inToDark : MonoBehaviour {

	public GameObject darkSphere;
	public float rangeMulti = 100f;
	public float speed = 0.01f;
	float darkest;
	Color now;

	// Use this for initialization
	void Start () {
		now = darkSphere.GetComponent<Renderer>().material.color;
		darkest = now.a;
		darkSphere.GetComponent<Renderer>().material.color = new Color(now.r,now.g,now.b,0);
		now = darkSphere.GetComponent<Renderer>().material.color;
	}
	
	// Update is called once per frame
	void Update () {
		now = darkSphere.GetComponent<Renderer>().material.color;
		if(playerStatus.inDark_Player){
			if(now.a < darkest){
				float nowScale = darkSphere.transform.localScale.x - speed*rangeMulti;
				darkSphere.transform.localScale = new Vector3(nowScale,nowScale,nowScale);
				darkSphere.GetComponent<Renderer>().material.color = new Color(now.r,now.g,now.b,now.a+speed);
			}
		}else{
			if(now.a > 0){
				float nowScale = darkSphere.transform.localScale.x + speed*rangeMulti;
				darkSphere.transform.localScale = new Vector3(nowScale,nowScale,nowScale);
				darkSphere.GetComponent<Renderer>().material.color = new Color(now.r,now.g,now.b,now.a-speed);
			}
		}
	}
}
