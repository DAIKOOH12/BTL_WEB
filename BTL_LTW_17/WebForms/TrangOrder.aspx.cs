using BTL_LTW_17.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_17.WebForms
{
    public partial class TrangOrder : System.Web.UI.Page
    {
        public List<FoodModels> lstFoods = new List<FoodModels>();
        public FoodModels selFood;
        public AccountModels currentUser = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["current_user"] != null)
            {
                currentUser = Session["current_user"] as AccountModels;
            }
            if (!String.IsNullOrEmpty(Request.QueryString["sID"]))
            {
                String id = Request.QueryString["sID"];
                lstFoods = Application["DanhSachDoAn"] as List<FoodModels>;
                selFood = lstFoods.Find(item => item.SIDFood == id);
            }
            else
            {
                Response.Redirect("./TrangDoAn.aspx");
            }
        }
    }
}