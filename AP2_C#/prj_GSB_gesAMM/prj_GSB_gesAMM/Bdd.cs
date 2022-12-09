using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace prj_GSB_gesAMM
{
    public static class Bdd
    {
        public static void lireLesFamilles()
        {
            Globale.lesFamilles.Clear();

            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("prc_listeConsultation", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            // exécuter la procedure stockée dans un curseur 
            SqlDataReader SqlExec = maRequete.ExecuteReader();

            //boucle de lecture des clients avec ajout dans la collection
            while (SqlExec.Read())
            {
                string codeFamille = SqlExec["FAM_CODE"].ToString();
                string composition = SqlExec["FAM_LIBELLE"].ToString();
                int nbMedicaments = int.Parse(SqlExec["FAM_NB_MEDI_AMM"].ToString());

                Famille laFamille = new Famille(codeFamille, composition, nbMedicaments);

                Globale.lesFamilles.Add(codeFamille,laFamille);
            }
        }


        public static Boolean ajouterMedicament(char depotlegal, char commmercial, char composition, char effets, char conteIndications, char Amm, char code)
        {

            //objet SQLCommand pour définir la procédure stockée à utiliser
            SqlCommand maRequete = new SqlCommand("prc_ajout_Medicament", Globale.cnx);
            maRequete.CommandType = System.Data.CommandType.StoredProcedure;

            //Ajouter les paramétres à la procedure stockée dans un curseur 
            SqlParameter paramDepotlegal = new SqlParameter("@med_depotlegal", System.Data.SqlDbType.Char, 30);
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
            paramAmm.Value = Amm;
            SqlParameter paramFamCode = new SqlParameter("@fam_code", System.Data.SqlDbType.Int, 30);
            paramFamCode.Value = code;

            maRequete.Parameters.Add(paramDepotlegal);
            maRequete.Parameters.Add(paramCommercial);
            maRequete.Parameters.Add(paramComposition);
            maRequete.Parameters.Add(paramEffets);
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
