namespace Forms
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnTeste_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Hello World!");
        }

        private void lblTeste_Click(object sender, EventArgs e)
        {

        }

        private void btnClick_Click(object sender, EventArgs e)
        {
            lblTeste.Text = "Alterando propriedade da label \n" + txtNome.Text;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            statusHora.Text = DateTime.Now.ToString();
        }
    }
}