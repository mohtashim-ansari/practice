using System;

namespace C__Examples;


   public class Encapsulation
    {
        private double balance;   // ❗ Direct access nahi

        public void Deposit(double amount)   // ✔ Allowed way
        {
            balance += amount;
        }

        public void Withdraw(double amount)  // ✔ Allowed way
        {
            if (amount <= balance)
                balance -= amount;
            else
                Console.WriteLine("Insufficient balance");
        }

        public double GetBalance()   // ✔ Controlled access
        {
            return balance;
        }
    }

