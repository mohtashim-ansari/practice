using C__Examples;

Console.WriteLine("Program Started:");
string name = "John";
Console.WriteLine(name);
Console.WriteLine();

//Variables Example
Console.WriteLine("Variables:");
Variables vars = new Variables();
vars.DeclareVariables();
Console.WriteLine();

//Data Types Example
Console.WriteLine("Data Types:");
DataTypes dataTypes = new DataTypes();
dataTypes.ShowDataTypes();
Console.WriteLine();

//Value Types Example
Console.WriteLine("Value Types:");
ValueTypes valueTypes = new ValueTypes();
valueTypes.ShowValueTypes();

Console.WriteLine();

//Reference Types Example
Console.WriteLine("Reference Types:");
Reference_Types referenceTypes = new Reference_Types();
referenceTypes.ShowReferenceTypes();

Console.WriteLine("             ");

Console.WriteLine("Function Example:");
Function funs = new Function();
funs.MakeTea();
Console.WriteLine("             ");

Console.WriteLine("     List Example:  ");

ListExample listExample = new ListExample();
listExample.Main();

Console.WriteLine("             ");
Console.WriteLine(" Encapsulation Example:  ");
Encapsulation encapsulation = new Encapsulation();
encapsulation.Deposit(1000);
encapsulation.Withdraw(500);
Console.WriteLine($"Current Balance: {encapsulation.GetBalance()}");
encapsulation.Withdraw(600);

Console.WriteLine(encapsulation.GetBalance());


Console.WriteLine("             ");

Console.WriteLine("Program Ended.");

