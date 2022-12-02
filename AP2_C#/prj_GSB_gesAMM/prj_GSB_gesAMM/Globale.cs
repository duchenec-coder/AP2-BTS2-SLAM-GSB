using System;
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
        public static Dictionary<string, Famille> lesFamilles;
        public static Dictionary<string, Medicament> lesMedicaments;

    }
}
