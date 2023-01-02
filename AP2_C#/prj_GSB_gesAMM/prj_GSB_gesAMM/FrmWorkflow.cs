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
    public partial class FrmWorkflow : Form
    {
        public FrmWorkflow()
        {
            InitializeComponent();
        }

        private void FrmWorkflow_Load(object sender, EventArgs e)
        {
            foreach (string Depot in Globale.lesMedicaments.Keys)
            {
                cbMedic.Items.Add(Globale.lesMedicaments[Depot].getNom());
            }
            gbDecis.Enabled = false;
            lvWorkflow.Enabled = true;
        }

        private void cbMedic_SelectedIndexChanged(object sender, EventArgs e)
        {
            lvWorkflow.Items.Clear();
            gbDecis.Enabled = false;
            btnValid.Enabled = true;
            string depotLegal = "";
            bool trouv = false;
            while (!trouv)
            {
                foreach(string Depot in Globale.lesMedicaments.Keys)
                {
                    if (Globale.lesMedicaments[Depot].getNom() == cbMedic.Text)
                    {
                        trouv = true;
                        depotLegal = Depot;
                    }
                }
            }
            foreach (Workflow workflow in Globale.lesMedicaments[depotLegal].getWorkflow())
            {
                ListViewItem ligne = new ListViewItem(workflow.getNumeroEtape().ToString());
                ligne.SubItems.Add(Globale.lesEtapes[workflow.getNumeroEtape()].getLibelle());
                ligne.SubItems.Add(workflow.getDate().Date.ToString());
                ligne.SubItems.Add(Globale.lesDecisions[workflow.getDecisionId()].getLibelle());
                ligne.SubItems.Add(Globale.lesEtapes[workflow.getNumeroEtape()].getNorme());
                ligne.SubItems.Add(Globale.lesEtapes[workflow.getNumeroEtape()].getDateNorme().Date.ToString());

                lvWorkflow.Items.Add(ligne);
            }
            
        }

        private void lvWorkflow_SelectedIndexChanged(object sender, EventArgs e)
        {
            gbDecis.Enabled = true;
        }

        private void rbRefu_CheckedChanged(object sender, EventArgs e)
        {
            rbAccept.Checked = false;
            btnValid.Enabled = true;
        }

        private void rbAccept_CheckedChanged(object sender, EventArgs e)
        {
            rbRefu.Checked = false;
            btnValid.Enabled = true;
        }

        private void btnValid_Click(object sender, EventArgs e)
        {
            string depotLegal = "";
            bool trouv = false;
            while (!trouv)
            {
                foreach (string Depot in Globale.lesMedicaments.Keys)
                {
                    if (Globale.lesMedicaments[Depot].getNom() == cbMedic.Text)
                    {
                        trouv = true;
                        depotLegal = Depot;
                    }
                }
            }
            Workflow etape = Globale.lesMedicaments[depotLegal].getWorkflow()[lvWorkflow.SelectedIndices[0]];
            Console.WriteLine(etape.getNumeroEtape());
            if (rbRefu.Checked)
            {
                Bdd.UpdateDecis(1, lvWorkflow.SelectedIndices[0], depotLegal);
                MessageBox.Show("étape refusée");
            }
            if (rbAccept.Checked)
            {
                Bdd.UpdateDecis(2, lvWorkflow.SelectedIndices[0]+1, depotLegal);
                MessageBox.Show("étape validée");
                if (Globale.lesMedicaments[depotLegal].getWorkflow().Count() < 8)
                {
                    Bdd.AjoutWorkflow(depotLegal);
                }
            }
            this.Close();
        }

        private void btnQuitter_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
