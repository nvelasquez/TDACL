using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Linq.Expressions;
using DAL;
using System.Data.Objects;
using System.Data.Metadata.Edm;

namespace BO.Framework
{
    public abstract class BaseObject<T> where T : class
    {
        /// <summary>
        /// Contexto bajo el cual se esta ejecutando
        /// </summary>
        public dbEntities db;

        /// <summary>
        /// Constructor por defecto que inicializa las entidades
        /// </summary>
        public BaseObject()
        {
            db = new dbEntities();
        }

        /// <summary>
        /// Recibe un parametro context para trabajar en base al mismo
        /// </summary>
        /// <param name="cont">Context sobre el cual se va a trabajar</param>
        public BaseObject(dbEntities cont)
        {
            db = cont;
        }

        /// <summary>
        /// Borrar una Entidad
        /// </summary>
        /// <param name="entity">Entidad</param>
        public virtual string Delete(T entity)
        {
            db.DeleteObject(entity);
            db.SaveChanges();

            return "";
        }

        /// <summary>
        /// Actualizar una entidad
        /// </summary>
        /// <param name="entity">Entidad</param>
        public virtual string Update(T entity)
        {
            ObjectStateEntry stateEntry = null;

            if (db.ObjectStateManager.TryGetObjectStateEntry(entity, out stateEntry))
            {
                db.ObjectStateManager.ChangeObjectState(entity, System.Data.EntityState.Unchanged);
            }


            db.AttachTo(GetEntitySetName(db, entity), entity);
            db.ObjectStateManager.ChangeObjectState(entity, System.Data.EntityState.Modified);

            db.SaveChanges();

            return "";
        }

        /// <summary>
        /// Agregar una entidad. 
        /// Si tiene mas de un SET debe sobreescribirse este metodo en la clase
        /// que lo implementa
        /// </summary>
        /// <param name="entity">Entidad</param>
        public virtual string Add(T entity)
        {
            db.CreateObjectSet<T>().AddObject(entity);
            db.SaveChanges();

            return "";
        }



        /// <summary>
        /// Utilizado para hacer una busqueda
        /// </summary>
        /// <param name="specification">Parametros</param>
        /// <returns>La entidad que implementa la clase abstracta</returns>
        protected T Find(Expression<Func<T, bool>> specification)
        {
            return db.CreateObjectSet<T>().SingleOrDefault(specification);
        }

        /// <summary>
        /// Trae todos los objetos de la coleccion.
        /// Si tiene mas de un SET debe sobreescribirse este metodo en la clase
        /// que lo implementa
        /// </summary>
        /// <returns>Una coleccion de la clase abstracta que lo implementa</returns>
        public virtual IQueryable<T> GetAll()
        {
            //var xLinq = from x in db.CreateObjectSet<T>()
            //            select x;

            //return xLinq;

            return db.CreateObjectSet<T>();
        }

        public static string GetEntitySetName(dbEntities context, object entity)
        {
            Type entityType = ObjectContext.GetObjectType(entity.GetType());
            if (entityType == null)
                throw new InvalidOperationException("not an entity");

            EntityContainer container = context.MetadataWorkspace.GetEntityContainer(context.DefaultContainerName, DataSpace.CSpace);
            return (from entitySet in container.BaseEntitySets
                    where entitySet.ElementType.Name.Equals(entityType.Name)
                    select entitySet.Name).Single();
        }



    }
}
