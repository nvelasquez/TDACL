using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;

namespace BO.Reps
{ 

	public class UsuarioRepository : Framework.BaseObject<Usuario>, Framework.IBaseRepository<Usuario>
	{
		
        public UsuarioRepository() : base() { }
        public UsuarioRepository(dbContainer cont) : base(cont) { }

        public Usuario GetById(int id)
        {
            return db.Usuarios.FirstOrDefault(x => x.Id == id);
        }

        public bool IsUserValid(Usuario usuario)
        {
            return db.Usuarios.Where(u => u.UserName == usuario.UserName && u.Password == usuario.Password).Count() > 0 ? true : false;
        }
	}
}
