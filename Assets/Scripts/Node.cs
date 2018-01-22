using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Node : MonoBehaviour
{
    public int max;
    public int value;
    public int[] coordinates;
    public string Name;


    public GameObject mat;

    public Material[] mats;

    void Start()
    {
        mat.GetComponent<MeshRenderer>().material = mats[max];
    }

    public int ChangeValue(int i)
    {
        value += i;
        mat.GetComponent<MeshRenderer>().material = mats[value];
        return value;
    }
}
