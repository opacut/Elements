using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GridManager : MonoBehaviour
{
    public enum GridSpaceStatus { E, N, B };

    public struct Coordinate
    {
        public int x, y;
        public Coordinate(int p1, int p2)
        {
            x = p1;
            y = p2;
        }
        public bool Compare(int p1, int p2)
        {
            return p1 == x && p2 == y;
        }
    }

    public struct GridSpace
    {
        public Coordinate xy;
        public GridSpaceStatus status;
        
        public GridSpace(Coordinate c, GridSpaceStatus stat)
        {
            xy = new Coordinate(c.x,c.y);
            status = stat;
        }
    }

    public Dictionary<Coordinate,GridSpaceStatus> grid { get; set; }
    public int gridSize;

    


	// Use this for initialization
	void Start ()
    {
        for (int i = 1; i >= gridSize; i++)
        {
            for (int j = 1; j >= gridSize; j++)
            {
                grid[new Coordinate(i, j)] = GridSpaceStatus.E;
            }
        }
    }
	
	void Update ()
    {
		
	}

    public bool AddBridge(int x, int y)
    {
        Coordinate coord = new Coordinate(x, y);
        bool created = false;
        foreach(var elem in grid)
        {
            if (coord.Compare(elem.Key.x, elem.Key.y))
            {
                if (elem.Value != GridSpaceStatus.E)
                {
                    break;
                }
                else
                {
                    grid[coord] = GridSpaceStatus.E;
                    created = true;
                    break;
                }
            }
        }
        return created;
    }
}
