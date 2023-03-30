using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DriagramaDeClasses
{
    internal class Supervisor : Usuario
    {
        public Setor setor;

        public void supervisionar()
        {
            this.logar();
            Console.WriteLine($"{nome}, está supervisionando o setor {setor.nome}");
        }
    }
}
