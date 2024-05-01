using BTL_LTW_17.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_17.WebForms
{
    public partial class GioHang : System.Web.UI.Page
    {
        public AccountModels currentUser;
        public List<Cart> lstGioHang;
        public List<FoodModels> lstFoods;
        public List<CartDetail> userFood;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["current_url"] = HttpContext.Current.Request.Url.AbsoluteUri;
            currentUser = Session["current_user"] as AccountModels;
            lstGioHang = Application["GioHang"] as List<Cart>;
            lstFoods = Application["DanhSachDoAn"] as List <FoodModels>;

            if(currentUser != null)
            {
                if (lstGioHang != null)
                {
                    var userCart = lstGioHang.Find(item => item.AccountModels == currentUser);
                    if(userCart != null)
                    {
                        userFood = new List<CartDetail>();

                        foreach (var item in userCart.LstChiTietGioHang)
                        {
                            var selFood = lstFoods.Find(i => i.SIDFood == item.IdFood);
                            userFood.Add(new CartDetail(selFood, item.ISoLuong));
                        }
                    }
                    else
                    {
                        lstGioHang = null;
                    }
                }
                else
                {
                    
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}