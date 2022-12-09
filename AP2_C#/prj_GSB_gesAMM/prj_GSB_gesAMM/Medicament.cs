using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prj_GSB_gesAMM
{
    internal class Medicament
    {
        private string DepotLegal;
        private string Nom;
        private string Composition;
        private string Effet;
        private string ContreIndic;
        private string AMM;
        private string CodeFamille;
        private List<Workflow> lesEtapes;

        public Medicament(string depotLegal, string nom, string composition, string effet, string contreIndic, string aMM, string codeFamille, List<Workflow> lesEtapes)
        {
            this.DepotLegal = depotLegal;
            this.Nom = nom;
            this.Composition = composition;
            this.Effet = effet;
            this.ContreIndic = contreIndic;
            this.AMM = aMM;
            this.CodeFamille = codeFamille;
            this.lesEtapes = new List<Workflow>();
        }

        //getters
        public string getDepotLegal() { return this.DepotLegal; }
        public string getNom() { return this.Nom; }
        public string getComposition() { return this.Composition; }
        public string getEffet() { return this.Effet; }
        public string getAMM() { return this.AMM; }
        public string getCodeFamille() { return this.CodeFamille; }
        public List<Workflow> getWorkflow() { return this.lesEtapes; }


        public void ajouterEtape(Workflow etape)
        {
            this.lesEtapes.Add(etape);
        }
    }
}
