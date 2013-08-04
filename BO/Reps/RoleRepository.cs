using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class RoleRepository : Framework.BaseObject<Role>, Framework.IBaseRepository<Role>
	{
		
        public RoleRepository() : base() { }
        public RoleRepository(dbContainer cont) : base(cont) { }

        public Role GetById(int id)
        {
            return db.Roles.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
