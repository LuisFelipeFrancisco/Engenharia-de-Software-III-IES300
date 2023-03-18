using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Heranca
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Cliente cliente = new Cliente();
            cliente.nome = "Felipe";
            cliente.rg = "00.000.000-0";
            cliente.nascimento = "31/jan";
            cliente.cpf = "111.111.111-11";

            cliente.exibeDados();

            Usuario usuario = new Usuario();
            usuario.nome = "Luis Felipe";
            usuario.rg = "11.111.111-1";
            usuario.cpf = "222.222.222-22";
            usuario.nascimento = "31/01/1994";
            usuario.login = "luisfelipe";
            usuario.senha = "********";

            usuario.exibeDados();
            usuario.logar();

            Admin admin = new Admin();
            admin.nome = "ADM";

            admin.gerenciar();
            
            Console.ReadKey();

        }
    }
}
