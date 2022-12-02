using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prj_GSB_gesAMM
{
    internal class Utilisateur
    {
        private int id;
        private string identifiant;
        private string mdp;

        public Utilisateur(int id, string identifiant, string mdp)
        {
            this.id = id;
            this.identifiant = identifiant;
            this.mdp = mdp;
        }

        public int getId()
        {
            return this.id;
        }

        public string getIdentifiant()
        {
            return this.identifiant;
        }

        public string getMdp()
        {
            return this.mdp;
        }
    }
}
