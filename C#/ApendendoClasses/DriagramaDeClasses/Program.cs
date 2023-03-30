using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DriagramaDeClasses
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Funcionario funcionario = new Funcionario();
            funcionario.nome = "João";
            funcionario.senha = "123";
            funcionario.username = "joao123";
            ((Funcionario)funcionario).salario = 1000;
            ((Funcionario)funcionario).trabalhar();
            
            Console.WriteLine($"Salário do funcionário: {((Funcionario)funcionario).salario}");

            Supervisor supervisor = new Supervisor();
            supervisor.nome = "Maria";
            supervisor.senha = "123";
            supervisor.username = "maria123";

            Setor setor = new Setor();
            setor.nome = "TI";

            ((Supervisor)supervisor).setor = setor;
            ((Supervisor)supervisor).supervisionar();

            Console.WriteLine($"Setor do supervisor: {((Supervisor)supervisor).setor.nome}");

            Gerente gerente = new Gerente();
            gerente.nome = "José";
            gerente.senha = "123";
            gerente.username = "jose123";

            ((Gerente)gerente).comissao = 1000;
            ((Gerente)gerente).gerenciar();

            Console.WriteLine($"Comissão do gerente: {((Gerente)gerente).comissao}");   
        }
    }
}
