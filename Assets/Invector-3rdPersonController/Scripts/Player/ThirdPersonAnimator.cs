﻿using UnityEngine;
using System.Collections;

namespace Invector
{
    public abstract class ThirdPersonAnimator : ThirdPersonMotor
    {
        #region Variables
        // generate a random idle animation
        private float randomIdleCount, randomIdle;
	    // used to lerp the head track
	    private Vector3 lookPosition;
	    // apply new rotation based on the character and camera
	    private Quaternion _rotation;
        // match cursorObject to help animation to reach their cursorObject
        [HideInInspector] public Transform matchTarget;
	    // head track control, if you want to turn off at some point, make it 0
	    [HideInInspector] public float lookAtWeight;
	    // access the animator states (layers)
	    [HideInInspector] public AnimatorStateInfo stateInfo;   
        #endregion

        //**********************************************************************************//
        // ANIMATOR			      															//
        // update animations at the animator controller (Mecanim)							//
        //**********************************************************************************//
        public void UpdateAnimator()
        {
            if (ragdolled)        
                DisableActions();        
            else
            {
                stateInfo = animator.GetCurrentAnimatorStateInfo(0);
                actions = jumpOver || stepUp || climbUp || rolling || usingLadder;

                RandomIdle();
                RollForwardAnimation();
                QuickTurn180Animation();
                QuickStopAnimation();
                LandHighAnimation();
                JumpOverAnimation();
                ClimbUpAnimation();
                StepUpAnimation();
                JumpAnimation();
                LadderAnimation();

                ControlLocomotion();

                animator.SetBool("Aiming", aiming);
                animator.SetBool("Crouch", crouch);
                animator.SetBool("OnGround", onGround);
                animator.SetFloat("GroundDistance", groundDistance);
                animator.SetFloat("VerticalVelocity", verticalVelocity);
            }           
        }

        //**********************************************************************************//
        // DISABLE ACTIONS	      															//
        // turn false every action bool if ragdoll is enabled 								//
        //**********************************************************************************//    
        void DisableActions()
        {
		    quickTurn180 = false;
		    quickStop = false;
		    canSprint = false;
		    landHigh = false;
		    jumpOver = false;
		    rolling = false;
		    stepUp = false;
		    crouch = false;
		    aiming = false;
            jump = false;
        }

	    //**********************************************************************************//
	    // RANDOM IDLE		      															//
	    // assign the animations into the layer IdleVariations on the Animator				//
	    //**********************************************************************************//    
        void RandomIdle()
        {
            if(randomIdleTime > 0)
            {
                if (input.sqrMagnitude == 0 && !aiming && !crouch && capsuleCollider.enabled && onGround)
                {
                    randomIdleCount += Time.deltaTime;
                    if (randomIdleCount > 6)
                    {
                        randomIdleCount = 0;
                        animator.SetTrigger("IdleRandomTrigger");
                        animator.SetInteger("IdleRandom", Random.Range(1, 4));
                    }
                }
                else
                {
                    randomIdleCount = 0;
                    animator.SetInteger("IdleRandom", 0);
                }
            }        
        }

	    //**********************************************************************************//
	    // CONTROL LOCOMOTION      															//
//	    //**********************************************************************************//
        void ControlLocomotion()
        {
            bool freeLocomotionConditions = !aiming && !actions && !landHigh;
        
		    // free directional movement
            if (freeLocomotionConditions)
            {                
                // set speed to both vertical and horizontal inputs
			    speed = Mathf.Abs(input.x) + Mathf.Abs(input.y);
                speed = Mathf.Clamp(speed, 0, 1);
                // add 0.5f on sprint to change the animation on animator
                if (canSprint) speed = speed + 0.5f;
                if (stopMove) speed = 0f;

                // set the correct angle when input are apply 
			    if (input != Vector2.zero && !quickTurn180 && !lockPlayer)
                {
                   
                    _rotation = Quaternion.LookRotation(targetDirection, Vector3.up);
                    var newAngle = _rotation.eulerAngles - transform.eulerAngles;
                    direction = newAngle.NormalizeAngle().y;

                    // activate quickTurn180 based on the directional angle
                    var quickTurn180Conditions = !crouch && direction >= 165 && !jump && onGround && !actions 
                                              || !crouch && direction <= -165 && !jump && onGround && !actions;
                    if (quickTurn180Conditions)
                        quickTurn180 = true;

                    // apply free directional rotation while not turning180 animations
                    if (!quickTurn180)
                    {
                        Vector3 lookDirection = targetDirection.normalized;
                        _rotation = Quaternion.LookRotation(lookDirection);
                        transform.rotation = Quaternion.Slerp(transform.rotation, _rotation, rotationSpeed * Time.deltaTime);
                    }
                    // send the angle direction to the animator
				    animator.SetFloat("Direction", lockPlayer ? 0f : direction, 0f, Time.deltaTime);
                }
            }
		    // move forward, backwards, strafe left and right
            else
            {               
               speed = input.y;
               direction = input.x;                
               animator.SetFloat("Direction", lockPlayer ? 0f : direction, 0.1f, Time.deltaTime);
            }

            animator.SetFloat("Speed", !stopMove || lockPlayer ? speed : 0f, 0.2f, Time.deltaTime);
        }

        //**********************************************************************************//
        // QUICK TURN 180	      															//
        //**********************************************************************************//
        void QuickTurn180Animation()
        {
            animator.SetBool("QuickTurn180", quickTurn180);

            // complete the 180 with matchTarget and disable quickTurn180 after completed
            if (stateInfo.IsName("Grounded.QuickTurn180"))
            {
                if (!animator.IsInTransition(0) && !ragdolled)
                    MatchTarget(Vector3.one, _rotation, AvatarTarget.Root,
                                 new MatchTargetWeightMask(Vector3.zero, 1f),
                                 animator.GetCurrentAnimatorStateInfo(0).normalizedTime, 0.9f);

                if (stateInfo.normalizedTime > 0.9f)
                    quickTurn180 = false;
            }
        }

        //**********************************************************************************//
        // QUICK STOP		      															//
        //**********************************************************************************//
        void QuickStopAnimation()
        {
            animator.SetBool("QuickStop", quickStop);

		    bool quickStopConditions = !actions && onGround;
            if (inputType == InputType.MouseKeyboard)
            {
                // make a quickStop when release the key while running
			    if (input.sqrMagnitude < 0.2f && animator.GetFloat("Speed") >= 0.9f && quickStopConditions)
                    quickStop = true;
            }
            else if (inputType == InputType.Controler)
            {
                // make a quickStop when release the analogue while running
			    if (speed == 0 && animator.GetFloat("Speed") >= 0.9f && quickStopConditions)
                    quickStop = true;            
            }

            // disable quickStop
            if (quickStop && input.sqrMagnitude > 0.9f && !stateInfo.IsName("Grounded.QuickStop") || actions)
                quickStop = false;
            else if (stateInfo.IsName("Grounded.QuickStop"))
            {
                if (stateInfo.normalizedTime > 0.9f || input.sqrMagnitude >= 0.1f || stopMove)
                    quickStop = false;
            }
        }

        //**********************************************************************************//
        // LADDER			      															//
        //**********************************************************************************//
        void LadderAnimation()
        {
            // resume the states of the ladder in one bool 
            usingLadder = 
                stateInfo.IsName("Ladder.EnterLadderBottom") ||
                stateInfo.IsName("Ladder.ExitLadderBottom") ||
                stateInfo.IsName("Ladder.ExitLadderTop") ||
                stateInfo.IsName("Ladder.EnterLadderTop") ||
                stateInfo.IsName("Ladder.ClimbLadder");

            // just to prevent any wierd blend between this animations
            if(usingLadder)
            {
                jump = false;
                quickTurn180 = false;
            }

            // make sure to lock the player when entering or exiting a ladder
            var lockOnLadder = 
                stateInfo.IsName("Ladder.EnterLadderBottom") ||
                stateInfo.IsName("Ladder.ExitLadderBottom") ||
                stateInfo.IsName("Ladder.ExitLadderTop") ||
                stateInfo.IsName("Ladder.EnterLadderTop");

            lockPlayer = lockOnLadder;

            LadderBottom();
            LadderTop();
        }

        void LadderBottom()
        {
            animator.SetBool("EnterLadderBottom", enterLadderBottom);
            animator.SetBool("ExitLadderBottom", exitLadderBottom);

            // enter ladder from bottom
            if (stateInfo.IsName("Ladder.EnterLadderBottom"))
            {
                capsuleCollider.isTrigger = true;
                _rigidbody.useGravity = false;

                // we are using matchtarget to find the correct X & Z to start climb the ladder
                // this information is provided by the cursorObject on the object, that use the script TriggerAction 
                // in this state we are sync the position based on the AvatarTarget.Root, but you can use leftHand, left Foot, etc.
                if (!animator.IsInTransition(0))
                    MatchTarget(matchTarget.position, matchTarget.rotation,
                               AvatarTarget.Root, new MatchTargetWeightMask
                                (new Vector3(1, 1, 1), 1), 0.25f, 0.9f);

                if (stateInfo.normalizedTime >= 0.75f)                
                   enterLadderBottom = false;                
            }

            // exit ladder bottom
            if (stateInfo.IsName("Ladder.ExitLadderBottom"))
            {
                capsuleCollider.isTrigger = false;
                _rigidbody.useGravity = true;

                if (stateInfo.normalizedTime >= 0.4f)
                {
                    exitLadderBottom = false;
                    usingLadder = false;
                }
            }
        }

        void LadderTop()
        {
            animator.SetBool("EnterLadderTop", enterLadderTop);
            animator.SetBool("ExitLadderTop", exitLadderTop);

            // enter ladder from top            
            if (stateInfo.IsName("Ladder.EnterLadderTop"))
            {
                capsuleCollider.isTrigger = true;
                _rigidbody.useGravity = false;

                // we are using matchtarget to find the correct X & Z to start climb the ladder
                // this information is provided by the cursorObject on the object, that use the script TriggerAction 
                // in this state we are sync the position based on the AvatarTarget.Root, but you can use leftHand, left Foot, etc.
                if (stateInfo.normalizedTime < 0.25f && !animator.IsInTransition(0))
                    MatchTarget(matchTarget.position, matchTarget.rotation,
                                AvatarTarget.Root, new MatchTargetWeightMask
                                (new Vector3(1, 0, 0.1f), 1), 0f, 0.25f);
                else if (!animator.IsInTransition(0))
                    MatchTarget(matchTarget.position, matchTarget.rotation,
                                AvatarTarget.Root, new MatchTargetWeightMask
                                (new Vector3(1, 1, 1), 1), 0.25f, 0.7f);

                if (stateInfo.normalizedTime >= 0.7f)
                    enterLadderTop = false;
            }

            // exit ladder top
            if (stateInfo.IsName("Ladder.ExitLadderTop"))
            {
                if (stateInfo.normalizedTime >= 0.85f)
                {
                    capsuleCollider.isTrigger = false;
                    _rigidbody.useGravity = true;
                    exitLadderTop = false;
                    usingLadder = false;
                }
            }
        }
//
//        //**********************************************************************************//
//        // ROLLING			      															//
//        //**********************************************************************************//
        void RollForwardAnimation()
        {
            animator.SetBool("RollForward", rolling);

            // rollFwd
            if (stateInfo.IsName("Action.RollForward"))
            {
                lockPlayer = true;
                _rigidbody.useGravity = false;

			    // prevent the character to rolling up 
                if (verticalVelocity >= 1)
                    _rigidbody.velocity = Vector3.ProjectOnPlane(_rigidbody.velocity, groundHit.normal);

                // reset the rigidbody a little ealier to the character fall while on air
                if (stateInfo.normalizedTime > 0.3f)
                    _rigidbody.useGravity = true;

                if (!crouch && stateInfo.normalizedTime > 0.85f)
                {
                    lockPlayer = false;
                    rolling = false;
                }
			    else if (crouch && stateInfo.normalizedTime > 0.75f)
			    {
				    lockPlayer = false;
				    rolling = false;
			    }
            }
        }

	    // control the direction of rolling when strafing
	    public void Rolling()
	    {
		    bool conditions = (aiming || speed >= 0.25f) && !stopMove && onGround && !actions && !landHigh;
		
		    if (conditions)
		    {			
			    if (aiming)
			    {
				    // check the right direction for rolling if you are aiming
				    _rotation = Quaternion.LookRotation(targetDirection, Vector3.up);
				    var newAngle = _rotation.eulerAngles - transform.eulerAngles;
				    direction = newAngle.NormalizeAngle().y;		
				    transform.Rotate(0, direction, 0, Space.Self);
			    }
			    rolling = true;
			    quickTurn180 = false;
		    }
	    }

//        //**********************************************************************************//
//        // JUMP ANIMATION	      															//
//        //**********************************************************************************//
        void JumpAnimation()
        {
            animator.SetBool("Jump", jump);            
            var newSpeed = (jumpForward * speed);

            if (stateInfo.IsName("Grounded.Jump"))
            {
                // apply extra height to the jump
                if (stateInfo.normalizedTime < 0.85f)
                    _rigidbody.velocity = new Vector3(_rigidbody.velocity.x, jumpForce, _rigidbody.velocity.z);
                // end jump animation
                if (stateInfo.normalizedTime >= 0.85f)                          
                    jump = false;
                // apply extra speed forward
                if (stateInfo.normalizedTime >= 0.65f && jumpAirControl)
                    _rigidbody.AddForce(transform.forward * newSpeed, ForceMode.VelocityChange);
                else if (stateInfo.normalizedTime >= 0.65f && !jumpAirControl)
                    _rigidbody.AddForce(transform.forward * jumpForward, ForceMode.VelocityChange);
            }

            if (stateInfo.IsName("Grounded.JumpMove"))
            {
                // apply extra height to the jump
                if (stateInfo.normalizedTime < 0.85f)
                    _rigidbody.velocity = new Vector3(_rigidbody.velocity.x, jumpForce, _rigidbody.velocity.z);
                // end jump animation
                if (stateInfo.normalizedTime >= 0.55f)
                    jump = false;
                // apply extra speed forward
                if (jumpAirControl)
                    _rigidbody.AddForce(transform.forward * newSpeed, ForceMode.VelocityChange);
                else
                    _rigidbody.AddForce(transform.forward * jumpForward, ForceMode.VelocityChange);
            }

            // apply extra speed forward when falling
            if (stateInfo.IsName("Airborne.FallingFromJump") && jumpAirControl)
                _rigidbody.AddForce(transform.forward * newSpeed, ForceMode.VelocityChange);
            else if (stateInfo.IsName("Airborne.FallingFromJump") && !jumpAirControl)
                _rigidbody.AddForce(transform.forward * jumpForward, ForceMode.VelocityChange);
        }
//
//        //**********************************************************************************//
//        // HARD LANDING		      															//
//        //**********************************************************************************//
        void LandHighAnimation()
        {
            animator.SetBool("LandHigh", landHigh);

		    // if the character fall from a great height, landhigh animation
		    if (!rolling && !onGround && verticalVelocity <= landHighVel)
                landHigh = true;

            if (landHigh && stateInfo.IsName("Airborne.LandHigh"))
            {                
                if (stateInfo.normalizedTime >= 0.1f && stateInfo.normalizedTime <= 0.2f)
			    {
				    // vibrate the controller 
				    #if !UNITY_WEBPLAYER && !UNITY_ANDROID
				    StartCoroutine(GamepadVibration(0.15f));
				    #endif	
			    }
			
			    if (stateInfo.normalizedTime > 0.9f)
                {
                    landHigh = false;                
                }
            }
        }

//        //**********************************************************************************//
//        // STEP UP			      															//
//        //**********************************************************************************//
        void StepUpAnimation()
        {
            animator.SetBool("StepUp", stepUp);

            if (stateInfo.IsName("Action.StepUp"))
            {
                if (stateInfo.normalizedTime > 0.1f && stateInfo.normalizedTime < 0.3f)
                {
                    gameObject.GetComponent<Collider>().isTrigger = true;
                    _rigidbody.useGravity = false;
                }

			    // we are using matchtarget to find the correct height of the object                
                if (!animator.IsInTransition(0))
                    MatchTarget(matchTarget.position, matchTarget.rotation,
                                AvatarTarget.LeftHand, new MatchTargetWeightMask
                                (new Vector3(0, 1, 1), 0), 0f, 0.5f);

                if (stateInfo.normalizedTime > 0.9f)
                {
                    gameObject.GetComponent<Collider>().isTrigger = false;
                    _rigidbody.useGravity = true;
                    stepUp = false;
                }
            }
        }

        //**********************************************************************************//
        // JUMP OVER		      															//
        //**********************************************************************************//
        void JumpOverAnimation()
        {
            animator.SetBool("JumpOver", jumpOver);

		    if (stateInfo.IsName("Action.JumpOver"))
            {
                quickTurn180 = false;
			    if (stateInfo.normalizedTime > 0.1f && stateInfo.normalizedTime < 0.3f)
				    _rigidbody.useGravity = false;

                // we are using matchtarget to find the correct height of the object
                if (!animator.IsInTransition(0))
                    MatchTarget(matchTarget.position, matchTarget.rotation,
                                AvatarTarget.LeftHand, new MatchTargetWeightMask
                                (new Vector3(0, 1, 1), 0), 0.1f*(1-stateInfo.normalizedTime), 0.3f*(1 - stateInfo.normalizedTime));

                if (stateInfo.normalizedTime >= 0.7f)
			    {
				    _rigidbody.useGravity = true;
				    jumpOver = false;
			    }                
            }
        }

        //**********************************************************************************//
        // CLIMB			      															//
        //**********************************************************************************//
        void ClimbUpAnimation()
        {
            animator.SetBool("ClimbUp", climbUp);

            if (stateInfo.IsName("Action.ClimbUp"))
            {
                if (stateInfo.normalizedTime > 0.1f && stateInfo.normalizedTime < 0.3f)
                {
				    _rigidbody.useGravity = false;
                    gameObject.GetComponent<Collider>().isTrigger = true;               
                }

			    // we are using matchtarget to find the correct height of the object
                if (!animator.IsInTransition(0))
                    MatchTarget(matchTarget.position, matchTarget.rotation,
                               AvatarTarget.LeftHand, new MatchTargetWeightMask
                               (new Vector3(0, 1, 1), 0), 0f, 0.2f);

                if (stateInfo.normalizedTime >= 0.85f)
                {
                    gameObject.GetComponent<Collider>().isTrigger = false;
				    _rigidbody.useGravity = true;
                    climbUp = false;
                }
            }
        }    
  
       //***********************************************************************************//
       // HEAD TRACK		      											    			//
       // head follow where you point at and curve the spine while aiming   				//
       //***********************************************************************************//
       Vector3 lookPoint(float distance)
       {
           Ray ray = new Ray(tpCamera.transform.position, tpCamera.transform.forward);
           return ray.GetPoint(distance);
       }

       void OnAnimatorIK()
       {
            // get the random idle layer to blend animations
//            stateInfo = animator.GetCurrentAnimatorStateInfo(1);

            var rot = Quaternion.LookRotation(lookPoint(1000f) - transform.position, Vector3.up);
            var newAngle = rot.eulerAngles - transform.eulerAngles;
            var ang = newAngle.NormalizeAngle().y;
            bool headTrackConditions = !usingLadder && !rolling && !landHigh;

            if (!aiming)
            {
                if (headTracking && headTrackConditions)
                {
                    if (ang <= 70 && ang >= 0 && !lockPlayer && stateInfo.IsName("Null") || ang > -70 && ang <= 0 && !lockPlayer && stateInfo.IsName("Null"))
                        lookAtWeight += 1f * Time.deltaTime;
                    else
                        lookAtWeight -= 1f * Time.deltaTime;

                    lookAtWeight = Mathf.Clamp(lookAtWeight, 0f, 1f);
                    animator.SetLookAtWeight(lookAtWeight, 0.3f, 1f);
                }
            }
            else
                if(!usingLadder) animator.SetLookAtWeight(0.5f, spineCurvature);

            lookPosition = Vector3.Lerp(lookPosition, lookPoint(1000f), 10f * Time.deltaTime);
            animator.SetLookAtPosition(lookPosition);
        }

        // helps find the right direction
        Vector3 targetDirection
        {
            get
            {
                Vector3 refDir = Vector3.zero;
                Vector3 cameraForward = tpCamera.transform.TransformDirection(Vector3.forward);
                cameraForward.y = 0;
                if (!tpCamera.currentState.cameraMode.Equals(TPCameraMode.FixedAngle))
                {
                    cameraForward = tpCamera.transform.TransformDirection(Vector3.forward);
                    cameraForward.y = 0; //set to 0 because of camera rotation on the X axis

                    //get the right-facing direction of the camera
                    Vector3 cameraRight = tpCamera.transform.TransformDirection(Vector3.right);

                    // determine the direction the player will face based on input and the camera's right and forward directions
                    refDir = input.x * cameraRight + input.y * cameraForward;
                }
                else
                {
                    refDir = new Vector3(input.x, 0, input.y);
                }
                return refDir;
            }
        }

        //**********************************************************************************//
        // MATCH TARGET																		//
        // call this method to help animations find the correct cursorObject						//
        // don't forget to add the curve MatchStart and MatchEnd on the animation clip		//
        //**********************************************************************************//
        void MatchTarget(Vector3 matchPosition, Quaternion matchRotation, AvatarTarget target, 
	                     MatchTargetWeightMask weightMask, float normalisedStartTime, float normalisedEndTime)
	    {
		    if (animator.isMatchingTarget)
			    return;
		
		    float normalizeTime = Mathf.Repeat(animator.GetCurrentAnimatorStateInfo(0).normalizedTime, 1f);
		    if (normalizeTime > normalisedEndTime)
			    return;

		    if(!ragdolled)
		    animator.MatchTarget(matchPosition, matchRotation, target, weightMask, normalisedStartTime, normalisedEndTime);
	    }   
	
    }
}