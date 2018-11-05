using System.Collections.Generic;
using System.Linq;
using SAS.TOOLS.WCF.Util;

namespace SAS.TOOLS.WCF.RDN
{
    public class SAS_GENERADOR
    {
        public string Generador(int idSistema, string dbName)
        {
            //Tag inicial y final de las variables a cambiar en el statement de la macro
            string tagI = "'{||";
            string tagF = "||}'";
            
            string stmtFinal = "";
            string newStmt = "";
            string stmtVl = "";
            string stmtSql = "";
            int stmtLength = 0;
            int numInsert = 0;
            int lstPrioriMax = new SAS_MACRO().SAS_MACRO_Max_Prioridad();

            for (int i = 1; i <= lstPrioriMax; i++)
            {
                var lstMacro = new SAS_MACRO().SAS_MACRO_Filtro_X_Prioridad(i);
                foreach (var macroName in lstMacro)
                {
                    //Obtiene los datos de la macro por el nombre de la misma
                    var macro = new SAS_MACRO().SAS_MACRO_Filtro(macroName.MACRO.ToString());
                    var statement = macro.STATEMENT;
                    var entity = macro.ENTITY;
                    var dto = macro.DTO;
                    var lambdaPropName = macro.LAMBDAPROPNAME;
                    var identJ = macro.IDENTJ;
                    var macroTipe = macro.TIPEM;

                    if (macroTipe.Equals(-1))
                    {
                        stmtVl = Utilities.replaceStmt(idSistema.ToString(), statement, tagI, tagF, "vl_sistema");
                        stmtLength = stmtSql.Length;
                        stmtSql = stmtSql.Insert(stmtLength, stmtVl+"\n" );
                    }
                    else
                    if (macroTipe.Equals(0))
                    {
                        stmtLength = stmtSql.Length;
                        stmtSql = stmtSql.Insert(stmtLength,statement+"\n" );
                    }
                    else
                    {
                        //Se llama a la función donde se crea la consulta y retorna la informacion en un diccionario
                        var dictionary = Utilities.getDicInfo(entity, dto, idSistema, lambdaPropName, identJ, dbName);
                        
                        int stmtConcatCount = dictionary.Count;
                        
                        if (stmtConcatCount == 0)
                        {
                            stmtLength = stmtSql.Length;
                            stmtSql = stmtSql.Insert(stmtLength, "\n" + "--</Para " + macro.MACRO + " no hay resultados>\n");
                        }
                        else
                        {
                            int camposCount = dictionary.FirstOrDefault().Value.Count;
                            string[] stmtConcat = new string[stmtConcatCount];
                            int stmtConcatArrayCont = 0;
                            int contDentroForFinal = 0;
                            int contKeys = 0;
                            numInsert += stmtConcatCount;
                            foreach(var item in dictionary)
                            {
                                //Se obtienen los valores del diccionario dentro del principal
                                var values = dictionary.Where(z => z.Key == contKeys).FirstOrDefault().Value;
                                //Se recorren y reemplazan los valores obtenidos en la statement de la plantilla
                                foreach (var dicInfo in values)
                                {
                                    var dicKey = dicInfo.Key.ToString();
                                    var dicValue = dicInfo.Value?.ToString();

                                    if (contDentroForFinal == 0)
                                    {
                                        stmtFinal = statement;
                                    }
                                    else
                                    {
                                        newStmt = stmtFinal;
                                    }
                                    //Se llama a la funcion para reemplazar los datos obtenidos 
                                    newStmt = string.Join("\n", Utilities.replaceStmt(dicValue, stmtFinal, tagI, tagF, dicKey));
                                    stmtFinal = newStmt;
                                    contDentroForFinal++;
                                }
                                stmtConcat[stmtConcatArrayCont] = stmtFinal;
                                stmtConcatArrayCont++;
                                contDentroForFinal = 0;
                                contKeys++;
                            }
                            var stmtConcatToList = new List<string>(stmtConcat);
                            stmtLength = stmtSql.Length;
                            stmtSql = stmtSql.Insert(stmtLength,(stmtSql = string.Join("\n", stmtConcatToList))+"\n");
                        }
                    }
                }
            }
            stmtSql = stmtSql.Insert(stmtSql.Length, "\n" + "--</Se realizaran " + numInsert + " inserts>\n");
            return  stmtSql;
        }
    }
   
}
