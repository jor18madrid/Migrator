using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SAS.TOOLS.WCF.Util.IDM_Util
{
    public static class ExecuteQueryUserTest
    {
        private static string crearUsuarioStmt;
        private static string asignarPerfilesGrupos;
        private static int numPerfGrup;

        public static string CrearUsuarioStmt
        {
            get
            {
                return crearUsuarioStmt;
            }

            set
            {
                crearUsuarioStmt = value;
            }
        }

        public static string AsignarPerfilesGrupos
        {
            get
            {
                return asignarPerfilesGrupos;
            }

            set
            {
                asignarPerfilesGrupos = value;
            }
        }

        public static int NumPerfGrup
        {
            get
            {
                return numPerfGrup;
            }

            set
            {
                numPerfGrup = value;
            }
        }

        public static string Execute ()
        {
            int insCont = 0;
            string msj = "";

            //palo4lto; USER ID = IDMANAGER





            using (OracleConnection cn = new OracleConnection("Data Source=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=172.16.48.173)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=DESA)));PASSWORD=palo4lto;USER ID=IDMANAGER;"))
            {
                try
                {
                    cn.Open();
                }
                catch (OracleException e)
                {
                    msj = "Code: [" + e.ErrorCode + "] \n" +
                         "Mensaje: " + e.Message;
                }
                OracleCommand cmd = cn.CreateCommand();
                OracleTransaction transaction;

                transaction = cn.BeginTransaction(IsolationLevel.ReadCommitted);
                cmd.Transaction = transaction;

                List<string> CommandList = crearUsuarioStmt.Split(';').ToList();

                CommandList.Select(x => x.Replace(';', ' '));
                try
                {
                    foreach (var item in CommandList)
                    {
                        string[] split = item.Split(new char[] { '\t', '\n', '\r' });

                        foreach (var items in split)
                        {
                            if (items.Trim() != "" && !items.Contains("--<"))
                            {
                                cmd.CommandText = items;
                                cmd.ExecuteNonQuery();
                                insCont++;
                            }
                        }
                    }
                    transaction.Rollback();

                    //transaction.Commit();
                    msj = "Query ejecutado con éxito!,      " +
                        "\n Se realizaron " + insCont + " acciones";
                    insCont = 0;
                    cmd.Dispose();
                    cn.Close();

                }
                catch (OracleException e)
                {
                    transaction.Rollback();

                    msj = "Code: [" + e.ErrorCode + "] \n" +
                        "Mensaje: " + e.Message;
                }
               
            }
            if (numPerfGrup > 0)
            {
                using (OracleConnection cn = new OracleConnection("Data Source=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=172.16.48.173)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=DESA)));PASSWORD=mdsasdev;USER ID=MDSAS2;"))
                {

                    try
                    {
                        cn.Open();
                    }
                    catch (OracleException e)
                    {
                        msj = "Code: [" + e.ErrorCode + "] \n" +
                             "Mensaje: " + e.Message;
                    }
                    OracleCommand cmd = cn.CreateCommand();
                    OracleTransaction transaction;

                    transaction = cn.BeginTransaction(IsolationLevel.ReadCommitted);
                    cmd.Transaction = transaction;

                    List<string> CommandList = asignarPerfilesGrupos.Split(';').ToList();

                    CommandList.Select(x => x.Replace(';', ' '));
                    try
                    {
                        foreach (var item in CommandList)
                        {
                            string[] split = item.Split(new char[] { '\t', '\n', '\r' });

                            foreach (var items in split)
                            {
                                if (items.Trim() != "" && !items.Contains("--<"))
                                {
                                    cmd.CommandText = items;
                                    cmd.ExecuteNonQuery();
                                    insCont++;
                                }
                            }
                        }
                        transaction.Rollback();

                        //transaction.Commit();
                        msj = "Query ejecutado con éxito!,      " +
                            "\n Se realizaron " + insCont + " acciones";
                        insCont = 0;
                        cmd.Dispose();
                        cn.Close();

                    }
                    catch (OracleException e)
                    {
                        transaction.Rollback();

                        msj = "Code: [" + e.ErrorCode + "] \n" +
                            "Mensaje: " + e.Message;
                    }

                }
            }
            else
            {
                msj = "No se asignaron perfiles ni grupos ,asignar manualmente";
            }
            return msj;
        }




    }
}