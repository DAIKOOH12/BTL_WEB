using BTL_LTW_17.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_17.WebForms
{
    public partial class TrangDoAn : System.Web.UI.Page
    {
        public List<FoodModels> lstFoods= new List<FoodModels>();
        public AccountModels currentUser =null;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["current_url"] = HttpContext.Current.Request.Url.AbsoluteUri;
            lstFoods = Application["DanhSachDoAn"] as List<FoodModels>;

            if (Session["current_user"] != null)
            {
                currentUser = Session["current_user"] as AccountModels;
            }
        }
    }
}