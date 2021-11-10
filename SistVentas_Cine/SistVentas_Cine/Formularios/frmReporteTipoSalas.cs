using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SistVentas_Cine.Formularios
{
    public partial class frmReporteTipoSalas : Form
    {
        public frmReporteTipoSalas()
        {
            InitializeComponent();
        }

        private void frmReporteTipoSalas_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'dSTiposDeSala.DataTable1' table. You can move, or remove it, as needed.
            this.dataTable1TableAdapter.Fill(this.dSTiposDeSala.DataTable1);

            this.reportViewer1.RefreshReport();
        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {
            this.dataTable1TableAdapter.Fill(this.dSTiposDeSala.DataTable1);
            this.reportViewer1.RefreshReport();
        }

        private void dSTiposDeSalaBindingSource_CurrentChanged(object sender, EventArgs e)
        {

        }
    }
}
