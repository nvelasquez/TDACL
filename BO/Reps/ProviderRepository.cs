using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class ProviderRepository : Framework.BaseObject<Provider>, Framework.IBaseRepository<Provider>
	{
		
        public ProviderRepository() : base() { }
        public ProviderRepository(dbContainer cont) : base(cont) { }

        public Provider GetById(int id)
        {
            return db.Providers.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
