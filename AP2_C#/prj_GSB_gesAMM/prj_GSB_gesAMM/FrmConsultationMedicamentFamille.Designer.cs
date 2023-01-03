namespace prj_GSB_gesAMM
{
    partial class FrmConsultationMedicamentFamille
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
            this.linkLabel1 = new System.Windows.Forms.LinkLabel();
            this.label1 = new System.Windows.Forms.Label();
            this.lvMedicament = new System.Windows.Forms.ListView();
            this.columnHeader1 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader2 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader3 = new System.Windows.Forms.ColumnHeader();
            this.tbFamille = new System.Windows.Forms.TextBox();
            this.btn_Valider = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // linkLabel1
            // 
            this.linkLabel1.AutoSize = true;
            this.linkLabel1.LinkColor = System.Drawing.Color.Red;
            this.linkLabel1.Location = new System.Drawing.Point(264, 36);
            this.linkLabel1.Name = "linkLabel1";
            this.linkLabel1.Size = new System.Drawing.Size(287, 20);
            this.linkLabel1.TabIndex = 0;
            this.linkLabel1.TabStop = true;
            this.linkLabel1.Text = "Veuillez sélectionner le nom d\'une famille:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(264, 82);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 20);
            this.label1.TabIndex = 2;
            this.label1.Text = "Famille:";
            // 
            // lvMedicament
            // 
            this.lvMedicament.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3});
            this.lvMedicament.Location = new System.Drawing.Point(191, 134);
            this.lvMedicament.Name = "lvMedicament";
            this.lvMedicament.Size = new System.Drawing.Size(517, 340);
            this.lvMedicament.TabIndex = 3;
            this.lvMedicament.UseCompatibleStateImageBehavior = false;
            this.lvMedicament.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Code Famille";
            this.columnHeader1.Width = 160;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Designation";
            this.columnHeader2.Width = 160;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Nombre de  médicaments";
            this.columnHeader3.Width = 160;
            // 
            // tbFamille
            // 
            this.tbFamille.Location = new System.Drawing.Point(329, 82);
            this.tbFamille.Name = "tbFamille";
            this.tbFamille.Size = new System.Drawing.Size(163, 27);
            this.tbFamille.TabIndex = 4;
            this.tbFamille.TextChanged += new System.EventHandler(this.tbFamille_TextChanged);
            // 
            // btn_Valider
            // 
            this.btn_Valider.Location = new System.Drawing.Point(539, 72);
            this.btn_Valider.Name = "btn_Valider";
            this.btn_Valider.Size = new System.Drawing.Size(127, 46);
            this.btn_Valider.TabIndex = 5;
            this.btn_Valider.Text = "Valider";
            this.btn_Valider.UseVisualStyleBackColor = true;
            this.btn_Valider.Click += new System.EventHandler(this.btn_Valider_Click);
            // 
            // FrmConsultationMedicamentFamille
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(895, 542);
            this.Controls.Add(this.btn_Valider);
            this.Controls.Add(this.tbFamille);
            this.Controls.Add(this.lvMedicament);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.linkLabel1);
            this.Name = "FrmConsultationMedicamentFamille";
            this.Text = "FrmConsultationMedicamentFamille";
            this.Load += new System.EventHandler(this.FrmConsultationMedicamentFamille_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private LinkLabel linkLabel1;
        private Label label1;
        private ListView lvMedicament;
        private ColumnHeader columnHeader1;
        private ColumnHeader columnHeader2;
        private ColumnHeader columnHeader3;
        private TextBox tbFamille;
        private Button btn_Valider;
    }
}