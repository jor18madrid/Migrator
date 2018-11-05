using SAS.TOOLS.DTO;
using SAS.TOOLS.DA;
using SAS.TOOLS.MAPPERS;
using System.Collections.Generic;
using System.Linq;
using System;

namespace SAS.TOOLS.WCF.OrigenDestino
{
    public class SAS_Formato
    {
        public List<string> SAS_Formato_Listado()
        {
            string[] formats =
            {
         "SQL Statement",
         "Ejecutar Query"
        };
            List<string> showFormats = new List<string>();

            foreach (var item in formats)
            {

                showFormats.Add(item);
            }
            return showFormats;
        }



    }
}