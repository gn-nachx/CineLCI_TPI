
namespace SistVentas_Cine.Formularios
{
    partial class frmPeliculasMP
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.peliculasBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dSPeliculasMasVistas = new SistVentas_Cine.Reportes.DSPeliculasMasVistas();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.peliculasTableAdapter = new SistVentas_Cine.Reportes.DSPeliculasMasVistasTableAdapters.peliculasTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.peliculasBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dSPeliculasMasVistas)).BeginInit();
            this.SuspendLayout();
            // 
            // peliculasBindingSource
            // 
            this.peliculasBindingSource.DataMember = "peliculas";
            this.peliculasBindingSource.DataSource = this.dSPeliculasMasVistas;
            // 
            // dSPeliculasMasVistas
            // 
            this.dSPeliculasMasVistas.DataSetName = "DSPeliculasMasVistas";
            this.dSPeliculasMasVistas.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            reportDataSource1.Name = "PeliculasMP";
            reportDataSource1.Value = this.peliculasBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "SistVentas_Cine.Reportes.rptPeliculasMP.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(664, 295);
            this.reportViewer1.TabIndex = 0;
            // 
            // peliculasTableAdapter
            // 
            this.peliculasTableAdapter.ClearBeforeFill = true;
            // 
            // frmPeliculasMP
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(667, 307);
            this.Controls.Add(this.reportViewer1);
            this.Name = "frmPeliculasMP";
            this.Text = "frmPeliculasMP";
            this.Load += new System.EventHandler(this.frmPeliculasMP_Load);
            ((System.ComponentModel.ISupportInitialize)(this.peliculasBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dSPeliculasMasVistas)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private Reportes.DSPeliculasMasVistas dSPeliculasMasVistas;
        private System.Windows.Forms.BindingSource peliculasBindingSource;
        private Reportes.DSPeliculasMasVistasTableAdapters.peliculasTableAdapter peliculasTableAdapter;
    }
}