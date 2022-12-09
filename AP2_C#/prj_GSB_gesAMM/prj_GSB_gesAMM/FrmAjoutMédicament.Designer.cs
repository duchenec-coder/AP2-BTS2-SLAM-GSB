namespace prj_GSB_gesAMM
{
    partial class FrmAjoutMédicament
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
            this.tb_depot = new System.Windows.Forms.TextBox();
            this.tb_Amm = new System.Windows.Forms.TextBox();
            this.tb_Effets = new System.Windows.Forms.TextBox();
            this.tb_Commercial = new System.Windows.Forms.TextBox();
            this.tb_Etape = new System.Windows.Forms.TextBox();
            this.tb_CI = new System.Windows.Forms.TextBox();
            this.tb_Compo = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.cb_Famille = new System.Windows.Forms.ComboBox();
            this.btn_Insérer = new System.Windows.Forms.Button();
            this.btn_Accueil = new System.Windows.Forms.Button();
            this.btn_Annuler = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // linkLabel1
            // 
            this.linkLabel1.AutoSize = true;
            this.linkLabel1.LinkColor = System.Drawing.Color.Red;
            this.linkLabel1.Location = new System.Drawing.Point(335, 38);
            this.linkLabel1.Name = "linkLabel1";
            this.linkLabel1.Size = new System.Drawing.Size(222, 20);
            this.linkLabel1.TabIndex = 0;
            this.linkLabel1.TabStop = true;
            this.linkLabel1.Text = "Veuillez saisir votre médicament";
            // 
            // tb_depot
            // 
            this.tb_depot.Location = new System.Drawing.Point(176, 88);
            this.tb_depot.Name = "tb_depot";
            this.tb_depot.Size = new System.Drawing.Size(206, 27);
            this.tb_depot.TabIndex = 1;
            this.tb_depot.TextChanged += new System.EventHandler(this.tb_depot_TextChanged);
            // 
            // tb_Amm
            // 
            this.tb_Amm.Location = new System.Drawing.Point(550, 232);
            this.tb_Amm.Name = "tb_Amm";
            this.tb_Amm.Size = new System.Drawing.Size(232, 27);
            this.tb_Amm.TabIndex = 3;
            this.tb_Amm.TextChanged += new System.EventHandler(this.tb_Amm_TextChanged);
            // 
            // tb_Effets
            // 
            this.tb_Effets.Location = new System.Drawing.Point(550, 154);
            this.tb_Effets.Name = "tb_Effets";
            this.tb_Effets.Size = new System.Drawing.Size(232, 27);
            this.tb_Effets.TabIndex = 4;
            // 
            // tb_Commercial
            // 
            this.tb_Commercial.Location = new System.Drawing.Point(550, 91);
            this.tb_Commercial.Name = "tb_Commercial";
            this.tb_Commercial.Size = new System.Drawing.Size(232, 27);
            this.tb_Commercial.TabIndex = 5;
            // 
            // tb_Etape
            // 
            this.tb_Etape.Location = new System.Drawing.Point(176, 312);
            this.tb_Etape.Name = "tb_Etape";
            this.tb_Etape.Size = new System.Drawing.Size(206, 27);
            this.tb_Etape.TabIndex = 6;
            this.tb_Etape.TextChanged += new System.EventHandler(this.tb_Etape_TextChanged);
            // 
            // tb_CI
            // 
            this.tb_CI.Location = new System.Drawing.Point(176, 228);
            this.tb_CI.Name = "tb_CI";
            this.tb_CI.Size = new System.Drawing.Size(206, 27);
            this.tb_CI.TabIndex = 7;
            // 
            // tb_Compo
            // 
            this.tb_Compo.Location = new System.Drawing.Point(176, 154);
            this.tb_Compo.Name = "tb_Compo";
            this.tb_Compo.Size = new System.Drawing.Size(206, 27);
            this.tb_Compo.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(68, 91);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(91, 20);
            this.label1.TabIndex = 9;
            this.label1.Text = "Depot légal:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(452, 95);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(92, 20);
            this.label2.TabIndex = 10;
            this.label2.Text = "Commercial:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(79, 161);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(97, 20);
            this.label3.TabIndex = 11;
            this.label3.Text = "Composition:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(38, 235);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(132, 20);
            this.label5.TabIndex = 13;
            this.label5.Text = "Contre Indications:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(483, 327);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(59, 20);
            this.label6.TabIndex = 14;
            this.label6.Text = "Famille:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(494, 239);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(48, 20);
            this.label7.TabIndex = 15;
            this.label7.Text = "Amm:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(494, 161);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(49, 20);
            this.label8.TabIndex = 16;
            this.label8.Text = "Effets:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(65, 319);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(111, 20);
            this.label9.TabIndex = 17;
            this.label9.Text = "Derniére étape:";
            // 
            // cb_Famille
            // 
            this.cb_Famille.FormattingEnabled = true;
            this.cb_Famille.Location = new System.Drawing.Point(550, 319);
            this.cb_Famille.Name = "cb_Famille";
            this.cb_Famille.Size = new System.Drawing.Size(151, 28);
            this.cb_Famille.TabIndex = 18;
            this.cb_Famille.SelectedIndexChanged += new System.EventHandler(this.cb_Famille_SelectedIndexChanged);
            // 
            // btn_Insérer
            // 
            this.btn_Insérer.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.btn_Insérer.Location = new System.Drawing.Point(65, 424);
            this.btn_Insérer.Name = "btn_Insérer";
            this.btn_Insérer.Size = new System.Drawing.Size(145, 87);
            this.btn_Insérer.TabIndex = 19;
            this.btn_Insérer.Text = "Insérer";
            this.btn_Insérer.UseVisualStyleBackColor = false;
            // 
            // btn_Accueil
            // 
            this.btn_Accueil.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btn_Accueil.Location = new System.Drawing.Point(649, 424);
            this.btn_Accueil.Name = "btn_Accueil";
            this.btn_Accueil.Size = new System.Drawing.Size(145, 87);
            this.btn_Accueil.TabIndex = 20;
            this.btn_Accueil.Text = "Retour";
            this.btn_Accueil.UseVisualStyleBackColor = false;
            this.btn_Accueil.Click += new System.EventHandler(this.btn_Accueil_Click);
            // 
            // btn_Annuler
            // 
            this.btn_Annuler.BackColor = System.Drawing.Color.Red;
            this.btn_Annuler.Location = new System.Drawing.Point(362, 424);
            this.btn_Annuler.Name = "btn_Annuler";
            this.btn_Annuler.Size = new System.Drawing.Size(145, 87);
            this.btn_Annuler.TabIndex = 21;
            this.btn_Annuler.Text = "Annuler";
            this.btn_Annuler.UseVisualStyleBackColor = false;
            this.btn_Annuler.Click += new System.EventHandler(this.btn_Annuler_Click);
            // 
            // FrmAjoutMédicament
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(908, 573);
            this.Controls.Add(this.btn_Annuler);
            this.Controls.Add(this.btn_Accueil);
            this.Controls.Add(this.btn_Insérer);
            this.Controls.Add(this.cb_Famille);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tb_Compo);
            this.Controls.Add(this.tb_CI);
            this.Controls.Add(this.tb_Etape);
            this.Controls.Add(this.tb_Commercial);
            this.Controls.Add(this.tb_Effets);
            this.Controls.Add(this.tb_Amm);
            this.Controls.Add(this.tb_depot);
            this.Controls.Add(this.linkLabel1);
            this.Name = "FrmAjoutMédicament";
            this.Text = "FrmAjoutMédicament";
            this.Load += new System.EventHandler(this.FrmAjoutMédicament_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private LinkLabel linkLabel1;
        private TextBox tb_depot;
        private TextBox tb_Amm;
        private TextBox tb_Effets;
        private TextBox tb_Commercial;
        private TextBox tb_Etape;
        private TextBox tb_CI;
        private TextBox tb_Compo;
        private Label label1;
        private Label label2;
        private Label label3;
        private Label label5;
        private Label label6;
        private Label label7;
        private Label label8;
        private Label label9;
        private ComboBox cb_Famille;
        private Button btn_Insérer;
        private Button btn_Accueil;
        private Button btn_Annuler;
    }
}