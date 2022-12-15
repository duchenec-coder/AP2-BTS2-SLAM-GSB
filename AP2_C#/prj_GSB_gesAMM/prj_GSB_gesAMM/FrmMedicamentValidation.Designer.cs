namespace prj_GSB_gesAMM
{
    partial class FrmMedicamentValidation
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
            this.lvMedicamentValidation = new System.Windows.Forms.ListView();
            this.columnHeader1 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader2 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader3 = new System.Windows.Forms.ColumnHeader();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lvWorkflow = new System.Windows.Forms.ListView();
            this.columnHeader4 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader7 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader8 = new System.Windows.Forms.ColumnHeader();
            this.SuspendLayout();
            // 
            // lvMedicamentValidation
            // 
            this.lvMedicamentValidation.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3});
            this.lvMedicamentValidation.Location = new System.Drawing.Point(60, 56);
            this.lvMedicamentValidation.Name = "lvMedicamentValidation";
            this.lvMedicamentValidation.Size = new System.Drawing.Size(583, 339);
            this.lvMedicamentValidation.TabIndex = 0;
            this.lvMedicamentValidation.UseCompatibleStateImageBehavior = false;
            this.lvMedicamentValidation.View = System.Windows.Forms.View.Details;
            this.lvMedicamentValidation.SelectedIndexChanged += new System.EventHandler(this.lvMedicamentValidation_SelectedIndexChanged);
            this.lvMedicamentValidation.Click += new System.EventHandler(this.lvMedicamentValidation_Click);
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Dépot Légal";
            this.columnHeader1.Width = 100;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Nom";
            this.columnHeader2.Width = 175;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Famille";
            this.columnHeader3.Width = 300;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(288, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(112, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "MÉDICAMENTS";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(952, 29);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(90, 20);
            this.label2.TabIndex = 2;
            this.label2.Text = "WORKFLOW";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // lvWorkflow
            // 
            this.lvWorkflow.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader4,
            this.columnHeader7,
            this.columnHeader8});
            this.lvWorkflow.Location = new System.Drawing.Point(755, 56);
            this.lvWorkflow.Name = "lvWorkflow";
            this.lvWorkflow.Size = new System.Drawing.Size(487, 339);
            this.lvWorkflow.TabIndex = 3;
            this.lvWorkflow.UseCompatibleStateImageBehavior = false;
            this.lvWorkflow.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "Décision";
            this.columnHeader4.Width = 100;
            // 
            // columnHeader7
            // 
            this.columnHeader7.Text = "Etape";
            this.columnHeader7.Width = 250;
            // 
            // columnHeader8
            // 
            this.columnHeader8.Text = "Date";
            this.columnHeader8.Width = 130;
            // 
            // FrmMedicamentValidation
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1323, 450);
            this.Controls.Add(this.lvWorkflow);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lvMedicamentValidation);
            this.Name = "FrmMedicamentValidation";
            this.Text = "FrmMedicamentValidation";
            this.Load += new System.EventHandler(this.FrmMedicamentValidation_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private ListView lvMedicamentValidation;
        private ColumnHeader columnHeader1;
        private ColumnHeader columnHeader2;
        private ColumnHeader columnHeader3;
        private Label label1;
        private Label label2;
        private ListView lvWorkflow;
        private ColumnHeader columnHeader4;
        private ColumnHeader columnHeader7;
        private ColumnHeader columnHeader8;
    }
}