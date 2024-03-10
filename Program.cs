namespace numbers
{
    using System;
    internal class Program
    {
        static void Main(string[] args)
        {
            if (args.Length != 2)
            {
                Console.WriteLine("Пожалуйста, введите два числа через пробел");
                
            }
            else
            {
                
                    try
                    {
                        int num1 = int.Parse(args[0]);
                        int num2 = int.Parse(args[1]);

                        Console.WriteLine("Сумма чисел = " + (num1 + num2));
                        Console.WriteLine("Произведение = " + (num1 * num2));
                        Console.WriteLine("Разница = " + (num1 - num2));

                        if (num2 != 0)
                        {
                            Console.WriteLine("Результат деления = " + ((double)num1 / num2));
                        }
                        else
                        {
                            Console.WriteLine("Результат деления = Делить на ноль нельзя");
                        }
                    }
                    catch 
                    {
                        Console.WriteLine("Ошибка");
                    }
                

            }
        }
    }
}