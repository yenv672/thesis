using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityStandardAssets.CrossPlatformInput;

public class TPCamera : MonoBehaviour
{
    private static TPCamera _instance;
    public static TPCamera instance
    {
        get
        {
            if (_instance == null)
            {
                _instance = GameObject.FindObjectOfType<TPCamera>();

                //Tell unity not to destroy this object when loading a new scene!
                //DontDestroyOnLoad(_instance.gameObject);
            }

            return _instance;
        }
    }

    #region inspector properties
    public Transform target;
    public float xMouseSensitivity = 3f;
    public float yMouseSensitivity = 3f;
    public float smoothBetweenState = 0.05f;
    public float smoothCameraRotation = 12f;
    public float scrollSpeed = 10f;
    public bool lockCamera;
    [HideInInspector] public Transform lockTarget; // experimental zelda lock on style
    public LayerMask cullingLayer;
    #endregion

    #region hide properties    
    [HideInInspector]   public int index;
    [HideInInspector]   public float offSetPlayerPivot;
    [HideInInspector]   public string currentStateName;
    [HideInInspector]   public TPCameraState currentState;
    [HideInInspector]   public TPCameraListData CameraStateList;
    private TPCameraState lerpState;
    private Transform targetLookAt;
    private Vector3 currentTargetPos;
    private Vector3 lookPoint;
    private Vector3 cPos;
    private Vector3 oldCameraPos, oldTargetPos;
    private Camera _camera;
    private float distance = 5f;
    private float mouseY = 0f;
    private float mouseX = 0f;
    private float targetHeight;
    private float currentZoom;
    private float desiredDistance;    
    private float oldDistance;
    #endregion

    void Start()
    {
        Init();
    }
       
    // inicia os paramentros da camera
    void Init()
    {
        //Cursor.visible = false;
        if (target == null)
        {
            Debug.Log("Please assign the Player");
            return;
        }
        _camera = GetComponent<Camera>();        
        currentTargetPos = new Vector3(target.position.x, target.position.y + offSetPlayerPivot, target.position.z);
        targetLookAt = new GameObject("targetLookAt").transform;
        targetLookAt.position = target.position;
        targetLookAt.hideFlags = HideFlags.HideInHierarchy;
        targetLookAt.rotation = target.rotation;
       
        // inicia o primero estado da camera
        ChangeState("Normal", false);
        
        currentZoom = currentState.defaultDistance;

        mouseY = target.eulerAngles.x;
        mouseX = target.eulerAngles.y;       
    }   

    void FixedUpdate()
    {
        if (targetLookAt == null)
            return;

        CameraMovement();
    }

    /// <summary>
    /// Define o cursorObject da camera
    /// </summary>
    /// <param name="Novo cursorObject"></param>
    public void SetTarget(Transform newTarget)
    {
        target = newTarget;
    }

    /// <summary>
    /// Convert ponto da tela em um raio para o mundo
    /// </summary>
    /// <param name="Point"></param>
    /// <returns></returns>
    public Ray ScreenPointToRay(Vector3 Point)
    {
        return this.GetComponent<Camera>().ScreenPointToRay(Point);
    }

    /// <summary>
    /// Mudança de estado da camera
    /// </summary>
    /// <param name="stateName"></param>
    /// <param name="Use smoth"></param>
    public void ChangeState(string stateName, bool hasSmooth)
    {
        if (currentState.Name.Equals(stateName))
            return;
        //busca pelo estado na lista por nome
        var state = CameraStateList.tpCameraStates.Find(delegate(TPCameraState obj) { return obj.Name.Equals(stateName); });

        if (state != null)
        {            
            currentStateName = stateName;
            lerpState = state;//seta o estado de transicação (lerpstate) para o estado encontrado na lista
            //caso nao haja smoth sera feito uma copia de valores sem transição
            if (currentState != null && !hasSmooth)
                currentState.CopyState(state);
        }
        else
        {           
            //caso o estado não indicado por nome nao exista será setado o primeiro estado como padrão
            if (CameraStateList.tpCameraStates.Count > 0)
            {
                state = CameraStateList.tpCameraStates[0];
                currentStateName = state.Name;
                lerpState = state;
                if (currentState != null && !hasSmooth)
                    currentState.CopyState(state);
            }
        }
        //caso não exista uma lista de estado será criado um estado default;
        if (currentState == null)
        {
            currentState = new TPCameraState("Null");
            currentStateName = currentState.Name;
        }

        index = CameraStateList.tpCameraStates.IndexOf(state);
        currentZoom = state.defaultDistance;
    }
  
    /// <summary>
    /// Controla o Zoom da camera (mudando a distancia) 
    /// </summary>
    /// <param name="scroolValue"></param>
    /// <param name="zoomSpeed"></param>
    public void Zoom(float scroolValue)
    {
        currentZoom -= scroolValue * scrollSpeed;
    }

    /// <summary>
    /// Controla a rotação da camera
    /// </summary>
    /// <param name="x"></param>
    /// <param name="y"></param>
    public void RotateCamera(float x, float y)
    {
        if (!currentState.cameraMode.Equals(TPCameraMode.FixedAngle))
        {
            // Rotação livre de camera
            mouseX += x * xMouseSensitivity;
            mouseY -= y * yMouseSensitivity;
            if (!lockCamera)
            {
                mouseY = Extensions.ClampAngle(mouseY, currentState.yMinLimit, currentState.yMaxLimit);
                mouseX = Extensions.ClampAngle(mouseX, currentState.xMinLimit, currentState.xMaxLimit);
            }
            else
            {
               mouseY = target.root.localEulerAngles.x;
               mouseX = target.root.localEulerAngles.y;
            }
        }
        else
        {
            //Rotação fixa de camera
            mouseX = currentState.fixedAngle.x;
            mouseY = -currentState.fixedAngle.y;
        }
    }

    /// <summary>
    /// Methodo Responsavel por controlar o movimento da camera
    /// </summary>    
    void CameraMovement()
    {
        if (target == null)
            return;
      
        currentState.Slerp(lerpState, smoothBetweenState);       

        var camDir = (currentState.forward * targetLookAt.forward) + (currentState.right * targetLookAt.right);
        camDir = camDir.normalized;       
        var targetPos = new Vector3(target.position.x, target.position.y + offSetPlayerPivot, target.position.z);       
        currentTargetPos = Vector3.Slerp(currentTargetPos, targetPos, currentState.smoothFollow * Time.deltaTime);
        cPos = currentTargetPos + new Vector3(0, targetHeight, 0);
        oldTargetPos = targetPos + new Vector3(0, currentState.height, 0);
        RaycastHit hitInfo;       
        ClipPlanePoints planePoints = _camera.NearClipPlanePoints(transform.position);
        ClipPlanePoints oldPoints = _camera.NearClipPlanePoints(oldCameraPos);

        if (CullingRayCast(cPos, planePoints, out hitInfo, distance + 0.2f, cullingLayer)) distance = desiredDistance;
      
        if (CullingRayCast(oldTargetPos, oldPoints, out hitInfo, oldDistance + 0.2f, cullingLayer))
        {
            var t = distance - 0.2f;
            t -= currentState.cullingMinDist;
            t /= (distance - currentState.cullingMinDist);           
            targetHeight = Mathf.Lerp(currentState.cullingHeight, targetHeight, Mathf.Clamp(t, 0.0f, 1.0f));            
            cPos = currentTargetPos + new Vector3(0, targetHeight, 0);
        }
        else
        {
            if (currentState.useZoom)
            {
                currentZoom = Mathf.Clamp(currentZoom, lerpState.minDistance, lerpState.maxDistance);
                distance = Mathf.Lerp(distance, currentZoom, 2f * Time.deltaTime);
            }
            else
            {
                distance = Mathf.Lerp(distance, currentState.defaultDistance, 2f * Time.deltaTime);
                currentZoom = distance;
            }
            desiredDistance = distance;           
            oldDistance = distance;
            targetHeight = Mathf.Lerp(targetHeight, currentState.height, 2f * Time.deltaTime);
        }

        var lookPoint = cPos;
        lookPoint += (targetLookAt.right * Vector3.Dot(camDir * distance, targetLookAt.right));       
        transform.position = cPos + (camDir * distance);
        oldCameraPos = oldTargetPos + (camDir * oldDistance);       

        if (lockTarget != null)
        {            
            Vector3 relativePos = lockTarget.position - transform.position;
            Quaternion rotation = Quaternion.LookRotation(relativePos);
            transform.rotation = Quaternion.Slerp(transform.rotation, rotation, 2.5f * Time.deltaTime);          
        }
        else
            transform.LookAt(lookPoint);

        targetLookAt.position = cPos;        
        Quaternion newRot = Quaternion.Euler(mouseY, mouseX, 0);
        targetLookAt.rotation = Quaternion.Slerp(targetLookAt.rotation, newRot, smoothCameraRotation * Time.deltaTime);
    }

    /// <summary>
    /// Custom Raycast using NearClipPlanesPoints
    /// </summary>
    /// <param name="_to"></param>
    /// <param name="from"></param>
    /// <param name="hitInfo"></param>
    /// <param name="distance"></param>
    /// <param name="cullingLayer"></param>
    /// <returns></returns>
    bool CullingRayCast( Vector3 from, ClipPlanePoints _to, out RaycastHit hitInfo, float distance, LayerMask cullingLayer)
    {
        bool value = false;

        if (Physics.Raycast(from, _to.LowerLeft - from, out hitInfo, distance, cullingLayer))
        {           
            value = true;
            if (desiredDistance > hitInfo.distance) desiredDistance = hitInfo.distance;
        }

        if (Physics.Raycast(from, _to.LowerRight - from, out hitInfo, distance, cullingLayer))
        {
            value = true;           
            if (desiredDistance > hitInfo.distance) desiredDistance = hitInfo.distance ;
        }

        if (Physics.Raycast(from, _to.UpperLeft - from, out hitInfo, distance, cullingLayer))
        {
            value = true; 
            if (desiredDistance > hitInfo.distance) desiredDistance = hitInfo.distance ;
        }

        if (Physics.Raycast(from, _to.UpperRight - from, out hitInfo, distance, cullingLayer))
        {
            value = true;            
            if (desiredDistance > hitInfo.distance ) desiredDistance = hitInfo.distance;
        }
        
        return value;
    }

    bool CheckCullingRayCast( Vector3 from, ClipPlanePoints _to, float distance, LayerMask cullingLayer)
    {
        bool value = false;

        if (Physics.Raycast(from, _to.LowerLeft - from, distance, cullingLayer))
        {
            value = true;
        }       

        if (Physics.Raycast(from, _to.LowerRight - from, distance, cullingLayer))
        {
            value = true;
        }        

        if (Physics.Raycast(from, _to.UpperLeft - from, distance, cullingLayer))
        {
            value = true;         
        }        

        if (Physics.Raycast(from, _to.UpperRight - from, distance, cullingLayer))
        {
            value = true;         
        }        
        return value;
    }
}
