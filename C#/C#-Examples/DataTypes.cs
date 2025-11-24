using System;

namespace C__Examples;

public class DataTypes
{
    public void ShowDataTypes()
    {
        int integerType = 100;
        float floatType = 10.5f;
        double doubleType = 20.99;
        decimal decimalType = 30.99m;
        bool boolType = false;
        char charType = 'C';
        string stringType = "Hello, World!";

        Console.WriteLine($"Integer: {integerType}");
        Console.WriteLine($"Float: {floatType}");
        Console.WriteLine($"Double: {doubleType}");
        Console.WriteLine($"Decimal: {decimalType}");
        Console.WriteLine($"Boolean: {boolType}");
        Console.WriteLine($"Character: {charType}");
        Console.WriteLine($"String: {stringType}");
    }

}
