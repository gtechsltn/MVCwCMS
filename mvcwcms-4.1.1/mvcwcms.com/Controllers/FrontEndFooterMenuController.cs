﻿using MVCwCMS.ViewModels;
using System.Web.Mvc;

namespace MVCwCMS.Controllers
{
    [ChildActionOnly]
    public class FrontEndFooterMenuController : FrontEndBaseController
    {
        public ActionResult Index(FrontEndCmsPage page)
        {
            return View(page);
        }
    }
}