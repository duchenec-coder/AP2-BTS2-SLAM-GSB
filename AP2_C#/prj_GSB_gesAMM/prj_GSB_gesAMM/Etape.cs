using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prj_GSB_gesAMM
{
    internal class Etape
    {
        private int ETP_NUM;
        private string ETP_LIBELLE;
        private bool ETP_NORME;
        private DateTime ETP_DATE_NORME;

        public Etape(int ETP_NUM, string ETP_LIBELLE, bool ETP_NORME, DateTime ETP_DATE_NORME)
        {
            this.ETP_NUM = ETP_NUM;
            this.ETP_LIBELLE = ETP_LIBELLE;
            this.ETP_NORME = ETP_NORME;
            this.ETP_DATE_NORME = ETP_DATE_NORME;
        }

        //getters
        public int getNum() { return this.ETP_NUM; }
        public string getLibelle() { return this.ETP_LIBELLE; }
        public bool getNorme() { return this.ETP_NORME; }
        public DateTime getDateNorme() { return this.ETP_DATE_NORME; }

        //setters
        public void setLibelle(string libelle) { this.ETP_LIBELLE = libelle; }
        public void setNorme(bool norme) { this.ETP_NORME = norme; }
        public void setDateNorme(DateTime date) { this.ETP_DATE_NORME = date; }
    }
}
