using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProyectoPresupuesto
{
    internal class TiposIngreso
    {
        public int TipoIngreso { get; set; }
        public string Denominacion { get; set; }
        public static bool Guardar(TiposIngreso tiposIngreso, bool editar)
        {
            List<Parametro> parametros = new List<Parametro>
            {
                new Parametro("@Denominacion", tiposIngreso.Denominacion),
            new Parametro("@TipoIngreso", tiposIngreso.TipoIngreso),
            new Parametro("@Editar", editar),
        };


            return DBDatos.Ejecutar("TipoIngreso_Agregar", parametros);

        }
        public static DataTable Listar()
        {
             return DBDatos.Listar("TipoIngreso_Listar");
        }
        public static void ListarCombo(ComboBox comboBox)
        {
            DBDatos.ListarCombo(Listar(), "Denominacion", "TipoIngreso", comboBox);
        }
    }
}
       
  

      
        

    


