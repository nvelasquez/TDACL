using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class FeedRepository : Framework.BaseObject<Feed>, Framework.IBaseRepository<Feed>
	{
		
        public FeedRepository() : base() { }
        public FeedRepository(dbContainer cont) : base(cont) { }

        public Feed GetById(int id)
        {
            return db.Feeds.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
