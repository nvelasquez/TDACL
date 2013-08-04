using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class SeccioneRepository : Framework.BaseObject<Seccione>, Framework.IBaseRepository<Seccione>
	{
		
        public SeccioneRepository() : base() { }
        public SeccioneRepository(dbContainer cont) : base(cont) { }

        public Seccione GetById(int id)
        {
            return db.Secciones.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
