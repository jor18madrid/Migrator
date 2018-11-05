using Oracle.ManagedDataAccess.Client;
using SAS.TOOLS.DA;

namespace SAS.TOOLS.WCF.Util
{
    public static class ConnectionStringSetting
    {
        public static string conStrings(string dS)
        {
            OracleConnectionStringBuilder connStrBuilder = new OracleConnectionStringBuilder();
            //connStrBuilder.UserID
            connStrBuilder["User ID"] = "MDSAS";
            //connStrBuilder.Password
            connStrBuilder["PASSWORD"] = "mdsasdev";
            //connStrBuilder.DataSource
            connStrBuilder["Data Source"] = dS;
            string finalConnString = connStrBuilder.ConnectionString;
            return finalConnString;
        }


































        //Funciones que pueden ser utiles en un futuro ⬇

        //static void GetTempConnectionStrings()
        //{

        //    ConnectionStringSettingsCollection settings =
        //        ConfigurationManager.ConnectionStrings;

        //    if (settings != null)
        //    {
        //        foreach (ConnectionStringSettings cs in settings)
        //        {
        //            var name = cs.Name;
        //            var prName = cs.ProviderName;
        //            var cString = cs.ConnectionString;
        //        }
        //    }
        //}

        //static string GetConnectionStringByIndex(int index)
        //{
        //    // Assume failure.
        //    string returnValue = null;

        //    // Look for the name in the connectionStrings section.
        //    ConnectionStringSettings settings =
        //        ConfigurationManager.ConnectionStrings[index];

        //    // If found, return the connection string.
        //    if (settings != null)
        //        returnValue = settings.ConnectionString;

        //    return returnValue;
        //}

        //static string GetConnectionStringByProvider(string providerName)
        //{
        //    // Return null on failure.
        //    string returnValue = null;

        //    // Get the collection of connection strings.
        //    ConnectionStringSettingsCollection settings =
        //        ConfigurationManager.ConnectionStrings;

        //    // Walk through the collection and return the first 
        //    // connection string matching the providerName.
        //    if (settings != null)
        //    {
        //        foreach (ConnectionStringSettings cs in settings)
        //        {
        //            if (cs.ProviderName == providerName)
        //                returnValue = cs.ConnectionString;
        //            break;
        //        }
        //    }
        //    return returnValue;
        //}
    }
}
