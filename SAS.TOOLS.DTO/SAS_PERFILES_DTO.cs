﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.DTO
{
   public class SAS_PERFILES_DTO
    {

        public int ID_PERFIL { get; set; }
        public int ID_SISTEMA { get; set; }
        public string NOMBRE_PERFIL { get; set; }
        public string DESC_PERFIL { get; set; }
        public string TIPO_PERFIL { get; set; }
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
    }
}
