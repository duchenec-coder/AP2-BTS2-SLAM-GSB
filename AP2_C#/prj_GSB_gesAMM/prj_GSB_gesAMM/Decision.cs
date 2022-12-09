using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prj_GSB_gesAMM
{
    internal class Decision
    {
        private int DCS_ID;
        private string DCS_LIBELLE;

        public Decision(int DCS_ID, string DCS_LIBELLE)
        {
            this.DCS_ID = DCS_ID;
            this.DCS_LIBELLE = DCS_LIBELLE;
        }

        public int getId() { return this.DCS_ID; }
        public string getLibelle() { return this.DCS_LIBELLE; }
    }
}
