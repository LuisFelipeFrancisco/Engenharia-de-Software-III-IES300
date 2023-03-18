using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Heranca
{
    internal class Usuario : Cliente
    {
        public String login;
        public String senha;

        public void logar()
        {
            Console.WriteLine($"{nome} entrou no sistema");
        }

    }
}
