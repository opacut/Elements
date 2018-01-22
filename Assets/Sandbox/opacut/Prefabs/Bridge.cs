using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Bridge : MonoBehaviour
{
    public enum State { OFF = 0, ONE = 1, TWO = 2 };

    public List<Node> nodes;
    public State state;
    public GameObject backlight;
    
    void Start ()
    {
        this.gameObject.GetComponent<MeshRenderer>().enabled = false;
        backlight.SetActive(false);
    }

    private void OnMouseExit()
    {
        backlight.SetActive(false);
    }

    private void OnMouseOver()
    {
        backlight.SetActive(true);
        if (Input.GetMouseButtonDown(0))
        {
            Toggle(1);
        }
        if (Input.GetMouseButtonDown(1))
        {
            Toggle(-1);
        }
    }


    public void Toggle(int increment)
    {
        int potentialValue = (int)(state + increment);
        UpdateNode(potentialValue, increment);
    }

    /*
     * UpdateNode does all the work. It takes the numerical value of the 
     * new state (calculated in Toggle()) and the unit increment (which 
     * basically just shows if the change is positive or negative) and 
     * chooses and sets the appropriate state and color.
     */
    public void UpdateNode(int stateValue, int increment)
    {
        switch (stateValue)
        {
            case (-1):
                break;

            case 3:
                stateValue = 0;
                state = State.OFF;
                ChangeColor(stateValue);
                foreach (Node n in nodes)
                {
                    n.ChangeValue(2);
                }
                break;

            default:
                if (increment > 0 && (nodes[0].value == 0 || nodes[1].value == 0))
                {
                    break;
                }
                if (increment < 0 && (nodes[0].value == nodes[0].max || nodes[1].value == nodes[1].max))
                {
                    break;
                }
                state = state + increment;
                ChangeColor(stateValue);
                foreach (Node n in nodes)
                {
                    n.ChangeValue(-increment);
                }
                break;

        }
    }

    /*
     * ChangeColor iterates through the colors we are using and sets the 
     * bridges color to the one corresponding to its new state.
     */ 
    public void ChangeColor(int newState)
    {
        Renderer rend = GetComponent<Renderer>();
        switch (newState)
        {
            case 0:
                this.gameObject.GetComponent<MeshRenderer>().enabled = false;
                break;
            case 1:
                this.gameObject.GetComponent<MeshRenderer>().enabled = true;
                rend.material.SetColor("_Color", Color.blue);
                break;
            case 2:
                this.gameObject.GetComponent<MeshRenderer>().enabled = true;
                rend.material.SetColor("_Color", Color.green);
                break;
        }
    }
}
