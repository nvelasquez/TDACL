using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class AdministratorContactRepository : Framework.BaseObject<AdministratorContact>, Framework.IBaseRepository<AdministratorContact>
	{
		
        public AdministratorContactRepository() : base() { }
        public AdministratorContactRepository(dbContainer cont) : base(cont) { }

        public AdministratorContact GetById(int id)
        {
            return db.AdministratorContacts.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
