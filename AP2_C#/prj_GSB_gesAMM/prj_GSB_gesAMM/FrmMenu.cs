using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace prj_GSB_gesAMM
{
    public partial class FrmMenu : Form
    {
        public FrmMenu()
        {
            InitializeComponent();
        }

        private void FrmMenu_Load(object sender, EventArgs e)
        {
            Bdd.getEtape();
            Bdd.getMedicaments();
            Bdd.getWorkflow();
            Bdd.getDecision();
            Bdd.getFamille();
        }
        private void workflowToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmWorkflow FrmWork = new FrmWorkflow();
            FrmWork.MdiParent = this;
            FrmWork.Show();
        }

        private void enCoursDeDécisionToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            FrmMedicamentValidation FrmMedicValid = new FrmMedicamentValidation();
            FrmMedicValid.MdiParent = this;
            FrmMedicValid.Show();
        }

        private void tousToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            FrmConsultationMedicamentFamille FrmMedicFamille = new FrmConsultationMedicamentFamille();
            FrmMedicFamille.MdiParent = this;
            FrmMedicFamille.Show();
        }

        private void ajouterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAjoutMédicament FrmAjoutMedic = new FrmAjoutMédicament();
            FrmAjoutMedic.MdiParent = this;
            FrmAjoutMedic.Show();
        }

        private void éToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmEtapeNormeeMAJ FrmMajEtapeNorme = new FrmEtapeNormeeMAJ();
            FrmMajEtapeNorme.MdiParent = this;
            FrmMajEtapeNorme.Show();
        }

        private void modifierLaNormeToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void FrmMenu_FormClosed(object sender, FormClosedEventArgs e)
        {
           Application.Exit();
        }
    }
}
