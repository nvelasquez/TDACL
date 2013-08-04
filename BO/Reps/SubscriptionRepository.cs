using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class SubscriptionRepository : Framework.BaseObject<Subscription>, Framework.IBaseRepository<Subscription>
	{
		
        public SubscriptionRepository() : base() { }
        public SubscriptionRepository(dbContainer cont) : base(cont) { }

        public Subscription GetById(int id)
        {
            return db.Subscriptions.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
