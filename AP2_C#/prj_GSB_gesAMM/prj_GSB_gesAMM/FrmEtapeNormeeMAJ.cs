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
    public partial class FrmEtapeNormeeMAJ : Form
    {
        public FrmEtapeNormeeMAJ()
        {
            InitializeComponent();
            
        }

        private void reloadFrm()
        {
            Bdd.getEtape();
            tbNorme.Text = "";
            dtpNorme.Value = DateTime.Now; //datetime.minValue ne fonctionne pas
            cbEtapeNormee.Items.Clear();
            foreach (int key in Globale.lesEtapes.Keys)
            {
                if (Globale.lesEtapes[key].getNorme() != "")
                {
                    cbEtapeNormee.Items.Add(Globale.lesEtapes[key].getNum() + " " + Globale.lesEtapes[key].getLibelle());
                }
            }
            btnNormeMAJ.Enabled = false;
        }

        DateTime DateAvMaj;
        string NormeAvMaj;
        int EtapeNum;
        Utilisateur unutilisateur = new Utilisateur(1, "nom", "mdp");

        private void FrmEtapeNormeeMAJ_Load(object sender, EventArgs e)
        {
            reloadFrm(); 
        }

        private void cbEtapeNormee_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnNormeMAJ.Enabled = true;
            
            string s = cbEtapeNormee.SelectedItem.ToString();
            string[] subs = s.Split(' ');
            int norme = int.Parse(subs[0]);
            EtapeNum = norme;
            tbNorme.Text = Globale.lesEtapes[norme].getNorme();
            NormeAvMaj = Globale.lesEtapes[norme].getNorme();
            dtpNorme.Value = Globale.lesEtapes[norme].getDateNorme();
            DateAvMaj = Globale.lesEtapes[norme].getDateNorme();
        }

        private void btnNormeMAJ_Click(object sender, EventArgs e)
        {
            if(Bdd.updateEtapeNormee(dtpNorme.Value, tbNorme.Text, EtapeNum))
            {
                if (Bdd.inserHistorique(DateTime.Now, Globale.unutilisateur.getId(), EtapeNum, NormeAvMaj, tbNorme.Text, DateAvMaj, dtpNorme.Value))
                {
                    MessageBox.Show("changement réussi");
                    reloadFrm();
                }
            }
            else { MessageBox.Show("Echec de la modification"); }
        }
    }
}
