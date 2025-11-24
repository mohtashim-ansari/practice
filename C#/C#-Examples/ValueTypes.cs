using System;

namespace C__Examples;

public class ValueTypes
{
    public void ShowValueTypes()
    {
        int intValue = 42;
        float floatValue = 3.14f;
        double doubleValue = 2.71828;
        bool boolValue = true;
        char charValue = 'Z';

        Console.WriteLine($"Integer Value: {intValue}");
        Console.WriteLine($"Float Value: {floatValue}");
        Console.WriteLine($"Double Value: {doubleValue}");
        Console.WriteLine($"Boolean Value: {boolValue}");
        Console.WriteLine($"Character Value: {charValue}");
    }
}
