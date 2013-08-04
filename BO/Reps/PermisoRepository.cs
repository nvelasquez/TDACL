using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class PermisoRepository : Framework.BaseObject<Permiso>, Framework.IBaseRepository<Permiso>
	{
		
        public PermisoRepository() : base() { }
        public PermisoRepository(dbContainer cont) : base(cont) { }

        public Permiso GetById(int id)
        {
            return db.Permisos.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
