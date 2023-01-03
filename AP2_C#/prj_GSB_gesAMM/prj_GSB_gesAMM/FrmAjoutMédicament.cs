﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace prj_GSB_gesAMM
{
    public partial class FrmAjoutMédicament : Form
    {
       
        public FrmAjoutMédicament()
        {
            InitializeComponent();
        }

        private void FrmAjoutMédicament_Load(object sender, EventArgs e)
        {
            Globale.cnx = new System.Data.SqlClient.SqlConnection();
            Globale.cnx.ConnectionString = "Data Source=BTS2021-08\\SQLEXPRESS;Initial Catalog=GSB_gesAMM;Integrated Security=True;MultipleActiveResultSets=True";
            Globale.cnx.Open();
            //
            foreach(Famille familles in Globale.lesFamilles)
            {
                cb_Famille.Items.Add(familles.getCode());
            }
            
        }
        private void btn_Annuler_Click(object sender, EventArgs e)
        {
            tb_depot.Text = "";
            tb_Commercial.Text = "";
            tb_CI.Text = "";
            tb_Compo.Text = "";
            tb_Amm.Text = "";
            tb_Effets.Text = "";
            tb_Etape.Text = "";
            cb_Famille.SelectedItem = "";
        }

        private void tb_depot_TextChanged(object sender, EventArgs e)
        {
            if (tb_depot.Text != "" && tb_Commercial.Text != "" &&
            tb_CI.Text != ""
           && tb_Compo.Text != ""
            && tb_Amm.Text != ""
            && tb_Effets.Text != ""
            && tb_Etape.Text != ""
           && cb_Famille.SelectedItem.ToString() != "")
            {
                btn_Insérer.Enabled = true;
            }
            else
            {
                btn_Insérer.Enabled = false;
            }
        }

        private void tb_Commercial_TextChanged(object sender, EventArgs e)
        {
            if (tb_depot.Text != "" && tb_Commercial.Text != "" &&
           tb_CI.Text != ""
          && tb_Compo.Text != ""
           && tb_Amm.Text != ""
           && tb_Effets.Text != ""
           && tb_Etape.Text != ""
          && cb_Famille.SelectedItem.ToString() != "")
            {
                btn_Insérer.Enabled = true;
            }
            else
            {
                btn_Insérer.Enabled = false;
            }
        }

        private void tb_Compo_TextChanged(object sender, EventArgs e)
        {
            if (tb_depot.Text != "" && tb_Commercial.Text != "" &&
           tb_CI.Text != ""
          && tb_Compo.Text != ""
           && tb_Amm.Text != ""
           && tb_Effets.Text != ""
           && tb_Etape.Text != ""
          && cb_Famille.SelectedItem.ToString() != "")
            {
                btn_Insérer.Enabled = true;
            }
            else
            {
                btn_Insérer.Enabled = false;
            }
        }

        private void tb_Effets_TextChanged(object sender, EventArgs e)
        {
            if (tb_depot.Text != "" && tb_Commercial.Text != "" &&
           tb_CI.Text != ""
          && tb_Compo.Text != ""
           && tb_Amm.Text != ""
           && tb_Effets.Text != ""
           && tb_Etape.Text != ""
          && cb_Famille.SelectedItem.ToString() != "")
            {
                btn_Insérer.Enabled = true;
            }
            else
            {
                btn_Insérer.Enabled = false;
            }
        }

        private void tb_CI_TextChanged(object sender, EventArgs e)
        {
            if (tb_depot.Text != "" && tb_Commercial.Text != "" &&
              tb_CI.Text != ""
             && tb_Compo.Text != ""
              && tb_Amm.Text != ""
              && tb_Effets.Text != ""
              && tb_Etape.Text != ""
             && cb_Famille.SelectedItem.ToString() != "")
            {
                btn_Insérer.Enabled = true;
            }
            else
            {
                btn_Insérer.Enabled = false;
            }
        }

        private void tb_Amm_TextChanged(object sender, EventArgs e)
        {
            if (tb_depot.Text != "" && tb_Commercial.Text != "" &&
             tb_CI.Text != ""
            && tb_Compo.Text != ""
             && tb_Amm.Text != ""
             && tb_Effets.Text != ""
             && tb_Etape.Text != ""
            && cb_Famille.SelectedItem.ToString() != "")
            {
                btn_Insérer.Enabled = true;
            }
            else
            {
                btn_Insérer.Enabled = false;
            }
        }

        private void tb_Etape_TextChanged(object sender, EventArgs e)
        {
            if (tb_depot.Text != "" && tb_Commercial.Text != "" &&
             tb_CI.Text != ""
            && tb_Compo.Text != ""
             && tb_Amm.Text != ""
             && tb_Effets.Text != ""
             && tb_Etape.Text != ""
            && cb_Famille.SelectedItem.ToString() != "")
            {
                btn_Insérer.Enabled = true;
            }
            else
            {
                btn_Insérer.Enabled = false;
            }
        }
       

        private void cb_Famille_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (tb_depot.Text != "" && tb_Commercial.Text != "" &&
             tb_CI.Text != ""
            && tb_Compo.Text != ""
             && tb_Amm.Text != ""
             && tb_Effets.Text != ""
             && tb_Etape.Text != ""
            && cb_Famille.SelectedItem.ToString() != "")
            {
                btn_Insérer.Enabled = true;
            }
            else
            {
                btn_Insérer.Enabled = false;
            }
        }

        private void btn_Accueil_Click(object sender, EventArgs e)
        {
            FrmMenu frmMenu = new FrmMenu();
            frmMenu.ShowDialog();
        }

       
    }
    }
    
    

