using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BO.Framework
{
    public interface IBaseRepository<T>
    {

        T GetById(int id);

    }
}
