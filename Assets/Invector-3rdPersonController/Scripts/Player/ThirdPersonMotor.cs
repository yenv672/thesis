using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections;

namespace Invector
{
    public abstract class ThirdPersonMotor : Character
    {
        #region Character Variables    
        [Header("--- Locomotion Setup ---")]
        [Tooltip("The character Head will follow where you look at, UNCHECK if you are using TopDown or 2.5D")]
        public bool headTracking = true;   

        [Tooltip("Press the button to crouch or just hit the button once - leave this bool UNCHECK if you are using MOBILE.")]
	    public bool pressToCrouch = true;

        [Tooltip("Check to control the character while jumping")]
        public bool jumpAirControl = true;

        [Tooltip("Add Extra jump speed, based on your speed input the character will move forward")]
        public float jumpForward = 3f;

        [Tooltip("Add Extra jump height, if you want to jump only with Root Motion leave the value with 0.")]
        public float jumpForce = 7f;

        [Tooltip("Speed of the rotation on free directional movement")]
	    public float rotationSpeed = 8f;
    	
	    [Tooltip("ADJUST IN PLAY MODE - GREEN Raycast until you see it above the head, this will make the character Auto-Crouch if something hit the raycast.")]   
        public float headDetect = 0.96f;

        [Tooltip("How much the character will curve the spine while Aiming")]
        public float spineCurvature = 0.7f;

        [Tooltip("Put your Random Idle animations at the AnimatorController and select a value to randomize, 0 is disable.")]
        public float randomIdleTime = 0f;

        [Header("--- Grounded Setup ---")]
	    [Tooltip("Distance to became not grounded")]
	    public float groundCheckDistance = 0.5f;
	    [HideInInspector] public float groundDistance;
	
	    [Tooltip("ADJUST IN PLAY MODE - Offset height limit for sters - GREY Raycast in front of the legs")]
	    public float stepOffsetEnd = 0.36f;
        [Tooltip("ADJUST IN PLAY MODE - Offset height origin for sters, make sure to keep slight above the floor - GREY Raycast in front of the legs")]
        public float stepOffsetStart = 0.05f;
        [Tooltip("ADJUST IN PLAY MODE - Offset forward to detect sters - GREY Raycast in front of the legs")]
        public float stepOffsetFwd = 0.05f;

        [Tooltip("Max angle to walk")]
        public float slopeLimit = 45f;
	
	    [Tooltip("Apply extra gravity when the character is not grounded")]
	    public float extraGravity = 4f;
	
	    [Tooltip("Select a VerticalVelocity to turn on Land High animation")]
	    public float landHighVel = -5f;
	
	    [Tooltip("Select a VerticalVelocity to turn on the Ragdoll")]
	    public float ragdollVel = -8f;
	
	    [Tooltip("Prevent the character of walking in place when hit a wall")]	
	    public float stopMoveDistance = 0.5f;

	    [Tooltip("Choose the layers the your character will stop moving when hit with the BLUE Raycast")]
        // if you change your Layers order, remember to update here!
        public LayerMask stopMoveLayer;
	    public LayerMask groundLayer;
	    public RaycastHit groundHit;
    
        [Header("--- Debug Info ---")]
	    public bool debugWindow;
	    [Range(0f, 1f)] public float timeScale = 1f;
	
	    // general bools of movement
	    [HideInInspector]
        public bool 
		    onGround, 		stopMove, 		autoCrouch, 
		    ragdolled, 		quickStop,		quickTurn180,
		    canSprint,		crouch, 		aiming, 
		    landHigh,       jump;

        // actions bools, used to turn on/off actions animations *check ThirdPersonAnimator*	
        [HideInInspector]
        public bool
            jumpOver,   
            stepUp,     
            climbUp,
            rolling, 
            enterLadderBottom, 
            enterLadderTop,
            usingLadder, 
            exitLadderBottom,
            exitLadderTop;

	    // one bool to rule then all
	    [HideInInspector] public bool actions;        
        // generic bool to change the cameraState
        [HideInInspector] public bool customCameraState;

        #endregion

        //**********************************************************************************//
        // UPDATE MOTOR 			 													    //
        // call this method on ThirdPersonController FixedUpdate                            //
        //**********************************************************************************//    
        public void UpdateMotor()
	    {    
//		    CheckGround();
//		    ControlHeight();
//		    RagdollControl();            
	    }
    
	    //**********************************************************************************//
	    // ACTIVATE RAGDOLL 			 													//
	    // check your verticalVelocity and assign a value on the variable RagdollVel		//
	    //**********************************************************************************//
//	    void RagdollControl()
//	    {
//		    if(verticalVelocity <= ragdollVel && groundDistance <= 0.1f)
//			    transform.root.SendMessage ("ActivateRagdoll", SendMessageOptions.DontRequireReceiver);		
//	    }

	    //**********************************************************************************//
	    // CAPSULE COLLIDER HEIGHT CONTROL 													//
	    // controls height, position and radius of CapsuleCollider							//
	    //**********************************************************************************//	
//	    void ControlHeight()
//	    {
//		    if (crouch && !jumpOver || rolling)
//		    {
//                capsuleCollider.center = colliderCenter / 1.4f;
//                capsuleCollider.height = colliderHeight / 1.4f;
//		    }
//		    else if (jumpOver)
//		    {
//                capsuleCollider.center = colliderCenter / 0.8f;
//                capsuleCollider.height = colliderHeight / 2f;
//            }
//            else if (usingLadder)
//            {
//                capsuleCollider.radius = colliderRadius / 1.25f;
//            }
//            else
//		    {
//			    // back to the original values
//			    capsuleCollider.center = colliderCenter;
//			    capsuleCollider.radius = colliderRadius;
//			    capsuleCollider.height = colliderHeight;
//		    }
//	    }

	    //**********************************************************************************//
	    // GROUND CHECKER																	//
	    // check if the character is grounded or not		 								//
	    //**********************************************************************************//	
//	    void CheckGround()
//	    {
//		    CheckGroundDistance();		
//		    // change the physics material to very slip when not grounded
//		    capsuleCollider.material = (onGround) ? frictionPhysics : defaultPhysics;				
//		    // we don't want to stick the character grounded if one of these bools is true
//		    bool groundStickConditions = !jumpOver && !stepUp && !climbUp && !usingLadder;
//
//		    if (groundStickConditions)
//		    {
//			    var onStep = StepOffset();
//			    if (groundDistance <= 0.05f)
//			    {
//				    onGround = true;
//				    // keeps the character grounded and prevents bounceness on ramps
//				    if (!onStep) _rigidbody.velocity = Vector3.ProjectOnPlane(_rigidbody.velocity, groundHit.normal);
//			    }
//			    else
//			    {
//				    if (groundDistance >= groundCheckDistance)
//				    {
//					    onGround = false;
//					    // check vertical velocity
//					    verticalVelocity = _rigidbody.velocity.y;
//                        // apply extra gravity when falling
//                        if (!onStep && !rolling)                        
//                            transform.position -= Vector3.up * (extraGravity * Time.deltaTime);
//				    }
//				    else if (!onStep && !rolling && !jump)
//                        transform.position -= Vector3.up * (extraGravity * Time.deltaTime);
//			    }
//		    }
//	    }

        //**********************************************************************************//
        // GROUND DISTANCE		      														//
        // get the distance between the middle of the character to the ground				//
        //**********************************************************************************//
//        void CheckGroundDistance()
//        {
//            if (capsuleCollider != null)
//            {
//                // radius of the SphereCast
//                float radius = capsuleCollider.radius * 0.9f;
//                var dist = Mathf.Infinity;
//                // position of the SphereCast origin starting at the base of the capsule
//                Vector3 pos = transform.position + Vector3.up * (capsuleCollider.radius);
//                // ray for RayCast
//                Ray ray1 = new Ray(transform.position + new Vector3(0, colliderHeight / 2, 0), Vector3.down);
//                // ray for SphereCast
//                Ray ray2 = new Ray(pos, -Vector3.up);
//                // raycast for check the ground distance
//                if (Physics.Raycast(ray1, out groundHit, Mathf.Infinity, groundLayer))
//                    dist = transform.position.y - groundHit.point.y;
//
//                // sphere cast around the base of the capsule to check the ground distance
//                if (Physics.SphereCast(ray2, radius, out groundHit, Mathf.Infinity, groundLayer))
//                {
//                    // check if sphereCast distance is small than the ray cast distance
//                    if (dist > (groundHit.distance - capsuleCollider.radius * 0.1f))
//                        dist = (groundHit.distance - capsuleCollider.radius * 0.1f);
//                }
//                groundDistance = dist;
//            }
//        }

        //**********************************************************************************//
        // STEP OFFSET LIMIT    															//
        // check the height of the object ahead, control by stepOffSet						//
        //**********************************************************************************//
//        bool StepOffset()
//	    {
//		    if(input.sqrMagnitude < 0.1 || !onGround) return false;
//		
//		    var hit = new RaycastHit();
//            Ray rayStep = new Ray((transform.position + new Vector3(0, stepOffsetEnd, 0) + transform.forward * ((capsuleCollider).radius + stepOffsetFwd)), Vector3.down);
//            
//            if (Physics.Raycast(rayStep, out hit, stepOffsetEnd - stepOffsetStart, groundLayer))
//			    if (!stopMove && hit.point.y >= (transform.position.y) && hit.point.y <= (transform.position.y + stepOffsetEnd))
//		    {
//			    var heightPoint = new Vector3(transform.position.x, hit.point.y + 0.1f, transform.position.z);
//			    transform.position = Vector3.Slerp(transform.position, heightPoint, (speed * 10) * Time.deltaTime);
//			    return true;
//		    }
//		    return false;
//	    }

        //**********************************************************************************//
        // CHECK GROUND ANGLE                                                               //        
        //**********************************************************************************//
        float GroundAngle()
        {
            var angle = Vector3.Angle(groundHit.normal, Vector3.up);
            return angle;
        }

	    //**********************************************************************************//
	    // STOP MOVE		    															//
	    // stop the character if hits a wall and apply slope limit to ramps					//
	    //**********************************************************************************//
//	    public void StopMove()
//	    {
//		    if(input.sqrMagnitude < 0.1 || !onGround) return;
//
//            RaycastHit hitinfo;
//            Ray ray = new Ray(transform.position + new Vector3(0, colliderHeight / 3, 0), transform.forward);
//
//            if (Physics.Raycast(ray, out hitinfo, stopMoveDistance, stopMoveLayer) && !usingLadder)
//            {
//                var hitAngle = Vector3.Angle(Vector3.up, hitinfo.normal);
//
//                if (hitinfo.distance <= stopMoveDistance && hitAngle > 85)
//                    stopMove = true;
//                else if (hitAngle >= slopeLimit + 1f && hitAngle <= 85)
//                    stopMove = true;
//            }
//            else
//                stopMove = false;
//        }

        //**********************************************************************************//
        // SLOPE LIMIT		    															//
        // stop the character from walking on ramps using a slope limit angle      			//
        //**********************************************************************************//
//        public void SlopeLimit()
//        {
//            if (input.sqrMagnitude < 0.1 || !onGround) return;
//
//            RaycastHit hitinfo;
//            Ray ray = new Ray(transform.position + new Vector3(0, colliderHeight / 3.5f, 0), transform.forward);
//
//            if (Physics.Raycast(ray, out hitinfo, 1f, stopMoveLayer) && !usingLadder)
//            {
//                var hitAngle = Vector3.Angle(Vector3.up, hitinfo.normal);              
//                if (hitAngle >= slopeLimit + 1f && hitAngle <= 85)
//                    stopMove = true;
//            }
//            else
//                stopMove = false;
//        }

        //**********************************************************************************//
        // AUTO CROUCH			      														//
        // keep it crouched while you have something above					                //
        //**********************************************************************************//
//        public void CheckAutoCrouch()
//        {
//            // radius of SphereCast
//            float radius = capsuleCollider.radius * 0.9f;
//            // Position of SphereCast origin stating in base of capsule
//            Vector3 pos = transform.position + Vector3.up * ((colliderHeight * 0.5f) - colliderRadius);
//            // ray for SphereCast
//            Ray ray2 = new Ray(pos, Vector3.up);
//
//            // sphere cast around the base of capsule for check ground distance
//            if (Physics.SphereCast(ray2, radius, out groundHit, headDetect - (colliderRadius * 0.1f), groundLayer))
//            {
//                autoCrouch = true;
//                crouch = true;
//            }
//            else
//                autoCrouch = false;
//        }

        //**********************************************************************************//
        // ACTIONS 		      																//
        // raycast to check if there is anything interactable ahead							//
        //**********************************************************************************//        
        public GameObject CheckActionObject()
        {
            bool checkConditions = onGround && !aiming && !landHigh && !actions;
            GameObject _object = null;
                        
            if (checkConditions)
            {
                RaycastHit hitInfoAction;
                Vector3 yOffSet = new Vector3(0f, -0.5f, 0f);
                Vector3 fwd = transform.TransformDirection(Vector3.forward);
                
                if(Physics.Raycast(transform.position - yOffSet, fwd, out hitInfoAction, 0.45f))
                {
                    _object = hitInfoAction.transform.gameObject;
                }
            }
            return _object;
        }

        //**********************************************************************************//
        // ROTATE WITH CAMERA	      														//
        // align the character spine rotation with the camera								//    
        // always run this method on LateUpdate for better and smooth rotation              //
        //**********************************************************************************//
        public virtual void RotateWithCamera()
	    {
		    if (aiming && !rolling)
		    {			
			    // smooth align character with aim position
			    Quaternion newPos = Quaternion.Euler(transform.eulerAngles.x, tpCamera.transform.eulerAngles.y, transform.eulerAngles.z);
			    transform.rotation = Quaternion.Slerp(transform.rotation, newPos, 20f * Time.smoothDeltaTime);
		    }
	    }


	    //**********************************************************************************//
	    // DEBUG MODE			      														//
	    // display information about the controller in real time 							//
	    //**********************************************************************************//	
//	    public void DebugMode()
//	    {
//		    Time.timeScale = timeScale;
//		
//		    if (hud == null)
//			    return;
//		
//		    if (hud.debugPanel != null)
//		    {
//			    if (debugWindow)
//			    {
//				    hud.debugPanel.SetActive(true);
//				    float delta = Time.smoothDeltaTime;
//				    float fps = 1 / delta;
//				
//				    hud.debugPanel.GetComponentInChildren<Text>().text =
//					    "FPS " + fps.ToString("#,##0 fps") + "\n" +
//					    "CameraState = " + tpCamera.currentStateName.ToString() + "\n" +
//					    "Input = " + Mathf.Clamp(input.sqrMagnitude, 0, 1f).ToString("0.0") + "\n" +
//					    "Speed = " + speed.ToString("0.0") + "\n" +
//					    "Direction = " + direction.ToString("0.0") + "\n" +
//					    "VerticalVelocity = " + verticalVelocity.ToString("0.00") + "\n" +
//					    "GroundDistance = " + groundDistance.ToString("0.00") + "\n" +
//                        "GroundAngle = " + GroundAngle().ToString("0.00") + "\n" +
//                        "\n" + "--- Movement Bools ---" + "\n" +
//					    "LockPlayer = " + lockPlayer.ToString() + "\n" +
//					    "StopMove = " + stopMove.ToString() + "\n" +
//                        "Ragdoll = " + ragdolled.ToString() + "\n" +
//                        "onGround = " + onGround.ToString() + "\n" +
//					    "canSprint = " + canSprint.ToString() + "\n" +
//					    "crouch = " + crouch.ToString() + "\n" +
//					    "aiming = " + aiming.ToString() + "\n" +
//					    "canTurn = " + quickTurn180.ToString() + "\n" +
//					    "quickStop = " + quickStop.ToString() + "\n" +
//					    "landHigh = " + landHigh.ToString() + "\n" +
//                        "jump = " + jump.ToString() + "\n" +
//                        "\n" + "--- Actions Bools ---" + "\n" +
//					    "rollFwd = " + rolling.ToString() + "\n" +					
//					    "stepUp = " + stepUp.ToString() + "\n" +
//					    "jumpOver = " + jumpOver.ToString() + "\n" +
//					    "climbUp = " + climbUp.ToString() + "\n" +                        
//                        "usingLadder = " + usingLadder.ToString() + "\n";
//			    }
//			    else
//				    hud.debugPanel.SetActive(false);
//		    }
//	    }
    }
}