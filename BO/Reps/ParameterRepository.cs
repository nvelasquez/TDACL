using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class ParameterRepository : Framework.BaseObject<Parameter>, Framework.IBaseRepository<Parameter>
	{
		
        public ParameterRepository() : base() { }
        public ParameterRepository(dbContainer cont) : base(cont) { }

        public Parameter GetById(int id)
        {
            return db.Parameters.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
