namespace prj_GSB_gesAMM
{
    partial class FrmMenu
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.medicamentsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tousToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.enCoursDeDécisionToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.validésToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.refusésToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.workflowToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.medicamentsToolStripMenuItem,
            this.workflowToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 28);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // medicamentsToolStripMenuItem
            // 
            this.medicamentsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tousToolStripMenuItem1,
            this.enCoursDeDécisionToolStripMenuItem1,
            this.validésToolStripMenuItem1,
            this.refusésToolStripMenuItem1});
            this.medicamentsToolStripMenuItem.Name = "medicamentsToolStripMenuItem";
            this.medicamentsToolStripMenuItem.Size = new System.Drawing.Size(112, 24);
            this.medicamentsToolStripMenuItem.Text = "Medicaments";
            // 
            // tousToolStripMenuItem1
            // 
            this.tousToolStripMenuItem1.Name = "tousToolStripMenuItem1";
            this.tousToolStripMenuItem1.Size = new System.Drawing.Size(227, 26);
            this.tousToolStripMenuItem1.Text = "Tous";
            // 
            // enCoursDeDécisionToolStripMenuItem1
            // 
            this.enCoursDeDécisionToolStripMenuItem1.Name = "enCoursDeDécisionToolStripMenuItem1";
            this.enCoursDeDécisionToolStripMenuItem1.Size = new System.Drawing.Size(227, 26);
            this.enCoursDeDécisionToolStripMenuItem1.Text = "En cours de décision";
            // 
            // validésToolStripMenuItem1
            // 
            this.validésToolStripMenuItem1.Name = "validésToolStripMenuItem1";
            this.validésToolStripMenuItem1.Size = new System.Drawing.Size(227, 26);
            this.validésToolStripMenuItem1.Text = "Validés";
            // 
            // refusésToolStripMenuItem1
            // 
            this.refusésToolStripMenuItem1.Name = "refusésToolStripMenuItem1";
            this.refusésToolStripMenuItem1.Size = new System.Drawing.Size(227, 26);
            this.refusésToolStripMenuItem1.Text = "Refusés";
            // 
            // workflowToolStripMenuItem
            // 
            this.workflowToolStripMenuItem.Name = "workflowToolStripMenuItem";
            this.workflowToolStripMenuItem.Size = new System.Drawing.Size(86, 24);
            this.workflowToolStripMenuItem.Text = "Workflow";
            this.workflowToolStripMenuItem.Click += new System.EventHandler(this.workflowToolStripMenuItem_Click);
            // 
            // FrmMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.menuStrip1);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FrmMenu";
            this.Text = "Form1";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.FrmMenu_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MenuStrip menuStrip1;
        private ToolStripMenuItem medicamentsToolStripMenuItem;
        private ToolStripMenuItem tousToolStripMenuItem1;
        private ToolStripMenuItem enCoursDeDécisionToolStripMenuItem1;
        private ToolStripMenuItem validésToolStripMenuItem1;
        private ToolStripMenuItem refusésToolStripMenuItem1;
        private ToolStripMenuItem workflowToolStripMenuItem;
    }
}