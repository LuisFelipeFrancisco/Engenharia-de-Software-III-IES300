namespace Forms
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            components = new System.ComponentModel.Container();
            btnTeste = new Button();
            lblTeste = new Label();
            txtNome = new TextBox();
            btnClick = new Button();
            statusStrip1 = new StatusStrip();
            toolStripStatusLabel1 = new ToolStripStatusLabel();
            toolStripStatusLabel2 = new ToolStripStatusLabel();
            statusHora = new ToolStripStatusLabel();
            timer1 = new System.Windows.Forms.Timer(components);
            statusStrip1.SuspendLayout();
            SuspendLayout();
            // 
            // btnTeste
            // 
            btnTeste.Location = new Point(164, 130);
            btnTeste.Name = "btnTeste";
            btnTeste.Size = new Size(100, 23);
            btnTeste.TabIndex = 0;
            btnTeste.Text = "Dont!!!";
            btnTeste.UseVisualStyleBackColor = true;
            btnTeste.Click += btnTeste_Click;
            // 
            // lblTeste
            // 
            lblTeste.AutoSize = true;
            lblTeste.Location = new Point(164, 76);
            lblTeste.Name = "lblTeste";
            lblTeste.Size = new Size(100, 15);
            lblTeste.TabIndex = 1;
            lblTeste.Text = "Exemplo de Label";
            lblTeste.Click += lblTeste_Click;
            // 
            // txtNome
            // 
            txtNome.Location = new Point(164, 192);
            txtNome.Name = "txtNome";
            txtNome.Size = new Size(100, 23);
            txtNome.TabIndex = 2;
            // 
            // btnClick
            // 
            btnClick.Location = new Point(164, 259);
            btnClick.Name = "btnClick";
            btnClick.Size = new Size(100, 23);
            btnClick.TabIndex = 3;
            btnClick.Text = "Click!";
            btnClick.UseVisualStyleBackColor = true;
            btnClick.Click += btnClick_Click;
            // 
            // statusStrip1
            // 
            statusStrip1.Items.AddRange(new ToolStripItem[] { toolStripStatusLabel1, toolStripStatusLabel2, statusHora });
            statusStrip1.Location = new Point(0, 364);
            statusStrip1.Name = "statusStrip1";
            statusStrip1.Size = new Size(441, 22);
            statusStrip1.TabIndex = 4;
            statusStrip1.Text = "statusStrip1";
            // 
            // toolStripStatusLabel1
            // 
            toolStripStatusLabel1.Name = "toolStripStatusLabel1";
            toolStripStatusLabel1.Size = new Size(128, 17);
            toolStripStatusLabel1.Text = "Bem Vindo ao Sistema!";
            // 
            // toolStripStatusLabel2
            // 
            toolStripStatusLabel2.Name = "toolStripStatusLabel2";
            toolStripStatusLabel2.Size = new Size(91, 17);
            toolStripStatusLabel2.Text = "Felipe Francisco";
            // 
            // statusHora
            // 
            statusHora.Name = "statusHora";
            statusHora.Size = new Size(40, 17);
            statusHora.Text = "HORA";
            // 
            // timer1
            // 
            timer1.Enabled = true;
            timer1.Tick += timer1_Tick;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(441, 386);
            Controls.Add(statusStrip1);
            Controls.Add(btnClick);
            Controls.Add(txtNome);
            Controls.Add(lblTeste);
            Controls.Add(btnTeste);
            Name = "Form1";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Form1";
            statusStrip1.ResumeLayout(false);
            statusStrip1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button btnTeste;
        private Label lblTeste;
        private TextBox txtNome;
        private Button btnClick;
        private StatusStrip statusStrip1;
        private ToolStripStatusLabel toolStripStatusLabel1;
        private ToolStripStatusLabel toolStripStatusLabel2;
        private ToolStripStatusLabel statusHora;
        private System.Windows.Forms.Timer timer1;
    }
}