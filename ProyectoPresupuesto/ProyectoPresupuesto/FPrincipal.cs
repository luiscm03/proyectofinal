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
    public partial class FPrincipal : Form
    {
        public FPrincipal()
        {
            InitializeComponent();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            FIngreso frm = new FIngreso();
            frm.ShowDialog();
            ListarMovimiento();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void tabPage5_Click(object sender, EventArgs e)
        {

        }

        private void tabPage2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            FGastos frm = new FGastos();
            frm.ShowDialog();
            ListarMovimiento();
        }

        private void dgvMovimiento_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void FPrincipal_Load(object sender, EventArgs e)
        {
            txtAño.Text = DateTime.Now.Year.ToString();
            cboMes.SelectedIndex = (DateTime.Now.Month - 1);
            ListarMovimiento();

        }

        private void ListarMovimiento()
        {
            List<Parametro> parametros = new List<Parametro>()
            {
                new Parametro("@Mes", cboMes.SelectedIndex + 1),
                new Parametro ("@Año", txtAño.Text),


            };
            dgvMovimiento.DataSource = DBDatos.Listar("Movimiento_Listar", parametros);



        }
            private void btnBuscar_Click(object sender, EventArgs e)
            {
                ListarMovimiento();
            }

            //public void pintar()
            //{
            //   foreach (DataGridView fila in dgvMovimiento.Rows)
            //    {
            //       string movimiento = fila.Cells["Movimiento"].Value.ToString();
            //       fila.DefaultCellStyle.BackColor = movimiento.Equals("I") ? Color.Lime : Color.MistyRose;
            //    }
            //}



        }
    }
