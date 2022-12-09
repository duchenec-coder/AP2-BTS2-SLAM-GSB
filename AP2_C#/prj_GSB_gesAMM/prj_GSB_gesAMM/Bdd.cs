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

                List<Workflow> lesEtapes = new List<Workflow>();

               Medicament leMedicament = new Medicament(depotLegal, nom, composition, effet, contreIndic, AMM, codeFamille, lesEtapes);

               Globale.lesMedicaments.Add(depotLegal,leMedicament);
            }
        }


        public static void getWorkflow()
        {

            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("getWorkflow", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            // exécuter la procedure stockée dans un curseur 
            SqlDataReader SqlExec = maRequete.ExecuteReader();

            //boucle de lecture des clients avec ajout dans la collection
            while (SqlExec.Read())
            {
                DateTime dateDecision = DateTime.Parse(SqlExec["WRK_DATE_DECISION"].ToString());
                int ID = int.Parse(SqlExec["WRK_DCS_ID"].ToString());
                int etapeNum = int.Parse(SqlExec["WRK_ETP_NUM"].ToString());
                string medDepotLegal = SqlExec["WRK_MED_DEPOTLEGAL"].ToString();

                Workflow laEtape = new Workflow(dateDecision, ID, etapeNum, medDepotLegal);

                Globale.lesMedicaments[medDepotLegal].ajouterEtape(laEtape);

            }
        }

        public static void getFamille()
        {
            Globale.lesFamilles = new Dictionary<string, Famille>();
            Globale.lesFamilles.Clear();

            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("getFamille", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            // exécuter la procedure stockée dans un curseur 
            SqlDataReader SqlExec = maRequete.ExecuteReader();

            //boucle de lecture des clients avec ajout dans la collection
            while (SqlExec.Read())
            {
                string FAM_CODE = (SqlExec["FAM_CODE"].ToString());
                string FAM_LIBELLE = (SqlExec["FAM_LIBELLE"].ToString());
                int FAM_NB_MEDI_AMM = int.Parse(SqlExec["FAM_NB_MEDI_AMM"].ToString());

                Famille uneFamille = new Famille(FAM_CODE, FAM_LIBELLE, FAM_NB_MEDI_AMM);
                Globale.lesFamilles.Add(FAM_CODE, uneFamille);
            }
        }

        public static void getDecision()
        {
            Globale.lesDecisions = new Dictionary<int, Decision>();
            Globale.lesDecisions.Clear();

            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("getDecision", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            // exécuter la procedure stockée dans un curseur 
            SqlDataReader SqlExec = maRequete.ExecuteReader();

            //boucle de lecture des clients avec ajout dans la collection
            while (SqlExec.Read())
            {
                int DCS_ID = int.Parse(SqlExec["DCS_ID"].ToString());
                string DCS_LIBELLE = (SqlExec["DCS_LIBELLE"].ToString());
                Decision uneDecision = new Decision(DCS_ID, DCS_LIBELLE);
                Globale.lesDecisions.Add(DCS_ID,uneDecision);
            }
        }

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
