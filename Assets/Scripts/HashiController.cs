using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HashiController : MonoBehaviour
{
    public List<Node> nodes = new List<Node>();
    public List<Bridge> bridges = new List<Bridge>();
    public List<ParticleSystem> particleSystems = new List<ParticleSystem>();
    public bool Solved;

    void Start()
    {
        Solved = false;
    }

    void Update()
    {
        if (nodes.TrueForAll(y => y.value == 0))
        {
            foreach (Bridge b in bridges)
            {
                b.Locked = true;
            }
            foreach (Node n in nodes)
            {
                n.LightUp();
            }
            foreach (ParticleSystem ps in particleSystems)
            {
                ps.Play();
            }
            Solved = true;
        }
        else
        {
            Solved = false;
        }
    }

    void Lock()
    {

    }
}
