namespace prj_GSB_gesAMM
{
    partial class FrmWorkflow
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
            this.cbMedic = new System.Windows.Forms.ComboBox();
            this.lvWorkflow = new System.Windows.Forms.ListView();
            this.NumEtap = new System.Windows.Forms.ColumnHeader();
            this.LibEtap = new System.Windows.Forms.ColumnHeader();
            this.DateDeci = new System.Windows.Forms.ColumnHeader();
            this.LibDeci = new System.Windows.Forms.ColumnHeader();
            this.Norm = new System.Windows.Forms.ColumnHeader();
            this.DateNorm = new System.Windows.Forms.ColumnHeader();
            this.SuspendLayout();
            // 
            // cbMedic
            // 
            this.cbMedic.FormattingEnabled = true;
            this.cbMedic.Location = new System.Drawing.Point(773, 28);
            this.cbMedic.Name = "cbMedic";
            this.cbMedic.Size = new System.Drawing.Size(151, 28);
            this.cbMedic.TabIndex = 0;
            this.cbMedic.SelectedIndexChanged += new System.EventHandler(this.cbMedic_SelectedIndexChanged);
            // 
            // lvWorkflow
            // 
            this.lvWorkflow.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.NumEtap,
            this.LibEtap,
            this.DateDeci,
            this.LibDeci,
            this.Norm,
            this.DateNorm});
            this.lvWorkflow.Location = new System.Drawing.Point(12, 12);
            this.lvWorkflow.Name = "lvWorkflow";
            this.lvWorkflow.Size = new System.Drawing.Size(696, 346);
            this.lvWorkflow.TabIndex = 1;
            this.lvWorkflow.UseCompatibleStateImageBehavior = false;
            this.lvWorkflow.View = System.Windows.Forms.View.Details;
            // 
            // NumEtap
            // 
            this.NumEtap.Text = "Étape";
            // 
            // LibEtap
            // 
            this.LibEtap.Text = "Libellé";
            // 
            // DateDeci
            // 
            this.DateDeci.Text = "Date de décision";
            // 
            // LibDeci
            // 
            this.LibDeci.Text = "Décision";
            // 
            // Norm
            // 
            this.Norm.Text = "Norme";
            // 
            // DateNorm
            // 
            this.DateNorm.Text = "Date de norme";
            // 
            // FrmWorkflow
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(996, 450);
            this.Controls.Add(this.lvWorkflow);
            this.Controls.Add(this.cbMedic);
            this.Name = "FrmWorkflow";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.FrmWorkflow_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private ComboBox cbMedic;
        private ListView lvWorkflow;
        private ColumnHeader NumEtap;
        private ColumnHeader LibEtap;
        private ColumnHeader DateDeci;
        private ColumnHeader LibDeci;
        private ColumnHeader Norm;
        private ColumnHeader DateNorm;
    }
}