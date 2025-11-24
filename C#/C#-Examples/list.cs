using System;

namespace C__Examples;

public class ListExample
{
    public void Main()
    {
        List<string> names = new List<string>();

        names.Add("Mohtashim");
        names.Add("Ansari");
        names.Add("Ali");

        names.Remove("Ansari");

        foreach (var name in names)
        {
            Console.WriteLine(name);
        }

        Console.WriteLine("Total: " + names.Count);
    }
}
