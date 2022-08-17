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
    public partial class FIngreso : Form
    {
        public FIngreso()
        {
            InitializeComponent();
        }
        public int IDIngreso;
        public bool Editar;
        private void FIngreso_Load(object sender, EventArgs e)
        {
            ListarCombo();
        }

        private void ListarCombo()
        {
            TiposIngreso.ListarCombo(cboTipoIngreso);
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
            cboTipoIngreso.SelectedIndex = -1;
        }

        private bool agregar()
        {
            Ingreso ingreso = new Ingreso
            {
                Descripcion = txtDescripcion.Text,
                Fecha = dtpFecha.Value.ToShortDateString(),
                Monto = Convert.ToDecimal(txtMonto.Text),
                IDIngreso = IDIngreso,
                TipoIngreso = Convert.ToInt32(cboTipoIngreso.SelectedValue)
            };
            if (Ingreso.Agregar(ingreso, Editar))
            {
                MessageBox.Show("Operacion correcta");
                return false;
            }
            else return false;
        }

        private void btnTipoIngreso_Click(object sender, EventArgs e)
        {
            FTipoIngreso frm = new FTipoIngreso();
            frm.ShowDialog();
        }

        private void cboTipoIngreso_KeyDown(object sender, KeyEventArgs e)
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


