using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SAS.TOOLS.WCF.Util
{
    public static class TempConnStringOrigen
    {
        public static string cnnString;

        public static string CnnString
        {
            get
            {
                return cnnString;
            }

            set
            {
                cnnString = value;
            }
        }
    }
}