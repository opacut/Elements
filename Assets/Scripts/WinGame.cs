using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class WinGame : MonoBehaviour
{
    public List<HashiController> Puzzles = new List<HashiController>();
    public bool EndGame;
    public bool Ended;
    public Text text;
    public GameObject textPanel;

    void Start ()
    {
        textPanel.SetActive(false);
        EndGame = false;
        Ended = false;
        text.text = "";
    }
	
	void Update ()
    {
        if (!EndGame&&Puzzles.TrueForAll(y => y.Solved))
        {
            EndGame = true;
        }
        
        if(!Ended&&EndGame)
        {
            Invoke("EndScene", 10);
            Ended = true;
        }
	}

    void EndScene()
    {
        SceneManager.LoadScene("EndGame");
    }
}
