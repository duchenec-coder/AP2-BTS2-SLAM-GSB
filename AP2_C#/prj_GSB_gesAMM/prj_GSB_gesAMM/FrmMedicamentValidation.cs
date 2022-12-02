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
            Bdd.getMedicaments();
            Dictionary<string, Medicament> med = Globale.lesMedicaments;
            foreach (string key in Globale.lesMedicaments.Keys){
                if (med[key].getAMM() == "")
                {
                    ListViewItem ligne = new ListViewItem();
                    ligne.Text = med[key].getDepotLegal();
                    ligne.SubItems.Add(med[key].getNom());
                    ligne.SubItems.Add(med[key].getCodeFamille());
                    
                    lvMedicamentValidation.Items.Add(ligne);
                }
                

            }
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}
