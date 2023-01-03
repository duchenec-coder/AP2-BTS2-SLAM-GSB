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
            this.label1 = new System.Windows.Forms.Label();
            this.gbDecis = new System.Windows.Forms.GroupBox();
            this.btnValid = new System.Windows.Forms.Button();
            this.rbAccept = new System.Windows.Forms.RadioButton();
            this.rbRefu = new System.Windows.Forms.RadioButton();
            this.btnQuitter = new System.Windows.Forms.Button();
            this.gbDecis.SuspendLayout();
            this.SuspendLayout();
            // 
            // cbMedic
            // 
            this.cbMedic.FormattingEnabled = true;
            this.cbMedic.Location = new System.Drawing.Point(1023, 48);
            this.cbMedic.Name = "cbMedic";
            this.cbMedic.Size = new System.Drawing.Size(258, 28);
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
            this.lvWorkflow.Size = new System.Drawing.Size(979, 346);
            this.lvWorkflow.TabIndex = 1;
            this.lvWorkflow.UseCompatibleStateImageBehavior = false;
            this.lvWorkflow.View = System.Windows.Forms.View.Details;
            this.lvWorkflow.SelectedIndexChanged += new System.EventHandler(this.lvWorkflow_SelectedIndexChanged);
            // 
            // NumEtap
            // 
            this.NumEtap.Text = "Étape";
            // 
            // LibEtap
            // 
            this.LibEtap.Text = "Libellé";
            this.LibEtap.Width = 300;
            // 
            // DateDeci
            // 
            this.DateDeci.Text = "Date de décision";
            this.DateDeci.Width = 150;
            // 
            // LibDeci
            // 
            this.LibDeci.Text = "Décision";
            this.LibDeci.Width = 100;
            // 
            // Norm
            // 
            this.Norm.Text = "Norme";
            this.Norm.Width = 200;
            // 
            // DateNorm
            // 
            this.DateNorm.Text = "Date de norme";
            this.DateNorm.Width = 150;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(1023, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(99, 20);
            this.label1.TabIndex = 2;
            this.label1.Text = "Médicament :";
            // 
            // gbDecis
            // 
            this.gbDecis.Controls.Add(this.btnValid);
            this.gbDecis.Controls.Add(this.rbAccept);
            this.gbDecis.Controls.Add(this.rbRefu);
            this.gbDecis.Location = new System.Drawing.Point(1023, 136);
            this.gbDecis.Name = "gbDecis";
            this.gbDecis.Size = new System.Drawing.Size(283, 141);
            this.gbDecis.TabIndex = 3;
            this.gbDecis.TabStop = false;
            this.gbDecis.Text = "Décision";
            // 
            // btnValid
            // 
            this.btnValid.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.btnValid.FlatAppearance.BorderSize = 5;
            this.btnValid.FlatAppearance.MouseDownBackColor = System.Drawing.Color.White;
            this.btnValid.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.btnValid.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnValid.Location = new System.Drawing.Point(158, 74);
            this.btnValid.Name = "btnValid";
            this.btnValid.Size = new System.Drawing.Size(111, 53);
            this.btnValid.TabIndex = 4;
            this.btnValid.Text = "Valider";
            this.btnValid.UseVisualStyleBackColor = true;
            this.btnValid.Click += new System.EventHandler(this.btnValid_Click);
            // 
            // rbAccept
            // 
            this.rbAccept.AutoSize = true;
            this.rbAccept.Location = new System.Drawing.Point(22, 72);
            this.rbAccept.Name = "rbAccept";
            this.rbAccept.Size = new System.Drawing.Size(92, 24);
            this.rbAccept.TabIndex = 1;
            this.rbAccept.TabStop = true;
            this.rbAccept.Text = "Acceptée";
            this.rbAccept.UseVisualStyleBackColor = true;
            this.rbAccept.CheckedChanged += new System.EventHandler(this.rbAccept_CheckedChanged);
            // 
            // rbRefu
            // 
            this.rbRefu.AutoSize = true;
            this.rbRefu.Location = new System.Drawing.Point(22, 42);
            this.rbRefu.Name = "rbRefu";
            this.rbRefu.Size = new System.Drawing.Size(82, 24);
            this.rbRefu.TabIndex = 0;
            this.rbRefu.TabStop = true;
            this.rbRefu.Text = "Refusée";
            this.rbRefu.UseVisualStyleBackColor = true;
            this.rbRefu.CheckedChanged += new System.EventHandler(this.rbRefu_CheckedChanged);
            // 
            // btnQuitter
            // 
            this.btnQuitter.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.btnQuitter.FlatAppearance.BorderSize = 5;
            this.btnQuitter.FlatAppearance.MouseDownBackColor = System.Drawing.Color.White;
            this.btnQuitter.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.btnQuitter.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnQuitter.Location = new System.Drawing.Point(1045, 305);
            this.btnQuitter.Name = "btnQuitter";
            this.btnQuitter.Size = new System.Drawing.Size(111, 53);
            this.btnQuitter.TabIndex = 5;
            this.btnQuitter.Text = "Quitter";
            this.btnQuitter.UseVisualStyleBackColor = true;
            this.btnQuitter.Click += new System.EventHandler(this.btnQuitter_Click);
            // 
            // FrmWorkflow
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1347, 450);
            this.Controls.Add(this.btnQuitter);
            this.Controls.Add(this.gbDecis);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lvWorkflow);
            this.Controls.Add(this.cbMedic);
            this.Name = "FrmWorkflow";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.FrmWorkflow_Load);
            this.gbDecis.ResumeLayout(false);
            this.gbDecis.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

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
        private Label label1;
        private GroupBox gbDecis;
        private RadioButton rbAccept;
        private RadioButton rbRefu;
        private Button btnValid;
        private Button btnQuitter;
    }
}