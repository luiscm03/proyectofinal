using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProyectoPresupuesto
{
    internal class TiposGasto
    {
        public int TipoGasto { get; set; }
        public string Denominacion { get; set; }
        public static bool Guardar(TiposGasto tiposGasto, bool editar)
        {
            List<Parametro> parametros = new List<Parametro>
            {
                new Parametro("@Denominacion", tiposGasto.Denominacion),
                new Parametro("TipoGasto", tiposGasto.TipoGasto),
                new Parametro("@Editar", editar),
            };
            return DBDatos.Ejecutar("TipoGasto_Agregar", parametros);
        }
        public static DataTable Listar()
        {
            return DBDatos.Listar("TipoGasto_Listar");
        }
        public static void ListarCombo(ComboBox comboBox)
        {
            DBDatos.ListarCombo(Listar(), "Denominacion", "TipoGasto", comboBox);
        }

    }
}
