using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EndGame : MonoBehaviour
{
    public List<Node> nodes = new List<Node>();
    public bool End;
    public Text text;

    void Start()
    {
        End = false;
        text.text = "";
    }

    void Update()
    {
        if (!nodes.Exists(y => y.value != 0))
        {
            End = true;
        }

        if (End)
        {
            text.text = "You have won!";
        }
    }
}
