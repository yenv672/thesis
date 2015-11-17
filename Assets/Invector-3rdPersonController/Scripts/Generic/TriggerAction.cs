﻿using UnityEngine;
using System.Collections;

public class TriggerAction : MonoBehaviour 
{
    [Tooltip("Automatically execute the action without the any to press a Button")]
    public bool autoAction;
    [Tooltip("Message to display at the HUD Action Text")]
    public string message;   
    [Tooltip("Use a transform to help the character climb any height, take a look at the Example Scene ClimbUp, StepUp, JumpOver objects.")]
    public Transform target;
}