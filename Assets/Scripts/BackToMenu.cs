using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class BackToMenu : MonoBehaviour 
{
    private void Update()
    {
        if (Input.GetKey("escape"))
        {
            SceneManager.LoadScene("Main Menu");
        }
    }
}
