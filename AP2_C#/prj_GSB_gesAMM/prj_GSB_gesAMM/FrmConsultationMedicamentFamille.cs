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
            Globale.cnx = new System.Data.SqlClient.SqlConnection();
            Globale.cnx.ConnectionString = "Data Source=BTS2021-08\\SQLEXPRESS;Initial Catalog=GSB_gesAMM;Integrated Security=True;MultipleActiveResultSets=True";
            Globale.cnx.Open();
            btn_Valider.Enabled = false;
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
            Dictionary<string,Famille>.KeyCollection lesMedics=Globale.lesFamilles.Keys;
            foreach (string libelle in lesMedics) 
            {
                    Famille laFamille = Globale.lesFamilles[libelle];
                    if (laFamille.getLibelle() == tbFamille.Text)
                    {
                    
                        ListViewItem ligne = new ListViewItem();

                    ligne.Text = laFamille.getCode(); ;
                        ligne.SubItems.Add(laFamille.getLibelle());
                        ligne.SubItems.Add(laFamille.getnbMediAmm().ToString()) ;
                        lvMedicament.Items.Add(ligne);
                    }
                }
            }
        }
    }

