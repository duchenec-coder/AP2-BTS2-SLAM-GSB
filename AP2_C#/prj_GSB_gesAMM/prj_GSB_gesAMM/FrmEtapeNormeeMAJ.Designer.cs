namespace prj_GSB_gesAMM
{
    partial class FrmEtapeNormeeMAJ
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.cbEtapeNormee = new System.Windows.Forms.ComboBox();
            this.tbNorme = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dtpNorme = new System.Windows.Forms.DateTimePicker();
            this.btnNormeMAJ = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // cbEtapeNormee
            // 
            this.cbEtapeNormee.FormattingEnabled = true;
            this.cbEtapeNormee.Location = new System.Drawing.Point(12, 70);
            this.cbEtapeNormee.Name = "cbEtapeNormee";
            this.cbEtapeNormee.Size = new System.Drawing.Size(352, 28);
            this.cbEtapeNormee.TabIndex = 0;
            this.cbEtapeNormee.SelectedIndexChanged += new System.EventHandler(this.cbEtapeNormee_SelectedIndexChanged);
            // 
            // tbNorme
            // 
            this.tbNorme.Location = new System.Drawing.Point(409, 70);
            this.tbNorme.Name = "tbNorme";
            this.tbNorme.Size = new System.Drawing.Size(250, 27);
            this.tbNorme.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(130, 46);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(114, 20);
            this.label1.TabIndex = 4;
            this.label1.Text = "Étapes normées";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(498, 46);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 20);
            this.label2.TabIndex = 5;
            this.label2.Text = "Norme";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(466, 137);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(125, 20);
            this.label3.TabIndex = 6;
            this.label3.Text = "Date de la norme";
            // 
            // dtpNorme
            // 
            this.dtpNorme.Location = new System.Drawing.Point(409, 160);
            this.dtpNorme.Name = "dtpNorme";
            this.dtpNorme.Size = new System.Drawing.Size(250, 27);
            this.dtpNorme.TabIndex = 7;
            // 
            // btnNormeMAJ
            // 
            this.btnNormeMAJ.Location = new System.Drawing.Point(130, 138);
            this.btnNormeMAJ.Name = "btnNormeMAJ";
            this.btnNormeMAJ.Size = new System.Drawing.Size(141, 49);
            this.btnNormeMAJ.TabIndex = 8;
            this.btnNormeMAJ.Text = "Mettre à jour";
            this.btnNormeMAJ.UseVisualStyleBackColor = true;
            this.btnNormeMAJ.Click += new System.EventHandler(this.btnNormeMAJ_Click);
            // 
            // FrmEtapeNormeeMAJ
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(694, 226);
            this.Controls.Add(this.btnNormeMAJ);
            this.Controls.Add(this.dtpNorme);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tbNorme);
            this.Controls.Add(this.cbEtapeNormee);
            this.Name = "FrmEtapeNormeeMAJ";
            this.Text = "FrmEtapeNormeeMAJ";
            this.Load += new System.EventHandler(this.FrmEtapeNormeeMAJ_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private ComboBox cbEtapeNormee;
        private TextBox tbNorme;
        private Label label1;
        private Label label2;
        private Label label3;
        private DateTimePicker dtpNorme;
        private Button btnNormeMAJ;
    }
}