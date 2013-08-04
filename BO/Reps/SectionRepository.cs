using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class SectionRepository : Framework.BaseObject<Section>, Framework.IBaseRepository<Section>
	{
		
        public SectionRepository() : base() { }
        public SectionRepository(dbContainer cont) : base(cont) { }

        public Section GetById(int id)
        {
            return db.Sections.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
