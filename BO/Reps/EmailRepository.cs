using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class EmailRepository : Framework.BaseObject<Email>, Framework.IBaseRepository<Email>
	{
		
        public EmailRepository() : base() { }
        public EmailRepository(dbContainer cont) : base(cont) { }

        public Email GetById(int id)
        {
            return db.Emails.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
