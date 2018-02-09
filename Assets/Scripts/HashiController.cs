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

    //public Animation GraphAnimation;
    //public Animation SymbolAnimation;
    //public Animator GraphAnimator;
    //public Animator SymbolAnimator;
    Animator animator;

    void Start()
    {
        animator = GetComponent<Animator>();
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
            //GraphAnimator.SetBool("Solved", true);
            //SymbolAnimator.SetBool("Solved", true);
            //GraphAnimation.Play();
            //SymbolAnimation.Play();
            animator.SetBool("Solved", true);
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
