using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class UI : MonoBehaviour {

	public Image UITarget;
	public Color activeColor;
	public static bool startInteractUI;
	float width;

	// Use this for initialization
	void Start () {
		width = UITarget.rectTransform.sizeDelta.x;
	}
	
	// Update is called once per frame
	void Update () {
		if(look.hittingSomething && findName.checkYourName(look.hitThis.name)){
			startInteractUI = true;
		}else{
			startInteractUI = false;
		}
		UIChange();
	}

	void UIChange(){
		if(startInteractUI){
			float newWidth = width * (1+ Mathf.Abs( Mathf.Sin(Time.time*2f)));
			newWidth = (newWidth - UITarget.rectTransform.sizeDelta.x) * 0.1f + UITarget.rectTransform.sizeDelta.x;
			UITarget.color = Color.Lerp(Color.white,activeColor,Time.time);
			UITarget.rectTransform.sizeDelta = new Vector2(newWidth,newWidth);
		}else if(UITarget.rectTransform.sizeDelta.x != width){
			float CoverWidth = (width - UITarget.rectTransform.sizeDelta.x) * 0.1f + UITarget.rectTransform.sizeDelta.x;
			UITarget.color = Color.Lerp(activeColor,Color.white,Time.time);
			UITarget.rectTransform.sizeDelta = new Vector2(CoverWidth,CoverWidth);
		}
		
	}
}
