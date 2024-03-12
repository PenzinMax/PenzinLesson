namespace ProgramInterface
{
    using System;

    public interface ICalculator
    {
        void Calculate(int num1, int num2);
    }

    public class Calculator : ICalculator
    {
        public void Calculate(int num1, int num2)
        {
            Console.WriteLine("Сумма чисел = " + (num1 + num2));
            Console.WriteLine("Произведение = " + (num1 * num2));
            Console.WriteLine("Разница = " + (num1 - num2));
            try
            {
                Console.WriteLine("Результат деления = " + ((double)num1 / num2));
            }
            catch (DivideByZeroException)
            {
                Console.WriteLine("Результат деления = Делить на ноль нельзя");
            }
        }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            if (args.Length != 2)
            {
                Print("Пожалуйста, введите два числа через пробел");
            }
            else
            {
                try
                {
                    int num1 = int.Parse(args[0]);
                    int num2 = int.Parse(args[1]);
                    ICalculator calculator = new Calculator();
                    calculator.Calculate(num1, num2);
                }
                catch
                {
                    Print("Ошибка");
                }
            }
        }

        static void Print(string message)
        {
            Console.WriteLine(message);
        }
    }
}