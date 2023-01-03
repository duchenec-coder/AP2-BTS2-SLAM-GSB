using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prj_GSB_gesAMM
{
    internal class Famille
    {
        private string FAM_CODE;
        private string FAM_LIBELLE;
        private int FAM_NB_MEDI_AMM;

        public Famille(string fAM_CODE, string fAM_LIBELLE, int fAM_NB_MEDI_AMM)
        {
            this.FAM_CODE = fAM_CODE;
            this.FAM_LIBELLE = fAM_LIBELLE;
            this.FAM_NB_MEDI_AMM = fAM_NB_MEDI_AMM;
        }

        public string getFamCode() { return this.FAM_CODE; }
        public string getLibelle() { return this.FAM_LIBELLE; }
        public int  getnbMediAmm() { return this.nbMediAmm; }
    }


}

