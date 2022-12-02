using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace prj_GSB_gesAMM
{
    internal class Bdd
    {
        public static void getMedicaments()
        {
            Globale.lesMedicaments.Clear();

            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("getMedicaments", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            // exécuter la procedure stockée dans un curseur 
            SqlDataReader SqlExec = maRequete.ExecuteReader();

            //boucle de lecture des clients avec ajout dans la collection
            while (SqlExec.Read())
            {
                string depotLegal = SqlExec["MED_DEPOTLEGAL"].ToString(); 
                string nom = SqlExec["MED_NOMCOMMERCIAL"].ToString();
                string composition = SqlExec["MED_COMPOSITION"].ToString();
                string effet = SqlExec["MED_EFFETS"].ToString();
                string contreIndic = SqlExec["MED_CONTREINDIC"].ToString();
                string AMM = SqlExec["MED_AMM"].ToString();
                string codeFamille = SqlExec["MED_FAM_CODE"].ToString();

                Dictionary<string, Workflow> lesEtapes = new Dictionary<string, Workflow>();

               Medicament leMedicament = new Medicament(depotLegal, nom, composition, effet, contreIndic, AMM, codeFamille, lesEtapes);

               Globale.lesMedicaments.Add(depotLegal,leMedicament);
            }
        }

        public static void getWorkflow()
        {
            Globale.lesMedicaments.Clear();

            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("getWorkflow", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            // exécuter la procedure stockée dans un curseur 
            SqlDataReader SqlExec = maRequete.ExecuteReader();

            //boucle de lecture des clients avec ajout dans la collection
            while (SqlExec.Read())
            {
                DateTime dateDecision = DateTime.Parse(SqlExec["WRK_DATE_DECISION"].ToString());
                int ID = int.Parse(SqlExec["WRK_DSC_ID"].ToString());
                int etapeNum = int.Parse(SqlExec["WRK_ETP_NUM"].ToString());
                string medDepotLegal = SqlExec["WRK_MED_DEPOTLEGAL"].ToString();

                Workflow laEtape = new Workflow(dateDecision, ID, etapeNum, medDepotLegal);

                Globale.lesMedicaments[medDepotLegal].ajouterEtape(medDepotLegal, laEtape);

            }
        }
    }
}
