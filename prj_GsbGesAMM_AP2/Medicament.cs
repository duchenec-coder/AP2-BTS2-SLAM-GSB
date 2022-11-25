using System;
using System.Collections.Generic;
using System.Text;

namespace prj_GsbGesAMM_AP2
{
    class Medicament
    {
        private string depotLegal;
        private string nomCommercial;
        private string composition;
        private string effets;
        private string contreIndications;
        private string amm;
        private int derniereEtape;
        private Dictionary<string, Famille> laFamille;

        public Medicament(string leDepotLegal, string NomCommercial, string laComposition, string Effets, string ContreIndications, 
            string leAmm, int laDerniereEtape)
        {
            this.depotLegal = leDepotLegal;
            this.nomCommercial = NomCommercial;
            this.composition = laComposition;
            this.effets = Effets;
            this.contreIndications = ContreIndications;
            this.amm = leAmm;
            this.derniereEtape = laDerniereEtape;
            this.laFamille = new Dictionary<string, Famille>;
        }
        public string getDepot() { return this.depotLegal; }

        public string getNom() { return this.nomCommercial; }
        public string getComposition() { return this.composition; }

        public string getEffets() { return this.effets; }
        public string getContreIndications() { return this.contreIndications; }

        public string getAmm() { return this.amm; }
        public int getDerniereEtape() { return this.derniereEtape; }

        public Dictionary<string,Famille> getFamille() { return this.laFamille; }
        

        



    }
}
