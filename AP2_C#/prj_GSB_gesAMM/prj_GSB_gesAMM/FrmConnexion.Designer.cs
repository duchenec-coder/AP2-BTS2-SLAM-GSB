namespace prj_GSB_gesAMM
{
    partial class FrmConnexion
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmConnexion));
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.BtnValid = new System.Windows.Forms.Button();
            this.BtnQuitter = new System.Windows.Forms.Button();
            this.LbIdetifiant = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.TbMdp = new System.Windows.Forms.TextBox();
            this.TbIdentifiant = new System.Windows.Forms.TextBox();
            this.btnMedValid = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(218, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(339, 217);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // BtnValid
            // 
            this.BtnValid.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.BtnValid.FlatAppearance.BorderSize = 5;
            this.BtnValid.FlatAppearance.MouseDownBackColor = System.Drawing.Color.White;
            this.BtnValid.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.BtnValid.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnValid.Location = new System.Drawing.Point(446, 365);
            this.BtnValid.Name = "BtnValid";
            this.BtnValid.Size = new System.Drawing.Size(111, 53);
            this.BtnValid.TabIndex = 1;
            this.BtnValid.Text = "Connexion";
            this.BtnValid.UseVisualStyleBackColor = true;
            this.BtnValid.Click += new System.EventHandler(this.BtnValid_Click);
            // 
            // BtnQuitter
            // 
            this.BtnQuitter.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.BtnQuitter.FlatAppearance.BorderSize = 5;
            this.BtnQuitter.FlatAppearance.MouseDownBackColor = System.Drawing.Color.White;
            this.BtnQuitter.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.BtnQuitter.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnQuitter.Location = new System.Drawing.Point(207, 365);
            this.BtnQuitter.Name = "BtnQuitter";
            this.BtnQuitter.Size = new System.Drawing.Size(105, 53);
            this.BtnQuitter.TabIndex = 2;
            this.BtnQuitter.Text = "Quitter";
            this.BtnQuitter.UseVisualStyleBackColor = true;
            this.BtnQuitter.Click += new System.EventHandler(this.BtnQuitter_Click);
            // 
            // LbIdetifiant
            // 
            this.LbIdetifiant.AutoSize = true;
            this.LbIdetifiant.Location = new System.Drawing.Point(207, 266);
            this.LbIdetifiant.Name = "LbIdetifiant";
            this.LbIdetifiant.Size = new System.Drawing.Size(84, 20);
            this.LbIdetifiant.TabIndex = 3;
            this.LbIdetifiant.Text = "Identifiant :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(207, 315);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(105, 20);
            this.label2.TabIndex = 4;
            this.label2.Text = "Mot de passe :";
            // 
            // TbMdp
            // 
            this.TbMdp.Location = new System.Drawing.Point(348, 312);
            this.TbMdp.Name = "TbMdp";
            this.TbMdp.Size = new System.Drawing.Size(209, 27);
            this.TbMdp.TabIndex = 5;
            // 
            // TbIdentifiant
            // 
            this.TbIdentifiant.Location = new System.Drawing.Point(348, 263);
            this.TbIdentifiant.Name = "TbIdentifiant";
            this.TbIdentifiant.Size = new System.Drawing.Size(209, 27);
            this.TbIdentifiant.TabIndex = 6;
            // 
            // btnMedValid
            // 
            this.btnMedValid.Location = new System.Drawing.Point(747, 67);
            this.btnMedValid.Name = "btnMedValid";
            this.btnMedValid.Size = new System.Drawing.Size(154, 38);
            this.btnMedValid.TabIndex = 7;
            this.btnMedValid.Text = "med validation";
            this.btnMedValid.UseVisualStyleBackColor = true;
            this.btnMedValid.Click += new System.EventHandler(this.btnMedValid_Click);
            // 
            // FrmConnexion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1201, 450);
            this.Controls.Add(this.btnMedValid);
            this.Controls.Add(this.TbIdentifiant);
            this.Controls.Add(this.TbMdp);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.LbIdetifiant);
            this.Controls.Add(this.BtnQuitter);
            this.Controls.Add(this.BtnValid);
            this.Controls.Add(this.pictureBox1);
            this.Name = "FrmConnexion";
            this.Text = "GSB gesAMM - Connexion";
            this.Load += new System.EventHandler(this.FrmConnexion_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private PictureBox pictureBox1;
        private Button BtnValid;
        private Button BtnQuitter;
        private Label LbIdetifiant;
        private Label label2;
        private TextBox TbMdp;
        private TextBox TbIdentifiant;
        private Button btnMedValid;
    }
}