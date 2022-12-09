using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace prj_GSB_gesAMM
{
	class Famille
	{
		private string code;
		private string libelle;
		private int nbMediAmm;
		private Dictionary<string,Medicament> lesMedicaments;
		

		public Famille(string code,string libelle, int nbMediAmm)
		{
			this.code = code;
			this.libelle = libelle;
			this.nbMediAmm = nbMediAmm;
			this.lesMedicaments= new Dictionary<string,Medicament>();
		}

		public string getCode() { return this.code; }
		public string getLibelle() { return this.libelle; }
		public int  getnbMediAmm() { return this.nbMediAmm; }

		public Dictionary<string,Medicament> getdicMediAmm()

		{ return Globale.lesMedicaments; }
		
	}
}

