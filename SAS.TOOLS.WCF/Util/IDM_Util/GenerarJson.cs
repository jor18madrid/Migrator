using Newtonsoft.Json;
using SAS.TOOLS.DTO;
using SAS.TOOLS.DTO.IDM_DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Text;
using System.Web.Mvc;
using System.Web.Script.Serialization;

namespace SAS.TOOLS.WCF.Util.IDM_Util
{
    public class GenerarJson
    {
        public AUX_LOV_USU_CREA_DTO getDataToView(string jsonString)
        {
            var jsonToObj = JsonConvert.DeserializeObject<AUX_LOV_USU_CREA_DTO>(jsonString);
            return jsonToObj;
        }

        public IDM_PERSONAS_DTO getDataToViewPersonas(string jsonString)
        {
            var jsonToObj = JsonConvert.DeserializeObject<IDM_PERSONAS_DTO>(jsonString);
            return jsonToObj;
        }



        public Dictionary<string,string> getDataToViewList(string jsonString)
        {

            var jsonToObj = JsonConvert.DeserializeObject<AUX_LOV_USU_CREA_DTO>(jsonString);
         
            var dic = new Dictionary<string, string>();
            
            foreach (var item in jsonToObj.GetType().GetProperties())
            {

                //if (item.Name == "NIVEL_USUARIO_ID")
                //{
                //    dic.Add(item.Name,jsonToObj.GetType().GetProperty(item.Name).GetValue(jsonToObj));
                //}els
                dic.Add(item.Name, jsonToObj.GetType().GetProperty(item.Name).GetValue(jsonToObj)?.ToString());
            }
            
            return dic;
        }

        //public Dictionary<string, string> getDataToViewListPerGru(string jsonString)
        //{
        //    var jsonToObj = JsonConvert.DeserializeObject<AUX_LOV_USU_CREA_DTO>(jsonString);

        //    var dic = new Dictionary<string, string>();
            
        //    foreach (var item in jsonToObj.GetType().GetProperties())
        //    {
        //        dic.Add(item.Name, jsonToObj.GetType().GetProperty(item.Name).GetValue(jsonToObj)?.ToString());
        //    }

        //    return dic;
        //}





        public Dictionary<string, string> getDataToViewUsuarioList(string jsonString)
    {
        var jsonToObj = JsonConvert.DeserializeObject<IDM_PERSONAS_DTO>(jsonString);

        var dic = new Dictionary<string, string>();


        foreach (var item in jsonToObj.Usuario.GetType().GetProperties())
        {

                if (item.Name == "NOMBRE_USUARIO")
                {
                    dic.Add(item.Name, jsonToObj.PRIMER_NOMBRE + " " + jsonToObj.SEGUNDO_NOMBRE + " " + jsonToObj.PRIMER_APELLIDO + " " + jsonToObj.SEGUNDO_APELLIDO);
                }else if(item.Name == "PUESTO")
                {
                    dic.Add(item.Name, jsonToObj.PUESTO);
                }
                else if(item.Name == "VIGENTE")
                {
                    dic.Add(item.Name, jsonToObj.VIGENTE);
                }
                else
                {
                    dic.Add(item.Name, jsonToObj.Usuario.GetType().GetProperty(item.Name).GetValue(jsonToObj.Usuario)?.ToString());
                }
        }
        return dic;
    }


        public List<AUX_LOV_PERFILES_GRUPOS_DTO> getDataToViewLST(string jsonString)
        {
            var jsonToObj = JsonConvert.DeserializeObject<AUX_LOV_USU_CREA_DTO>(jsonString);

            var lst = new List<AUX_LOV_PERFILES_GRUPOS_DTO>();

            foreach (var item in jsonToObj.Perfil_Grupo)
            {
                lst.Add(item);
            }
            return lst;
        }






    }


public class PersonasDTOList
    {
        public List<IDM_PERSONAS_DTO> LST { get; set; }
    }


}