using System;
using System.Collections.Generic;
using System.Text;

namespace prj_GsbGesAMM_AP2
{
    class Famille
    {
        private string code;
        private string libelle;
        private int nbMediAnn;

        public Famille(string leCode, string leLibelle, int leNb)
        {
            this.code = leCode;
            this.libelle = leLibelle;
            this.nbMediAnn = leNb;
        }

        public string getCode() { return this.code; }

        public string getLibelle() { return this.libelle; }

        public int getNbMediAnn() { return this.nbMediAnn; }
    }
}
