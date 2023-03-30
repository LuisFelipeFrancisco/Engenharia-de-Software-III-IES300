using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DriagramaDeClasses
{
    internal class Gerente : Usuario
    {

        public float comissao;

        public void gerenciar()
        {
            this.logar();
            Console.WriteLine($"{nome}, é gerente do sistema.");
        }

    }
}
