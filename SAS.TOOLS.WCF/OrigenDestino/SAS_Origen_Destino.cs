using System.Collections.Generic;
using System.Web;

namespace SAS.TOOLS.WCF.OrigenDestino
{
    public class SAS_Origen_Destino
    {
       public List<string> SAS_Origen_Destino_Listado()
        {

            List<string> Dbs = new List<string>();
            int counter = 0;
            string line;
            var filePath = HttpContext.Current.Server.MapPath("~/");
            var currentDirectory = filePath + "OrigenDestino\\Databases.txt";
            System.IO.StreamReader file = new System.IO.StreamReader(currentDirectory);
            while ((line = file.ReadLine()) != null)
            {
                Dbs.Add(line);
                counter++;
            }
            file.Close();
            return Dbs;
        }
    }
}