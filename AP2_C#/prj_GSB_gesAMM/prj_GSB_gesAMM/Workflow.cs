using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prj_GSB_gesAMM
{
    internal class Workflow
    {
        private DateTime dateDecision;
        private int decisionID;
        private int numeroEtape;
        private string MedDepotlegal;

        public Workflow(DateTime date, int dcsID,int etapeNum, string medDepotLegal)
        {
            this.dateDecision = date;
            this.decisionID = dcsID;
            this.numeroEtape= etapeNum;
            this.MedDepotlegal = medDepotLegal;
        }

        public DateTime getDate() { return this.dateDecision; }
        public int getDecisionId() { return this.decisionID; }
        public int getNumeroEtape() { return this.numeroEtape; }
        public string getMedDepotLegal() { return this.MedDepotlegal; }
    }
}
