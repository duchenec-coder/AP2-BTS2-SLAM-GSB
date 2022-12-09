using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace prj_GSB_gesAMM
{
	class Medicament
	{
		private string depotlegal;
		private string commercial;
		private string composition;
		private string effets;
		private string contreIndications;
		private int Amm;
		private string codeFamille;
		/*private List<Workflow> lesEtapes;*/
		private Dictionary<string, Famille> lesFamilles;

		public Medicament(string depotlegal, string commercial, string composition, string effets, string contreIndications, int Amm, string codeFamille)
		{
			this.depotlegal = depotlegal;
			this.commercial = commercial;
			this.composition = composition;
			this.effets = effets;
			this.contreIndications = contreIndications;
			this.Amm = Amm;
			this.codeFamille = codeFamille;
			/*this.lesEtapes = new List<Worflow>();*/
			this.lesFamilles = new Dictionary<string, Famille>();
		}
		public string getDepot() { return this.depotlegal; }
		public string getCommercial() { return this.commercial; }
		public string getComposition() { return this.composition; }
		public string getEffets() { return this.effets; }
		public string getCI() { return this.contreIndications; }
		public int  getAmm() { return this.Amm; }
		public string getCodeFamille() { return this.codeFamille; }
		/*public string getLesEtapes() { return this.lesEtapes; }*/
		public Dictionary<string,Famille> getlesFamilles()
		{
			return Globale.lesFamilles;
		}
	}
}


