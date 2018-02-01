using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HashiController : MonoBehaviour
{
    public List<Node> nodes = new List<Node>();
    public bool Solved;

    void Start()
    {
        Solved = false;
    }

    void Update()
    {
        if (nodes.TrueForAll(y => y.value == 0))
        {
            Solved = true;
        }
        else
        {
            Solved = false;
        }
    }
}
