using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProyectoPresupuesto
{
    internal class Gasto
    {
        public int IDGasto { get; set; }
        public string Fecha { get; set; }
        public int TipoGasto { get; set; }
        public decimal Monto { get; set; }
        public string Descripcion { get; set; }


        public static bool Agregar(Gasto Gasto, bool Editar)
        {
            List<Parametro> parametros = new List<Parametro>
            {
                new Parametro("@Fecha", Gasto.Fecha),
                new Parametro("@TipoGasto", Gasto.TipoGasto),
                new Parametro("@Monto", Gasto.Monto),
                new Parametro("@Descripcion", Gasto.Descripcion),
                new Parametro ("@IDGasto", Gasto.IDGasto),
                new Parametro ("@Editar", Editar)
            };
            return DBDatos.Ejecutar("Gasto_Agregar", parametros);
        }
    }
}



