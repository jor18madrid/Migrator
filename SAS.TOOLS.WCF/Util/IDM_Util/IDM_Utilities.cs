using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;

namespace SAS.TOOLS.WCF.Util.IDM_Util
{
    public static class IDM_Utilities
    {
        public static string replaceStmt(string linea, string stmt, string tagI, string tagF, string campo)
        {
            int i = 0;
            string newStmt = "";
            string campoLower = "";
            string toRemplace = "";

            if(campo == "DIRECCION" || campo == "NRO_ID" || campo == "TIPO_USUARIO_ID")
            {
                if (string.IsNullOrEmpty(linea))
                {
                    campoLower = campo.ToUpper();
                    toRemplace = tagI + campoLower + tagF;
                    newStmt = stmt.Replace(toRemplace, "null");
                    return newStmt;
                }
                else
                {
                    campoLower = campo.ToUpper();
                    toRemplace = tagI + campoLower + tagF;
                    newStmt = stmt.Replace(toRemplace, "'" + linea + "'");
                    return newStmt;
                }
            }

        

            bool canConvert = int.TryParse(linea, out i);
            if (canConvert == true)
            {
                campoLower = campo.ToUpper();
                toRemplace = tagI + campoLower + tagF;
                newStmt = stmt.Replace(toRemplace, linea);
                return newStmt;
            }
            else if (string.IsNullOrEmpty(linea))
            {
                campoLower = campo.ToUpper();
                toRemplace = tagI + campoLower + tagF;
                newStmt = stmt.Replace(toRemplace, "null");
                return newStmt;
            }
            else
            {
                campoLower = campo.ToUpper();
                toRemplace = tagI + campoLower + tagF;
                newStmt = stmt.Replace(toRemplace, "'" + linea + "'");
                return newStmt;
            }
        }
        
}

    public static class jsonString
    {
        public static string jsonToString;
        public static int num;

        public static string JsonToString
        {
            get
            {
                return jsonToString;
            }

            set
            {
                jsonToString = value;
            }
        }

        public static int Num
        {
            get
            {
                return num;
            }

            set
            {
                num = value;
            }
        }
    }
}