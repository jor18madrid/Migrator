using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SAS.TOOLS.WCF.Util
{
    public class JsonData
    {

        public string nombreDb { get; set; }
        public string idCnnString { get; set; }
        public string pswdCnnString { get; set; }


        public JsonData getData(List<JsonData> lst,string dbName)
        {
            return (from x in lst where x.nombreDb == dbName select x).FirstOrDefault();
        }
    }
}