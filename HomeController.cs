
namespace WebApplication6.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.Mvc;
    using WebApplication6.Models;
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        [HttpGet]
        public ActionResult View3()
        {
            Products pr = new Products();
            pr.Categories = GetCategories();
            pr.Suppliers = GetSuppliers();
            return View(pr);
        }
        [HttpPost]
        public ActionResult View3(Products pr)
        {
            NORTHWNDEntities1 entities = new NORTHWNDEntities1();
            if (pr.categoryId == 0 && pr.SupplierId == 0)
            {
                var pro = entities.UspSelectProduct().ToList();
                pr.UspSelectProductName1 = pro;
            }
            else if (pr.SupplierId == 0 && pr.categoryId != 0)
            {
                var pro = entities.UspSelectProductCategory(pr.categoryId).ToList();
                pr.UspSelectProductName1 = pro;
            }
            else if (pr.categoryId == 0 && pr.SupplierId != 0)
            {
                var pro = entities.UspSelectProductSupplier(pr.SupplierId).ToList();
                pr.UspSelectProductName1 = pro;
            }
            else if(pr.categoryId!=0 && pr.SupplierId!=0)
            {
               var pro = entities.UspSelectProductSupplierCategory(pr.categoryId,pr.SupplierId).ToList();
                pr.UspSelectProductName = pro;
            }
            //List<SelectListItem> CategoriesList = GetCategories();
            //SelectListItem selectedItem = productList.Find(p => p.Value == ProductId.ToString());
            //var product = new NORTHWNDEntities().Categories;
            //Category cat=product.Find(CategoryId);
            //ViewBag.Message = "ProductName:" + cat.CategoryName;
            //   ViewBag.Message += "ID:" + cat.CategoryID;
            //ViewBag.Message += "SupplierId" + cat.Description;
            //ViewBag.Message += "CategoryId" + pro.CategoryID;
            //ViewBag.Message += "UnitPrice" + pro.UnitPrice;
            //ViewBag.Message += "Quantityperunit" + pro.QuantityPerUnit;



            pr.Categories = GetCategories();
            pr.Suppliers = GetSuppliers();
            return View(pr);
        }
        private static List<SelectListItem> GetCategories()
        {
            NORTHWNDEntities1 entities = new NORTHWNDEntities1();
            Products pr = new Products();
            pr.ProductId = new[] { new SelectListItem { Text = "Select Value", Value = "0" } };
            pr.Categories = new List<SelectListItem>();
            pr.Categories.Add(new SelectListItem() { Text="Select A Value",Value="0"});
            IEnumerable<SelectListItem> V = (new SelectList(new NORTHWNDEntities1().Categories, "CategoryId", "CategoryName"));
            foreach (var i in V)
            {
                pr.Categories.Add(i);
            }
            
            //List<SelectListItem> productList = (from p in entities.Products.AsEnumerable()
              //                                  select new SelectListItem
                //                                {
                  //                                  Text = p.ProductName,
                    //                                Value = p.ProductID.ToString()
                      //                              
                        //                        }).ToList();
            //productList.Insert(0,new SelectListItem { Text="Select Product",Value=""});
            return pr.Categories;
        }
        private static List<SelectListItem> GetSuppliers()
        {
            NORTHWNDEntities1 entities = new NORTHWNDEntities1();
            Products pr = new Products();
            
            pr.Suppliers = new List<SelectListItem>();
            pr.Suppliers.Add(new SelectListItem() { Text = "Select A Value", Value = "0" });
            IEnumerable<SelectListItem> sup = (new SelectList(new NORTHWNDEntities1().Suppliers, "SupplierId", "CompanyName"));
            foreach (var i in sup)
            {
                pr.Suppliers.Add(i);
            }

            //List<SelectListItem> productList = (from p in entities.Products.AsEnumerable()
            //                                  select new SelectListItem
            //                                {
            //                                  Text = p.ProductName,
            //                                Value = p.ProductID.ToString()
            //                              
            //                        }).ToList();
            //productList.Insert(0,new SelectListItem { Text="Select Product",Value=""});
            return pr.Suppliers;
        }
    }
}