using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SAS.TOOLS.WCF.Util.IDM_Util
{
    public static class GenerarScriptsPerfGrup
    {

        public static string Generador(string dto)
        {

            var dataToView = new GenerarJson().getDataToViewList(dto);
            var dataToViewPerGrup = new GenerarJson().getDataToViewLST(dto);
            

            string tagI = "'{||";
            string tagF = "||}'";
            string stmtSql = "";
            string stmtFinal = "";
            string newStmt = "";
            int stmtLength;

            int lstOrdenMax = new IDM_MACRO.IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_A_USUARIOS_TEST().MACRO_Max_Orden();


            for (int i = 0; i <= lstOrdenMax; i++)
            {
                var dic = new Dictionary<string, string>();
                var lstMacro = new IDM_MACRO.IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_A_USUARIOS_TEST().MACRO_Filtro_X_Orden(i);
                foreach (var item in lstMacro)
                {
                    if (item.ORDNEN == 3)
                    {
                       
                            foreach (var itemw in dataToViewPerGrup)
                            {
                                foreach (var items in itemw.GetType().GetProperties())
                                {
                                    dic.Add(items.Name, items.GetValue(itemw)?.ToString());
                                }
                            
                            var macro = new IDM_MACRO.IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_A_USUARIOS_TEST().MACRO_Filtro(item.NOMBRE.ToString());
                            var statement = macro.STATEMENT;
                            int contDentroForFinal = 0;
                            foreach (var itemProp in dic)
                            {
                                    if (itemProp.Key == "ID_PERFIL" )
                                    {
                                        contDentroForFinal = 0;
                                        var stm = new IDM_MACRO.IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_A_USUARIOS_TEST().MACRO_Filtro("Insert_into_MDSAS.SAS_ACCESOS_PERFILES");
                                        if (contDentroForFinal == 0)
                                        {
                                            stmtFinal = stm.STATEMENT;
                                        }
                                        else
                                        {
                                            newStmt = stmtFinal;
                                        }

                                        newStmt = string.Join("\n", IDM_Utilities.replaceStmt(itemProp.Value?.ToString(), stmtFinal, tagI, tagF, itemProp.Key?.ToString()));
                                        stmtFinal = newStmt;
                                        contDentroForFinal++;

                                        foreach (var items in dataToView)
                                        {


                                            if (contDentroForFinal != 0)
                                           
                                            {
                                                newStmt = stmtFinal;
                                            }
                                            newStmt = string.Join("\n", IDM_Utilities.replaceStmt(items.Value?.ToString(), stmtFinal, tagI, tagF, items.Key?.ToString()));
                                            stmtFinal = newStmt;
                                            contDentroForFinal++;
                                        }
                                        stmtLength = stmtSql.Length;
                                        stmtSql = stmtSql.Insert(stmtLength, stmtFinal);
                                    }
                                    
                               

                                }
                            dic.Clear();
                            }
                        foreach (var itemw in dataToViewPerGrup)
                        {
                            foreach (var items in itemw.GetType().GetProperties())
                            {
                                dic.Add(items.Name, items.GetValue(itemw)?.ToString());
                            }

                            var macro = new IDM_MACRO.IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_A_USUARIOS_TEST().MACRO_Filtro(item.NOMBRE.ToString());
                            var statement = macro.STATEMENT;
                            int contDentroForFinal = 0;
                            foreach (var itemProp in dic)
                            {
                             
                                if (itemProp.Key == "ID_GRUPO" && (itemProp.Value != "0"))
                                {
                                    contDentroForFinal = 0;
                                    var stm = new IDM_MACRO.IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_A_USUARIOS_TEST().MACRO_Filtro("Insert_into_MDSAS.SAS_ACCESOS_GRUPOS");
                                    if (contDentroForFinal == 0)
                                    {
                                        stmtFinal = stm.STATEMENT;
                                    }
                                    else
                                    {
                                        newStmt = stmtFinal;
                                    }

                                    newStmt = string.Join("\n", IDM_Utilities.replaceStmt(itemProp.Value?.ToString(), stmtFinal, tagI, tagF, itemProp.Key?.ToString()));
                                    stmtFinal = newStmt;
                                    contDentroForFinal++;

                                    foreach (var items in dataToView)
                                    {


                                        if (contDentroForFinal != 0)

                                        {
                                            newStmt = stmtFinal;
                                        }
                                        newStmt = string.Join("\n", IDM_Utilities.replaceStmt(items.Value?.ToString(), stmtFinal, tagI, tagF, items.Key?.ToString()));
                                        stmtFinal = newStmt;
                                        contDentroForFinal++;
                                    }
                                    stmtLength = stmtSql.Length;
                                    stmtSql = stmtSql.Insert(stmtLength, stmtFinal);
                                }

                            }
                            dic.Clear();
                        }

                        break;
                    }
                    else
                    {

                        var macro = new IDM_MACRO.IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_A_USUARIOS_TEST().MACRO_Filtro(item.NOMBRE.ToString());
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
            }
            return stmtSql;
        }



    }
}