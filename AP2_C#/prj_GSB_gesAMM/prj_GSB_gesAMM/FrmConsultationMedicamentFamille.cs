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
    public partial class FrmConsultationMedicamentFamille : Form
    {
        public FrmConsultationMedicamentFamille()
        {
            InitializeComponent();
        }

        private void FrmConsultationMedicamentFamille_Load(object sender, EventArgs e)
        {
            btn_Valider.Enabled = true;
        }

        private void tbFamille_TextChanged(object sender, EventArgs e)
        {
            if (tbFamille.Text != "")
            {
                btn_Valider.Enabled=true;
            }
        }

        private void btn_Valider_Click(object sender, EventArgs e)
        {
            lvMedicament.Items.Clear();
            foreach (string codeFam in Globale.lesFamilles.Keys) 
            {
                ListViewItem ligne = new ListViewItem();

                ligne.Text = Globale.lesFamilles[codeFam].getFamCode();
                ligne.SubItems.Add(Globale.lesFamilles[codeFam].getLibelle());
                ligne.SubItems.Add(Globale.lesFamilles[codeFam].getnbMediAmm().ToString());
                lvMedicament.Items.Add(ligne);
            }
        }
    }
}