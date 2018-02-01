using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class WinGame : MonoBehaviour
{
    public List<HashiController> Puzzles = new List<HashiController>();
    public bool EndGame;
    public Text text;
    public GameObject textPanel;

    void Start ()
    {
        textPanel.SetActive(false);
        EndGame = false;
        text.text = "";
    }
	
	void Update ()
    {
        if (Puzzles.TrueForAll(y => y.Solved))
        {
            EndGame = true;
        }
        
        if(EndGame)
        {
            textPanel.SetActive(true);
            text.text = "You have won!";
        }
	}
}
