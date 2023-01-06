﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace prj_GSB_gesAMM
{
    internal class Globale
    {
        public static SqlConnection cnx;
        public static Dictionary<string, Utilisateur> LesUtilisateurs;
        public static Dictionary<string, Medicament> lesMedicaments;
        public static Dictionary<string, Famille> lesFamilles;
        public static Dictionary<int, Decision> lesDecisions;
        public static Dictionary<int, Etape> lesEtapes;
        public static Utilisateur unutilisateur = new Utilisateur(1, "Admin", "pass");
    }
}
