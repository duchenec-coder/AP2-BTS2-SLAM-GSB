using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Microsoft.Identity.Client;

namespace prj_GSB_gesAMM
{
    internal class Bdd
    {
        public static void getMedicaments()
        {
            Globale.lesMedicaments = new Dictionary<string, Medicament>();
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
                DateTime dateDecision = SqlExec.GetDateTime(0);
                int ID = int.Parse(SqlExec["WRK_DCS_ID"].ToString());
                int etapeNum = int.Parse(SqlExec["WRK_ETP_NUM"].ToString());
                string medDepotLegal = SqlExec["WRK_MED_DEPOTLEGAL"].ToString();

                Workflow laEtape = new Workflow(dateDecision, ID, etapeNum, medDepotLegal);

                Globale.lesMedicaments[medDepotLegal].ajouterEtape(laEtape);
            }
        }

        public static void getEtape()
        {
            Globale.lesEtapes = new Dictionary<int, Etape>();
            Globale.lesEtapes.Clear();

            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("getEtape", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            // exécuter la procedure stockée dans un curseur 
            SqlDataReader SqlExec = maRequete.ExecuteReader();

            //boucle de lecture des clients avec ajout dans la collection
            while (SqlExec.Read())
            {
                DateTime dateNorme = DateTime.MinValue;
                int etapeNum = int.Parse(SqlExec["ETP_NUM"].ToString());
                string libelle = (SqlExec["ETP_LIBELLE"].ToString());
                string norme = (SqlExec["ETP_NORME"].ToString());
                if((SqlExec["ETP_DATE_NORME"].ToString()) != "")
                {
                    dateNorme = DateTime.Parse(SqlExec["ETP_DATE_NORME"].ToString());
                }
                Etape uneEtape = new Etape(etapeNum, libelle, norme,dateNorme);
                Globale.lesEtapes.Add(etapeNum, uneEtape);
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
            }
        }

        public static void UpdateDecis(int decis, int etape, string depotLegal)
        {
            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("ChangDecision", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;
            maRequete.Parameters.Add(new SqlParameter("@DepotLegal", depotLegal));
            maRequete.Parameters.Add(new SqlParameter("@NumEtape", etape));
            maRequete.Parameters.Add(new SqlParameter("@IdDeci", decis));

            // exécuter la procedure stockée dans un curseur 
            SqlDataReader SqlExec = maRequete.ExecuteReader();
        }

        public static void AjoutWorkflow(string depotLegal)
        {
            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("ajoutWorkflow", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;
            maRequete.Parameters.Add(new SqlParameter("@DepotLegal", depotLegal));

            // exécuter la procedure stockée dans un curseur 
            SqlDataReader SqlExec = maRequete.ExecuteReader();
        }

        public static void refresh()
        {
            Globale.lesDecisions.Clear();
            Globale.lesEtapes.Clear();
            Globale.lesFamilles.Clear();
            Globale.lesMedicaments.Clear();
            Globale.LesUtilisateurs.Clear();
            Bdd.getEtape();
            Bdd.getMedicaments();
            Bdd.getWorkflow();
            Bdd.getDecision();
            Bdd.getFamille();
        }

        public static Boolean inserHistorique(DateTime dateMaj, int idUtilHist, int etpNumHist, string normeAvMaj, string normeApMaj, DateTime dateNormeAvMaj, DateTime dateNormeApMaj)
        {
            SqlCommand maRequete = new SqlCommand("insertHistorique", Globale.cnx);
            // Il s’agit d’une procédure stockée:
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            // Ajouter les parameters à la procédure stockée
            //@dateMaj DateTime, @idUtilHist int, @etpNumHist int, @normeAvMaj text, @normeApMaj text, @dateNormeAvMaj date, @dateNormeApMaj date)
            SqlParameter paramDateMaj = new SqlParameter("@dateMaj", System.Data.SqlDbType.DateTime);
            paramDateMaj.Value = dateMaj;
            SqlParameter paramIdUtilHist = new SqlParameter("@idUtilHist", System.Data.SqlDbType.Int);
            paramIdUtilHist.Value = idUtilHist;
            SqlParameter paramEtpNumHist = new SqlParameter("@etpNumHist", System.Data.SqlDbType.Int);
            paramEtpNumHist.Value = idUtilHist;
            SqlParameter paramNormeAvMaj = new SqlParameter("@normeAvMaj", System.Data.SqlDbType.Text);
            paramNormeAvMaj.Value = normeAvMaj;
            SqlParameter paramNormeApMaj = new SqlParameter("@normeApMaj", System.Data.SqlDbType.Text);
            paramNormeApMaj.Value = normeApMaj;
            SqlParameter paramDateNormeAvMaj = new SqlParameter("@dateNormeAvMaj", System.Data.SqlDbType.DateTime);
            paramDateNormeAvMaj.Value = dateNormeApMaj;
            SqlParameter paramDateNormeApMaj = new SqlParameter("@dateNormeApMaj", System.Data.SqlDbType.DateTime);
            paramDateNormeApMaj.Value = dateNormeApMaj;

            maRequete.Parameters.Add(paramDateMaj);
            maRequete.Parameters.Add(paramIdUtilHist);
            maRequete.Parameters.Add(paramEtpNumHist);
            maRequete.Parameters.Add(paramNormeAvMaj);
            maRequete.Parameters.Add(paramNormeApMaj);
            maRequete.Parameters.Add(paramDateNormeAvMaj);
            maRequete.Parameters.Add(paramDateNormeApMaj);


            try
            {
                maRequete.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static Boolean updateEtapeNormee(DateTime dateNorme, string norme, int ETP_NUM)
        {
            SqlCommand maRequete = new SqlCommand("updateEtapeNormee", Globale.cnx);
            // Il s’agit d’une procédure stockée:
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            // Ajouter les parameters à la procédure stockée
            //@dateMaj DateTime, @idUtilHist int, @etpNumHist int, @normeAvMaj text, @normeApMaj text, @dateNormeAvMaj date, @dateNormeApMaj date)
            SqlParameter paramDateNorme = new SqlParameter("@dateNorme", System.Data.SqlDbType.DateTime);
            paramDateNorme.Value = dateNorme;
            SqlParameter paramNorme = new SqlParameter("@Norme", System.Data.SqlDbType.Text);
            paramNorme.Value = norme;
            SqlParameter paramNumEtape = new SqlParameter("@EtapeNum", System.Data.SqlDbType.Int);
            paramNumEtape.Value = ETP_NUM;

            maRequete.Parameters.Add(paramDateNorme);
            maRequete.Parameters.Add(paramNorme);
            maRequete.Parameters.Add(paramNumEtape);

            // exécuter la procedure stockée
            try
            {
                maRequete.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
        }
        
         public static Boolean ajouterMedicament(char depotlegal, char commmercial, char composition, char effets, char conteIndications, char Amm, char code)
        {

            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("prc_ajout_Medicament", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter paramDepotlegal = new SqlParameter("@med_depotlegal", System.Data.SqlDbType.Char, 30);
            //Ajouter les paramétres à la procedure stockée dans un curseur 
            paramDepotlegal.Value = depotlegal;
            SqlParameter paramCommercial = new SqlParameter("@med_commercial", System.Data.SqlDbType.Char, 30);
            paramCommercial.Value = commmercial;
            SqlParameter paramComposition = new SqlParameter("@med_composition", System.Data.SqlDbType.Char, 255);
            paramComposition.Value = composition;
            SqlParameter paramEffets = new SqlParameter("@med_effets", System.Data.SqlDbType.Char, 30);
            paramEffets.Value = effets;
            SqlParameter paramCI = new SqlParameter("@med_contreIndications", System.Data.SqlDbType.Char, 255);
            paramCI.Value = conteIndications;
            SqlParameter paramAmm = new SqlParameter("@med_Amm", System.Data.SqlDbType.Char, 30);
            SqlParameter paramFamCode = new SqlParameter("@fam_code", System.Data.SqlDbType.Int, 30);
            paramAmm.Value = Amm;
            paramFamCode.Value = code;

            maRequete.Parameters.Add(paramDepotlegal);
            maRequete.Parameters.Add(paramCommercial);
            maRequete.Parameters.Add(paramEffets);
            maRequete.Parameters.Add(paramComposition);
            maRequete.Parameters.Add(paramCI);
            maRequete.Parameters.Add(paramAmm);
            maRequete.Parameters.Add(paramFamCode);

            //boucle de lecture des clients avec ajout dans la collection

            try
            {
                maRequete.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}