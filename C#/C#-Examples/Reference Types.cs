using System;

namespace C__Examples;

public class Reference_Types
{
    public void ShowReferenceTypes()
    {
        string name = "Reference Type Example";
        object obj = new object();
        dynamic dyn = "I am dynamic";

        Console.WriteLine($"String: {name}");
        Console.WriteLine($"Object: {obj.ToString()}");
        Console.WriteLine($"Dynamic: {dyn}");
    }

}
