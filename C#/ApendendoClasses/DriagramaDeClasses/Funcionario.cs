using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DriagramaDeClasses
{
    internal class Funcionario : Usuario
    {
        public float salario;

        public void trabalhar()
        {
            this.logar();
            Console.WriteLine($"{nome}, está trabalhando.");
        }
    }
}
