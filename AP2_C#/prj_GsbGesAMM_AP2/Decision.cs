using System;
using System.Collections.Generic;
using System.Text;

namespace prj_GsbGesAMM_AP2
{
    class Decision
    {
        private int id;
        private string libelle;

        public Decision(int leId, string leLibelle)
        {
            this.id = leId;
            this.libelle = leLibelle;
        }

        public int getId() { return this.id; }

        public string getLibelle() { return this.libelle; }
    }
}
