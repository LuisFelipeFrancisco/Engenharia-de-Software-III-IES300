using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Heranca
{
    internal class Cliente
    {
        public String nome;
        public String rg;
        public String cpf;
        public String nascimento;

        public void exibeDados()
        {
            Console.WriteLine($"Nome {nome}, cpf {cpf}");
        }

    }
}
