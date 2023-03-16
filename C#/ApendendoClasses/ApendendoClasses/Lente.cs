using System;


namespace ApendendoClasses
{
    internal class Lente
    {
        public float grau;
        public String tipoFoco;
        public String formato;
        public bool antiReflexo;

        public void exibeDados()
        {
            Console.WriteLine($"Grau: {grau}, Tipo de Foco: {tipoFoco}, Formato {formato}");
        }
    }
}
