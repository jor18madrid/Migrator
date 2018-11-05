using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using SAS.TOOLS.REPOSITORY;
using System.Linq.Expressions;
using System.Web.Configuration;
using SAS.TOOLS.WCF.RDN;

namespace SAS.TOOLS.WCF.Util
{
    public static class Utilities
    {

     
        public static string replaceStmt(string linea, string stmt, string tagI, string tagF, string campo)
        {
            int i = 0;
            string newStmt = "";
            string campoLower = "";
            string toRemplace = "";
            bool canConvert = int.TryParse(linea, out i);
            if (canConvert == true)
            {
                campoLower = campo.ToLower();
                toRemplace = tagI + campoLower + tagF;
                newStmt = stmt.Replace(toRemplace,linea);
                return newStmt;
            }
            else if(string.IsNullOrEmpty(linea))
            {
                campoLower = campo.ToLower();
                toRemplace = tagI + campoLower + tagF;
                newStmt = stmt.Replace(toRemplace,"null");
                return newStmt;
            }
            else
            {
                campoLower = campo.ToLower();
                toRemplace = tagI + campoLower + tagF;
                newStmt = stmt.Replace(toRemplace, "'" + linea + "'");
                return newStmt;
            }
        }
        public static Dictionary<int, Dictionary<string, string>> CreateDictionaryInfo(IQueryable lst, object Instance)
        {
            int i = 0;
            var dictionary = new Dictionary<int, Dictionary<string, string>>();
            foreach (var item in lst)
            {
                foreach (var prop in Instance.GetType().GetProperties())
                {
                    var valueProp = item.GetType().GetProperty(prop.Name).GetValue(item)?.ToString();
                    if (!dictionary.ContainsKey(i))
                    {
                        dictionary.Add(i, new Dictionary<string, string> { { prop.Name, valueProp } });
                    }
                    else
                    {
                        dictionary[i].Add(prop.Name, valueProp);
                    }
                }
                i++;
            }
            return dictionary;
        }

        public static Dictionary<int, Dictionary<string, string>> getDicInfo(string entity, string dto, int id_sistema,string lambdaPropName,int identJ,string dbName)
        {
            string typeDaString = "SAS.TOOLS.DA." + entity + ",SAS.TOOLS.DA";
            Type typeDa = Type.GetType(typeDaString);

            string typeEntitiesDa = WebConfigurationManager.AppSettings["AssemblySasDa"];
            Type typeEntities = Type.GetType(typeEntitiesDa);

            string typeDtoString = "SAS.TOOLS.DTO." + dto + ",SAS.TOOLS.DTO";
            Type typeDto = Type.GetType(typeDtoString);
            var instanceDto = Activator.CreateInstance(typeDto);

            var typeRepository = typeof(RepositoryBase<,>);
            Type[] typeArguments = { typeEntities, typeDa };
            
            var makeGenericClass = typeRepository.MakeGenericType(typeArguments);
            object repositoryInstance = Activator.CreateInstance(makeGenericClass, new[] { Activator.CreateInstance(typeEntities,new[] {dbName}) });
            MethodInfo theMethod = makeGenericClass.GetMethod(Repository.GetList.Value);

            int idSistema = id_sistema;
            string propName = lambdaPropName;
            var parameter = Expression.Parameter(typeDa, "r");
            
            if (identJ.Equals(1)){
                Expression bodyJ = parameter;
                foreach (var subMember in propName.Split('.'))
                {
                    bodyJ = Expression.PropertyOrField(bodyJ, subMember);
                }
                var lambdaJ = Expression.Lambda(Expression.Equal(bodyJ, Expression.Constant(idSistema, bodyJ.Type)), parameter);
                var valueJ = theMethod.Invoke(repositoryInstance, new[] { lambdaJ });
                var lstJ = ((IQueryable)valueJ);
                return CreateDictionaryInfo(lstJ, instanceDto);
            }
            else
            if(identJ.Equals(2)){

                var list = (new SAS_PERFIL_FLUJO_OPE_RDN().SAS_PERFIL_FLUJO_OPE_Filtrado_IDPERFIL_X_Sistema(idSistema,dbName)).AsQueryable();

                return CreateDictionaryInfo(list, instanceDto);
            }
            else{
                var constant = Expression.Constant(idSistema);
                var member = Expression.Property(parameter, propName);
                Expression body = Expression.Equal(member, Expression.Convert(constant, member.Type));
                var lambda = Expression.Lambda(body, parameter);
                var value = theMethod.Invoke(repositoryInstance, new[] { lambda });
                var lst = (IQueryable)value;
                return CreateDictionaryInfo(lst, instanceDto);
            }
        }
    }
    public class Repository
    {
        public string Value { get; set; }   
        public Repository(string value) { Value = value; }
        public static Repository GetList { get { return (new Repository("GetList"));}}
        public static Repository Add { get { return (new Repository("Add"));}}
        public static Repository Remove { get { return (new Repository("Remove"));}}   

    }

}