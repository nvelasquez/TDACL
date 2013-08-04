using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class ImageRepository : Framework.BaseObject<Image>, Framework.IBaseRepository<Image>
	{
		
        public ImageRepository() : base() { }
        public ImageRepository(dbContainer cont) : base(cont) { }

        public Image GetById(int id)
        {
            return db.Images.FirstOrDefault(x => x.Id == id);
        }
		
	}
}
