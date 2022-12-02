using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace prj_GSB_gesAMM
{
    internal class Bdd
    {
        public static void SelectUtilisateurs()
        {
            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("prc_ListeTousUtilisateurs", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            // exécuter la procedure stockée dans un curseur 
            SqlDataReader SqlExec = maRequete.ExecuteReader();

            while (SqlExec.Read())
            {
                int id = int.Parse(SqlExec["id"].ToString());
                string identifiant = SqlExec["identifiant"].ToString();
                string mdp = SqlExec["mdp"].ToString();

                Utilisateur LeUtil = new Utilisateur(id, identifiant, mdp);

                Globale.LesUtilisateurs.Add(LeUtil.getIdentifiant(),LeUtil);
                MessageBox.Show(LeUtil.getIdentifiant() + " " + LeUtil.getMdp());
            }
        }
    }
}
