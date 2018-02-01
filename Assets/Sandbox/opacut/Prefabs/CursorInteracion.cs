using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CursorInteracion : MonoBehaviour
{
    public int rayLength = 10;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        var hit = new RaycastHit();
        var fwd = transform.TransformDirection(Vector3.forward);
        if (Physics.Raycast(transform.position, fwd, hit.distance, rayLength))
        {
            if (hit.collider.gameObject.tag == "bridge")
            {
                hit.collider.gameObject.SendMessage(methodName: "OnMouseOver");
                //guiShow = true;
                //if(Input.GetKe)
            }

        }
    }
}
