using SistVentas_Cine.Formularios;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SistVentas_Cine
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnMaxim_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Maximized;
            btnMaxim.Visible = false;
            btnRestaurar.Visible = true;
        }

        private void btnRestaurar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Normal;
            btnRestaurar.Visible = false;
            btnMaxim.Visible = true;
        }

        private void btnMinim_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void btnAbout_Click(object sender, EventArgs e)
        {
            MessageBox.Show(" 112788 - Guillamondegui, Néstor Ignacio \n" +
                " 113197 - Guiñazú, Gastón Ignacio \n" +
                " 112952 - Gutierrez, Tomás Maximiliano ", "Alumnos que participaron del proyecto:", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btnTiposSala_Click(object sender, EventArgs e)
        {
            frmReporteTipoSalas frm = new frmReporteTipoSalas();
            frm.Show();
        }

        private void btnPeliculas_Click(object sender, EventArgs e)
        {
            frmPeliculasMP frm = new frmPeliculasMP();
            frm.Show();
        }
    }
}
