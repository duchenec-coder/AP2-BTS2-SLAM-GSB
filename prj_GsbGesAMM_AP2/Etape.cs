using System;
using System.Collections.Generic;
using System.Text;

namespace prj_GsbGesAMM_AP2
{
    class Etape
    {
        private int num;
        private string libelle;

        public Etape(int leNum, string leLibelle)
        {
            this.num = leNum;
            this.libelle = leLibelle;

        }

        public int getNum() { return this.num; }

        public string getLibelle() { return this.libelle; }
    }
}
