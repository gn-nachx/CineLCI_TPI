
namespace SistVentas_Cine
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.Titulo = new System.Windows.Forms.Panel();
            this.btnRestaurar = new System.Windows.Forms.PictureBox();
            this.btnMinim = new System.Windows.Forms.PictureBox();
            this.btnMaxim = new System.Windows.Forms.PictureBox();
            this.btnCerrar = new System.Windows.Forms.PictureBox();
            this.MenuVertical = new System.Windows.Forms.Panel();
            this.panel5 = new System.Windows.Forms.Panel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.btnPeliculas = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnGeneros = new System.Windows.Forms.Button();
            this.btnTiposSala = new System.Windows.Forms.Button();
            this.lblBienv = new System.Windows.Forms.Label();
            this.panelContenedor = new System.Windows.Forms.Panel();
            this.btnAbout = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblTitulo = new System.Windows.Forms.Label();
            this.Titulo.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.btnRestaurar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnMinim)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnMaxim)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnCerrar)).BeginInit();
            this.MenuVertical.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panelContenedor.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // Titulo
            // 
            this.Titulo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(51)))), ((int)(((byte)(81)))));
            this.Titulo.Controls.Add(this.btnRestaurar);
            this.Titulo.Controls.Add(this.btnMinim);
            this.Titulo.Controls.Add(this.btnMaxim);
            this.Titulo.Controls.Add(this.btnCerrar);
            this.Titulo.Dock = System.Windows.Forms.DockStyle.Top;
            this.Titulo.Location = new System.Drawing.Point(0, 0);
            this.Titulo.Name = "Titulo";
            this.Titulo.Size = new System.Drawing.Size(812, 35);
            this.Titulo.TabIndex = 0;
            // 
            // btnRestaurar
            // 
            this.btnRestaurar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnRestaurar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnRestaurar.Image = ((System.Drawing.Image)(resources.GetObject("btnRestaurar.Image")));
            this.btnRestaurar.InitialImage = ((System.Drawing.Image)(resources.GetObject("btnRestaurar.InitialImage")));
            this.btnRestaurar.Location = new System.Drawing.Point(753, 3);
            this.btnRestaurar.Name = "btnRestaurar";
            this.btnRestaurar.Size = new System.Drawing.Size(25, 26);
            this.btnRestaurar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.btnRestaurar.TabIndex = 2;
            this.btnRestaurar.TabStop = false;
            this.btnRestaurar.Visible = false;
            this.btnRestaurar.Click += new System.EventHandler(this.btnRestaurar_Click);
            // 
            // btnMinim
            // 
            this.btnMinim.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnMinim.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnMinim.Image = ((System.Drawing.Image)(resources.GetObject("btnMinim.Image")));
            this.btnMinim.InitialImage = ((System.Drawing.Image)(resources.GetObject("btnMinim.InitialImage")));
            this.btnMinim.Location = new System.Drawing.Point(722, 3);
            this.btnMinim.Name = "btnMinim";
            this.btnMinim.Size = new System.Drawing.Size(25, 26);
            this.btnMinim.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.btnMinim.TabIndex = 1;
            this.btnMinim.TabStop = false;
            this.btnMinim.Click += new System.EventHandler(this.btnMinim_Click);
            // 
            // btnMaxim
            // 
            this.btnMaxim.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnMaxim.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnMaxim.Image = ((System.Drawing.Image)(resources.GetObject("btnMaxim.Image")));
            this.btnMaxim.InitialImage = ((System.Drawing.Image)(resources.GetObject("btnMaxim.InitialImage")));
            this.btnMaxim.Location = new System.Drawing.Point(753, 3);
            this.btnMaxim.Name = "btnMaxim";
            this.btnMaxim.Size = new System.Drawing.Size(25, 26);
            this.btnMaxim.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.btnMaxim.TabIndex = 1;
            this.btnMaxim.TabStop = false;
            this.btnMaxim.Click += new System.EventHandler(this.btnMaxim_Click);
            // 
            // btnCerrar
            // 
            this.btnCerrar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCerrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnCerrar.Image = ((System.Drawing.Image)(resources.GetObject("btnCerrar.Image")));
            this.btnCerrar.InitialImage = ((System.Drawing.Image)(resources.GetObject("btnCerrar.InitialImage")));
            this.btnCerrar.Location = new System.Drawing.Point(784, 3);
            this.btnCerrar.Name = "btnCerrar";
            this.btnCerrar.Size = new System.Drawing.Size(25, 26);
            this.btnCerrar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.btnCerrar.TabIndex = 0;
            this.btnCerrar.TabStop = false;
            this.btnCerrar.Click += new System.EventHandler(this.btnCerrar_Click);
            // 
            // MenuVertical
            // 
            this.MenuVertical.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(31)))), ((int)(((byte)(29)))), ((int)(((byte)(59)))));
            this.MenuVertical.Controls.Add(this.panel5);
            this.MenuVertical.Controls.Add(this.panel4);
            this.MenuVertical.Controls.Add(this.btnPeliculas);
            this.MenuVertical.Controls.Add(this.panel1);
            this.MenuVertical.Controls.Add(this.btnGeneros);
            this.MenuVertical.Controls.Add(this.btnTiposSala);
            this.MenuVertical.Controls.Add(this.lblBienv);
            this.MenuVertical.Dock = System.Windows.Forms.DockStyle.Left;
            this.MenuVertical.Location = new System.Drawing.Point(0, 35);
            this.MenuVertical.Name = "MenuVertical";
            this.MenuVertical.Size = new System.Drawing.Size(238, 397);
            this.MenuVertical.TabIndex = 1;
            // 
            // panel5
            // 
            this.panel5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(51)))), ((int)(((byte)(81)))));
            this.panel5.Location = new System.Drawing.Point(0, 166);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(7, 37);
            this.panel5.TabIndex = 2;
            // 
            // panel4
            // 
            this.panel4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(51)))), ((int)(((byte)(81)))));
            this.panel4.Location = new System.Drawing.Point(0, 131);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(7, 37);
            this.panel4.TabIndex = 2;
            // 
            // btnPeliculas
            // 
            this.btnPeliculas.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnPeliculas.FlatAppearance.BorderSize = 0;
            this.btnPeliculas.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(51)))), ((int)(((byte)(81)))));
            this.btnPeliculas.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPeliculas.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPeliculas.ForeColor = System.Drawing.Color.White;
            this.btnPeliculas.Location = new System.Drawing.Point(2, 131);
            this.btnPeliculas.Name = "btnPeliculas";
            this.btnPeliculas.Size = new System.Drawing.Size(238, 37);
            this.btnPeliculas.TabIndex = 3;
            this.btnPeliculas.Text = "Peliculas mas vistas";
            this.btnPeliculas.UseVisualStyleBackColor = true;
            this.btnPeliculas.Click += new System.EventHandler(this.btnPeliculas_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(51)))), ((int)(((byte)(81)))));
            this.panel1.Controls.Add(this.panel3);
            this.panel1.Location = new System.Drawing.Point(0, 96);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(7, 37);
            this.panel1.TabIndex = 2;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(51)))), ((int)(((byte)(81)))));
            this.panel3.Controls.Add(this.panel2);
            this.panel3.Location = new System.Drawing.Point(0, 35);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(7, 37);
            this.panel3.TabIndex = 2;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(51)))), ((int)(((byte)(81)))));
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(7, 37);
            this.panel2.TabIndex = 2;
            // 
            // btnGeneros
            // 
            this.btnGeneros.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnGeneros.FlatAppearance.BorderSize = 0;
            this.btnGeneros.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(51)))), ((int)(((byte)(81)))));
            this.btnGeneros.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnGeneros.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGeneros.ForeColor = System.Drawing.Color.White;
            this.btnGeneros.Location = new System.Drawing.Point(0, 166);
            this.btnGeneros.Name = "btnGeneros";
            this.btnGeneros.Size = new System.Drawing.Size(238, 37);
            this.btnGeneros.TabIndex = 1;
            this.btnGeneros.Text = "Generos mas populares";
            this.btnGeneros.UseVisualStyleBackColor = true;
            // 
            // btnTiposSala
            // 
            this.btnTiposSala.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnTiposSala.FlatAppearance.BorderSize = 0;
            this.btnTiposSala.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(51)))), ((int)(((byte)(81)))));
            this.btnTiposSala.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTiposSala.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTiposSala.ForeColor = System.Drawing.Color.White;
            this.btnTiposSala.Image = ((System.Drawing.Image)(resources.GetObject("btnTiposSala.Image")));
            this.btnTiposSala.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnTiposSala.Location = new System.Drawing.Point(3, 96);
            this.btnTiposSala.Name = "btnTiposSala";
            this.btnTiposSala.Size = new System.Drawing.Size(238, 37);
            this.btnTiposSala.TabIndex = 1;
            this.btnTiposSala.Text = "Tipos de sala";
            this.btnTiposSala.UseVisualStyleBackColor = true;
            this.btnTiposSala.Click += new System.EventHandler(this.btnTiposSala_Click);
            // 
            // lblBienv
            // 
            this.lblBienv.AutoSize = true;
            this.lblBienv.Font = new System.Drawing.Font("Nirmala UI", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblBienv.ForeColor = System.Drawing.Color.White;
            this.lblBienv.Location = new System.Drawing.Point(22, 18);
            this.lblBienv.Name = "lblBienv";
            this.lblBienv.Size = new System.Drawing.Size(201, 47);
            this.lblBienv.TabIndex = 0;
            this.lblBienv.Text = "Bienvenido!";
            // 
            // panelContenedor
            // 
            this.panelContenedor.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(134)))), ((int)(((byte)(72)))), ((int)(((byte)(121)))));
            this.panelContenedor.Controls.Add(this.btnAbout);
            this.panelContenedor.Controls.Add(this.pictureBox1);
            this.panelContenedor.Controls.Add(this.lblTitulo);
            this.panelContenedor.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelContenedor.Location = new System.Drawing.Point(238, 35);
            this.panelContenedor.Name = "panelContenedor";
            this.panelContenedor.Size = new System.Drawing.Size(574, 397);
            this.panelContenedor.TabIndex = 2;
            // 
            // btnAbout
            // 
            this.btnAbout.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnAbout.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(63)))), ((int)(((byte)(51)))), ((int)(((byte)(81)))));
            this.btnAbout.FlatAppearance.BorderSize = 2;
            this.btnAbout.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAbout.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAbout.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(233)))), ((int)(((byte)(166)))), ((int)(((byte)(166)))));
            this.btnAbout.Location = new System.Drawing.Point(452, 355);
            this.btnAbout.Name = "btnAbout";
            this.btnAbout.Size = new System.Drawing.Size(88, 30);
            this.btnAbout.TabIndex = 1;
            this.btnAbout.Text = "Acerca de";
            this.btnAbout.UseVisualStyleBackColor = true;
            this.btnAbout.Click += new System.EventHandler(this.btnAbout_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(409, 110);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(131, 78);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // lblTitulo
            // 
            this.lblTitulo.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblTitulo.AutoSize = true;
            this.lblTitulo.Font = new System.Drawing.Font("Gadugi", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitulo.ForeColor = System.Drawing.Color.White;
            this.lblTitulo.Location = new System.Drawing.Point(69, 131);
            this.lblTitulo.Name = "lblTitulo";
            this.lblTitulo.Size = new System.Drawing.Size(304, 57);
            this.lblTitulo.TabIndex = 0;
            this.lblTitulo.Text = "Cinema Joys";
            this.lblTitulo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(812, 432);
            this.Controls.Add(this.panelContenedor);
            this.Controls.Add(this.MenuVertical);
            this.Controls.Add(this.Titulo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Form1";
            this.Text = "Form1";
            this.Titulo.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.btnRestaurar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnMinim)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnMaxim)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnCerrar)).EndInit();
            this.MenuVertical.ResumeLayout(false);
            this.MenuVertical.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panelContenedor.ResumeLayout(false);
            this.panelContenedor.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel Titulo;
        private System.Windows.Forms.PictureBox btnCerrar;
        private System.Windows.Forms.Panel MenuVertical;
        private System.Windows.Forms.Panel panelContenedor;
        private System.Windows.Forms.PictureBox btnRestaurar;
        private System.Windows.Forms.PictureBox btnMinim;
        private System.Windows.Forms.PictureBox btnMaxim;
        private System.Windows.Forms.Label lblBienv;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblTitulo;
        private System.Windows.Forms.Button btnTiposSala;
        private System.Windows.Forms.Button btnAbout;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button btnGeneros;
        private System.Windows.Forms.Button btnPeliculas;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel5;
    }
}

