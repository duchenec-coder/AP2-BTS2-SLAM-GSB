namespace prj_GSB_gesAMM
{
    public partial class FrmConnexion : Form
    {
        public FrmConnexion()
        {
            InitializeComponent();
        }

        private void LbIdetifiant_Click(object sender, EventArgs e)
        {

        }

        private void BtnQuitter_Click(object sender, EventArgs e)
        {

        }

        private void BtnValid_Click(object sender, EventArgs e)
        {

        }

        private void FrmConnexion_Load(object sender, EventArgs e)
        {
            Globale.cnx = new System.Data.SqlClient.SqlConnection();
            Globale.cnx.ConnectionString = "Data Source=BTS2021-19\\SQLEXPRESS;Initial Catalog=GSB_gesAMM;Integrated Security=True;MultipleActiveResultSets=True";
            Globale.cnx.Open();
        }
    }
}