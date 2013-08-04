using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class AdministratorRepository : Framework.BaseObject<Administrator>, Framework.IBaseRepository<Administrator>
	{
		
        public AdministratorRepository() : base() { }
        public AdministratorRepository(dbContainer cont) : base(cont) { }

        public Administrator GetById(int id)
        {
            return db.Administrators.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
