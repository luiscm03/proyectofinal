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
    public partial class FGastos : Form
    {
        public FGastos()
        {
            InitializeComponent();
        }
        public int IDGasto;
        public bool Editar;

        private void FGastos_Load(object sender, EventArgs e)
        {
            ListarCombo();
        }
        private void ListarCombo()
        {
            TiposGasto.ListarCombo(cboTipoGasto);
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (!agregar()) return;
            finalizar();
        }
        private void finalizar()
        {
            txtDescripcion.Text = "";
            txtMonto.Text = "";
            Editar = false;
            cboTipoGasto.SelectedIndex = -1;
        }
        private bool agregar()
        {
            Gasto Gasto = new Gasto
            {
                Descripcion = txtDescripcion.Text,
                Fecha = dtpFecha.Value.ToShortDateString(),
                Monto = Convert.ToDecimal(txtMonto.Text),
                IDGasto = IDGasto,
                TipoGasto = Convert.ToInt32(cboTipoGasto.SelectedValue)
            };
            if (Gasto.Agregar(Gasto, Editar))
            {
                MessageBox.Show("Operacion correcta");
                return true;
            }
            else return false;
        }

        private void btnTipoGasto_Click(object sender, EventArgs e)
        {
            FTipoGasto frm = new FTipoGasto();
            frm.ShowDialog();
        }

        private void cboTipoGasto_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.F5)
            {
                ListarCombo();
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            finalizar();
        }
    }
}
