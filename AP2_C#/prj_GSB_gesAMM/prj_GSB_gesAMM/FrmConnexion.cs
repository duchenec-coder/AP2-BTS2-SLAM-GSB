namespace prj_GSB_gesAMM
{
    public partial class FrmConnexion : Form
    {
        public FrmConnexion()
        {
            InitializeComponent();
        }

        private void BtnQuitter_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BtnValid_Click(object sender, EventArgs e)
        {
            if (Globale.LesUtilisateurs.Keys.Contains(TbIdentifiant.Text))
            {
                if (Globale.LesUtilisateurs[TbIdentifiant.Text].getMdp() == TbMdp.Text)
                {                  
                    FrmMenu frmMenu = new FrmMenu();
                    frmMenu.Show();
                    this.Hide();
                    return;
                }
                else
                {
                    MessageBox.Show("Mot de passe incorrect");
                }
            }
            else
            {
                MessageBox.Show("Utilisateur inconnu");
            }
        }

        private void FrmConnexion_Load(object sender, EventArgs e)
        {
            Globale.cnx = new System.Data.SqlClient.SqlConnection();
            Globale.cnx.ConnectionString = "Data Source=BTS2021-19\\SQLEXPRESS;Initial Catalog=GSB_gesAMM;Integrated Security=True;MultipleActiveResultSets=True";
            Globale.cnx.Open();

            Globale.LesUtilisateurs = new Dictionary<string, Utilisateur>();

            Bdd.SelectUtilisateurs();
        }
    }
}