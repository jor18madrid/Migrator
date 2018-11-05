using Newtonsoft.Json;
using Oracle.ManagedDataAccess.Client;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;

namespace SAS.TOOLS.WCF.Util
{
    public static class Execute_Query
    {
        public static int dbOrigen;
        public static int dbDestino;
        public static string stmt;
        public static string result;
        public static string fileName;
        public static int sistemSelected;

        public static int DbOrigen
        {
            get
            {
                return dbOrigen;
            }

            set
            {
                dbOrigen = value;
            }
        }

        public static int DbDestino
        {
            get
            {
                return dbDestino;
            }

            set
            {
                dbDestino = value;
            }
        }

        public static string Stmt
        {
            get
            {
                return stmt;
            }

            set
            {
                stmt = value;
            }
        }

        public static string Result
        {
            get
            {
                return result;
            }

            set
            {
                result = value;
            }
        }

        public static string Execute(string dbName)
        {
            int insCont = 0;
            string sqlStringCon = "";
            string msj = "";

            var filePath = HttpContext.Current.Server.MapPath("~/");
            var currentDirectory = filePath + "..\\SAS.TOOLS.WCF\\JsonFile\\JsonFile.json";
            string fileJson = File.ReadAllText(currentDirectory);
            var lstCreated = JsonConvert.DeserializeObject<List<JsonData>>(fileJson);
            var get = new JsonData().getData(lstCreated, dbName);

            var pswd = get.pswdCnnString;
            var userId = get.idCnnString;
         


            sqlStringCon = "Data Source="+returnDesStringConn()+";PASSWORD="+pswd+";USER ID="+userId+";";
            using (OracleConnection cn = new OracleConnection(sqlStringCon))
            {
                try
                {
                    cn.Open();
                }
                catch(OracleException e)
                {
                    msj = "Code: [" + e.ErrorCode + "] \n" +
                         "Mensaje: " + e.Message;
                }
                OracleCommand cmd = cn.CreateCommand();
                OracleTransaction transaction;

                transaction = cn.BeginTransaction(IsolationLevel.ReadCommitted);
                cmd.Transaction = transaction;

                List<string> CommandList = stmt.Split(';').ToList();

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
               
                    transaction.Commit();
                    msj = "Query ejecutado con éxito!,      "+
                        "\n Se realizaron " + insCont+" acciones";
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
            return msj;
        }

        public static string returnOrStringConn()
        {
            string conStringO;
            var filePath = HttpContext.Current.Server.MapPath("~/");
            var currentDirectory = filePath + "..\\SAS.TOOLS.WCF\\OrigenDestino\\Databases.txt";
            conStringO = File.ReadAllLines(currentDirectory)[(dbOrigen - 1)];
            return conStringO;
        }
        public static string returnDesStringConn()
        {
            string conStringD;
            var filePath = HttpContext.Current.Server.MapPath("~/");
            var currentDirectory = filePath + "..\\SAS.TOOLS.WCF\\OrigenDestino\\Cons.txt";
            conStringD = File.ReadAllLines(currentDirectory)[(dbDestino - 1)];
            return conStringD;
        }
        
        public static void deleteFiles()
        {
            string filePath = HttpContext.Current.Server.MapPath("~/");
            string fullFilePath = filePath+ "ScriptMigracion\\";
            string[] txtList = Directory.GetFiles(fullFilePath,"*.sql");
            if (txtList.Count() != 0)
            {
                foreach (var item in txtList)
                {
                    if(File.Exists(item))
                    {
                        File.Delete(item);
                    }
                }
            }
        }

    }
}
