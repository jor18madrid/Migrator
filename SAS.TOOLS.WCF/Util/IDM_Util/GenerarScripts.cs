using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SAS.TOOLS.WCF.Util.IDM_Util
{
    public static  class GenerarScripts
    {
        

        public static string Generador(string dto) 
        {

            var dataToView = new GenerarJson().getDataToViewList(dto);
         

            string tagI = "'{||";
            string tagF = "||}'";
            string stmtSql = "";
            string stmtFinal="";
            string newStmt="";
            int stmtLength;

            int lstOrdenMax = new IDM_MACRO.IDM_MACRO_CREAR_USUARIO_TEST().MACRO_Max_Orden();


            for (int i = 0; i <= lstOrdenMax; i++)
            {
                var lstMacro = new IDM_MACRO.IDM_MACRO_CREAR_USUARIO_TEST().MACRO_Filtro_X_Orden(i);
                foreach (var item in lstMacro)
                {
                    var macro = new IDM_MACRO.IDM_MACRO_CREAR_USUARIO_TEST().MACRO_Filtro(item.NOMBRE.ToString());
                    var statement = macro.STATEMENT;

                    int contDentroForFinal = 0;


                        foreach (var itemProp in dataToView)
                        {
                            var value = itemProp;

                            if (contDentroForFinal == 0)
                            {
                                stmtFinal = statement;
                            }
                            else
                            {
                                newStmt = stmtFinal;
                            }
                       newStmt = string.Join("\n", IDM_Utilities.replaceStmt(itemProp.Value?.ToString(), stmtFinal, tagI, tagF, itemProp.Key?.ToString()));
                            stmtFinal = newStmt;
                            contDentroForFinal++;
                        }

                        stmtLength = stmtSql.Length;
                        stmtSql = stmtSql.Insert(stmtLength, stmtFinal);
                    }
            }
            return stmtSql;
        }
    }
}