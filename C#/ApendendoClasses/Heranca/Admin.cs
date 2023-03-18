using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Heranca
{
    internal class Admin : Usuario
    {
        public decimal salario;

        public void gerenciar()
        {
            this.logar();
            Console.WriteLine($"{nome}, é admistrador do sistema.");
        }
    }
}