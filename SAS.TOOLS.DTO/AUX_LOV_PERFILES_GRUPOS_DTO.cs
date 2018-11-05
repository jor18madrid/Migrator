using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.DTO
{
    public class AUX_LOV_PERFILES_GRUPOS_DTO
    {
        private int _ID_GRUPO;
        private string _NOMBRE_GRUPO;
        private int _ID_PERFIL;
        private string _NOMBRE_PERFIL;
        public AUX_LOV_PERFILES_GRUPOS_DTO() { }
        public int ID_GRUPO
        {
            get
            {
                return _ID_GRUPO;
            }
            set
            {
                _ID_GRUPO = value;
            }
        }
        public string NOMBRE_GRUPO
        {
            get
            {
                return _NOMBRE_GRUPO;
            }
            set
            {
                _NOMBRE_GRUPO = value;
            }
        }
        public int ID_PERFIL
        {
            get
            {
                return _ID_PERFIL;
            }
            set
            {
                _ID_PERFIL = value;
            }
        }
        public string NOMBRE_PERFIL
        {
            get
            {
                return _NOMBRE_PERFIL;
            }
            set
            {
                _NOMBRE_PERFIL = value;
            }
        }
    }
}
