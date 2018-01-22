using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class WinGame : MonoBehaviour
{
    public List<Node> nodes = new List<Node>();
    public bool EndGame;
    public Text text;

    void Start ()
    {
        EndGame = false;
        text.text = "";
    }
	
	void Update ()
    {
        if (!nodes.Exists(y => y.value!=0))
        {
            EndGame = true;
        }
        
        if(EndGame)
        {
            text.text = "You have won!";
        }
	}
}
