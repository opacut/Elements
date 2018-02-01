using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImageRenderer : MonoBehaviour
{
    public Material m_material;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        m_material = GetComponent<Renderer>().material;
	}
}
