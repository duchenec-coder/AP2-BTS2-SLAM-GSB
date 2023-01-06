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
    public partial class FrmMedicamentValidation : Form
    {
        public FrmMedicamentValidation()
        {
            InitializeComponent();
        }

        private void FrmMedicamentValidation_Load(object sender, EventArgs e)
        {
            Bdd.getDecision();
            Bdd.getEtape();
            Bdd.getFamille();
            Bdd.getMedicaments();
            Bdd.getWorkflow();
            Dictionary<string, Medicament> med = Globale.lesMedicaments;
            foreach (string key in Globale.lesMedicaments.Keys){
                if (med[key].getAMM() == "" || med[key].getAMM() == "0")
                {
                    string fam = med[key].getCodeFamille();
                    ListViewItem ligne = new ListViewItem();
                    ligne.Text = med[key].getDepotLegal();
                    ligne.SubItems.Add(med[key].getNom());
                    ligne.SubItems.Add(Globale.lesFamilles[fam].getLibelle());
                    
                    lvMedicamentValidation.Items.Add(ligne);
                }
                

            }
        }

        private void label2_Click(object sender, EventArgs e)
        {
            
        }

        private void lvMedicamentValidation_Click(object sender, EventArgs e)
        {
            
        }

        private void lvMedicamentValidation_SelectedIndexChanged(object sender, EventArgs e)
        {
            lvWorkflow.Items.Clear();
            try { 
                string med = lvMedicamentValidation.SelectedItems[0].Text;
                foreach (Workflow etape in Globale.lesMedicaments[med].getWorkflow())
                {
                    int lEtape = etape.getNumeroEtape();
                    ListViewItem ligne = new ListViewItem();
                    ligne.Text = Globale.lesDecisions[etape.getDecisionId()].getLibelle().ToString();
                    ligne.SubItems.Add(Globale.lesEtapes[lEtape].getLibelle());
                    ligne.SubItems.Add(etape.getDate().ToShortDateString());

                    lvWorkflow.Items.Add(ligne);
                }
            }
            catch { } 
        }

        private void btnQuitter_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
