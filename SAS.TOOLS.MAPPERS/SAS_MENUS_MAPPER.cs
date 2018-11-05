using System;
using SAS.TOOLS.DTO;
using SAS.TOOLS.DA;
using System.Collections.Generic;

namespace SAS.TOOLS.MAPPERS
{
  public static  class SAS_MENUS_MAPPER
    {

        public static SAS_MENUS_DTO ToDto(this SAS_MENUS Entity)
        {


            var dto = new SAS_MENUS_DTO();

            dto. ID_MENU = Entity.ID_MENU;
            dto.ID_SISTEMA = Entity.ID_SISTEMA;
            dto.NOMBRE_MENU = Entity.NOMBRE_MENU;
            dto.ID_MENU_PADRE = Entity.ID_MENU_PADRE;
            dto.ORDEN = Entity.ORDEN;
            dto.JERARQUIA = Entity.JERARQUIA;
            dto.METODO = Entity.METODO;
            dto.DESC_MENU = Entity.DESC_MENU;
            dto.TIPO_MENU = Entity.TIPO_MENU;
            dto.ICO_MENU = Entity.ICO_MENU;
            dto.TOOLTIP = Entity.TOOLTIP;
            dto.VIGENTE = Entity.VIGENTE;
            dto.HABILITADO = Entity.HABILITADO;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;
            dto.FEC_MOD = Entity.FEC_MOD;

            return dto;

                }


        public static List<SAS_MENUS_DTO> ToDtoList(this List<SAS_MENUS> ListEntity)
        {
            List<SAS_MENUS_DTO> dtos = new List<SAS_MENUS_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }


    }
}
