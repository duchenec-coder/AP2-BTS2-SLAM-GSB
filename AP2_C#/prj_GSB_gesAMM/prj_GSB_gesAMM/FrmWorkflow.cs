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
        }

        private void cbMedic_SelectedIndexChanged(object sender, EventArgs e)
        {
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
    }
}
