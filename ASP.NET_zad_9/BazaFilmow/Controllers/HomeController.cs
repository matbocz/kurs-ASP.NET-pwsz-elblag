using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BazaFilmow.Models;

namespace BazaFilmow.Controllers
{
    public class HomeController : Controller
    {
        private FilmyEntities _db = new FilmyEntities();
        // GET: Home
        public ActionResult Index()
        {
            return View(_db.Table.ToList());
        }

        // GET: Home/Details/5
        public ActionResult Details(int id)
        {
            var movieToDetails = _db.Table.Find(id);
            return View(movieToDetails);
        }

        // GET: Home/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Home/Create
        [HttpPost]
        public ActionResult Create(Film newMovie)
        {
            try
            {
                // TODO: Add insert logic here
                _db.Table.Add(newMovie);
                _db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Home/Edit/5
        public ActionResult Edit(int id)
        {
            var movieToEdit = _db.Table.Find(id);
            return View(movieToEdit);
        }

        // POST: Home/Edit/5
        [HttpPost]
        public ActionResult Edit(Film movieToEdit)
        {
            var originalMovie = _db.Table.Find(movieToEdit.Id);
            try
            {
                // TODO: Add update logic here
                if (TryUpdateModel(originalMovie, new string[] { "Tytul", "Rezyser", "DataPremiery"}))
                {
                    _db.SaveChanges();
                }
                return RedirectToAction("Index");
            }
            catch
            {
                return View(originalMovie);
            }
        }

        // GET: Home/Delete/5
        public ActionResult Delete(int id)
        {
            var movieToDelete = _db.Table.Find(id);
            return View(movieToDelete);
        }

        // POST: Home/Delete/5
        [HttpPost]
        public ActionResult Delete(Film movieToDelete)
        {
            try
            {
                // TODO: Add delete logic here
                var selMovie = _db.Table.Find(movieToDelete.Id);
                if (!ModelState.IsValid)
                    return View(selMovie);
                _db.Table.Remove(selMovie);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View(movieToDelete);
            }
        }
    }
}
