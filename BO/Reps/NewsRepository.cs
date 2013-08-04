using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using BO;
using System.Data.Objects;

namespace BO.Reps
{ 

	public class NewsRepository : Framework.BaseObject<News>, Framework.IBaseRepository<News>
	{
		
        public NewsRepository() : base() { }
        public NewsRepository(dbContainer cont) : base(cont) { }

        public News GetById(int id)
        {
            return db.News.FirstOrDefault(x => x.Id == id);
        }

        public IEnumerable<News> GetLastestNews(int SectionId)
        {
            DateTime lastDate = DateTime.Now.AddDays(-2);

            return db.News.Where(n => n.SectionsId == SectionId && n.PubDate > lastDate);
        }

        public IEnumerable<News> GetLastestNews()
        {
            DateTime lastDate = DateTime.Now.AddDays(-2);

            return db.News.Where(n => n.PubDate > lastDate);
        }

        public bool ExistsNews(string title)
        {
            DateTime datetime = DateTime.Now.AddDays(-2);
            return db.News.Where(n => n.PubDate > datetime && n.Title == title).Count() > 0 ? true : false;
        }

        public IEnumerable<News> Search(string title)
        {
            IEnumerable<News> news = from n in db.News
                                     where n.Title.Contains(title)
                                     || n.Content.Contains(title)
                                     select n;

            return news;
        }
	}
}
