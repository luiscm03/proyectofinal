using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProyectoPresupuesto
{
    public partial class FTipoIngreso : Form
    {
        public FTipoIngreso()
        {
            InitializeComponent();
        }
        bool Editar;
        int TipoIngreso;
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (!validacion()) return;
            if (!guardar()) return;
            finalizar();


        }

        private void finalizar()
        {
            ListarGrid();
            limpiar();
        }

        private void limpiar()
        {
            txtIngreso.Text = "";
            Editar = false;
        }

        private bool guardar()
        {
            TiposIngreso tiposingreso = new TiposIngreso
            {
                Denominacion = txtIngreso.Text,
                TipoIngreso = TipoIngreso
            };
             return TiposIngreso.Guardar(tiposingreso, Editar);
        }

        private bool validacion()
        {
            if (string.IsNullOrWhiteSpace(txtIngreso.Text))
            {
                MessageBox.Show("Ingrese una descripcion valida");
                return false;
            }

            return true;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            ListarGrid();
        }
        private void ListarGrid()
        {
            dgvDatos.DataSource = TiposIngreso.Listar();
            DBDatos.OcultarIds(dgvDatos);
        }

        private void editarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TipoIngreso = Convert.ToInt32(dgvDatos.CurrentRow.Cells["TipoIngreso"].Value);
            txtIngreso.Text = dgvDatos.CurrentRow.Cells["Denominacion"].Value.ToString();    
            Editar = true;
        }
    }
}
