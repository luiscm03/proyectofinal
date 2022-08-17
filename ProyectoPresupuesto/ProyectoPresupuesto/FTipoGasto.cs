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
    public partial class FTipoGasto : Form
    {
        public FTipoGasto()
        {
            InitializeComponent();
        }
        bool Editar;
        int TipoGasto;

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (!validacion()) return;
            if (!guardar()) return;
            finalizar();
        }
        private bool validacion()
        {
            if (string.IsNullOrWhiteSpace(txtGasto.Text))
            {
                MessageBox.Show("Ingrese una descripcion valida");
                return false;
            }

            return true;
        }
        private bool guardar()
        {
            TiposGasto tiposGasto = new TiposGasto
            {
                Denominacion = txtGasto.Text,
                TipoGasto = TipoGasto
            };
            return TiposGasto.Guardar(tiposGasto, Editar);
        }
        private void finalizar()
        {
            ListarGrid();
            limpiar();
        }

        private void limpiar()
        {
            txtGasto.Text = "";
            Editar = false;
        }
        private void ListarGrid()
        {
            dgvDatos.DataSource = TiposGasto.Listar();
            DBDatos.OcultarIds(dgvDatos);
        }

        private void FTipoGasto_Load(object sender, EventArgs e)
        {
            ListarGrid();
        }

       

        private void editarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TipoGasto = Convert.ToInt32(dgvDatos.CurrentRow.Cells["TipoGasto"].Value);
            txtGasto.Text = dgvDatos.CurrentRow.Cells["Denominacion"].Value.ToString();
            Editar = true;
        }
    }
}
