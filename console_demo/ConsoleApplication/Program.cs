using System;

namespace ConsoleApplication
{
    class Program
    {
        static void Main ( string[] args )
        {
            Flyway.CheckDatabase ( );
            PrintEmployees ( );
        }

        private static void PrintEmployees ( )
        {
            var employees = new PayrollEntities ( ).Employees;
            foreach (Employee employee in employees)
            {
                Console.WriteLine ( employee.Id + "/" + employee.LastName );
            }
        }
    }
}
