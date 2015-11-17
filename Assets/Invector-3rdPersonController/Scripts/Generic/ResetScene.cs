using UnityEngine;
using System.Collections;

public class ResetScene : MonoBehaviour
{
    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Application.LoadLevel(0);
        }
    }
}