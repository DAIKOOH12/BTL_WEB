using BTL_LTW_17.Models;
using BTL_LTW_17.Utils;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL_LTW_17
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            List<AccountModels> lstAccount=new List<AccountModels>();

            Application["DanhSachTaiKhoan"]=lstAccount;
            
            List<FoodModels> lstFood=new List<FoodModels>();
            lstFood.Add(new FoodModels("A01", "Bún Đậu Mắm Tôm", "Bún - Phở - Mì - Hủ Tiếu, Bún - Phở - Cháo", (float)4.3,30,(float)1.1, "Bao ngon rẻ, Giá tốt nhất", "../Images/bundau.jpeg",38000,29000));
            lstFood.Add(new FoodModels("A02", "Cơm Niêu", "Cơm", (float)4.5, 20, (float)0.8, "Bao ngon rẻ, Giá tốt nhất", "../Images/comnieu.jpeg",40000,36000));
            lstFood.Add(new FoodModels("A03", "Gà Rán KFC", "FastFoods", (float)4.9, 30, (float)0.5, "Bao ngon rẻ, Giá tốt nhất", "../Images/kfc.jpg",55000,40000));
            lstFood.Add(new FoodModels("A04", "Bánh Mì Minh Nhật", "Bánh Mì", (float)4.7, 28, (float)1.2, "Bao ngon rẻ, Giá tốt nhất", "../Images/banhmiminhnhat.jpg",39000,35000));
            lstFood.Add(new FoodModels("A05", "Bánh Mì Đen", "Bánh Mì", (float)4.8, 22, (float)0.5, "Bao ngon rẻ, Giá tốt nhất", "../Images/banhmiden.jpg",44000,25000));
            lstFood.Add(new FoodModels("A06", "Cơm Thố", "Cơm", (float)4.8, 23, (float)1.1, "Bao ngon rẻ, Giá tốt nhất", "../Images/comtho.jpg",50000,35000));
            lstFood.Add(new FoodModels("A07", "Bánh Cuốn Nóng", "Bánh Cuốn", (float)4.3, 30, (float)1.1, "Bao ngon rẻ, Giá tốt nhất", "../Images/banhcuon.jpg",42000,38000));
            lstFood.Add(new FoodModels("A08", "Lotteria", "FastFoods", (float)4.3, 30, (float)1.1, "Bao ngon rẻ, Giá tốt nhất", "../Images/lotteria.jpg",120000,99000));
            lstFood.Add(new FoodModels("A09", "Cơm Trứng Phủ", "Cơm", (float)4.3, 30, (float)1.1, "Bao ngon rẻ, Giá tốt nhất", "../Images/comtrungphu.jpg",60000,52000));
            lstFood.Add(new FoodModels("A10", "Bánh Mì Bò Nướng", "Bánh Mì", (float)4.3, 30, (float)1.1, "Bao ngon rẻ, Giá tốt nhất", "../Images/banh-mi-thit-bo-nuong.jpg",38000, 29000));
            lstFood.Add(new FoodModels("A11", "Pizza Nấm", "FastFoods", (float)4.3, 30, (float)1.1, "Bao ngon rẻ, Giá tốt nhất", "../Images/pizzanam.jpg",78000,64000));
            lstFood.Add(new FoodModels("A12", "Mì Trộn Indomie", "Bún - Phở - Mì - Hủ Tiếu, Bún - Phở - Cháo", (float)4.3, 30, (float)1.1, "Bao ngon rẻ, Giá tốt nhất", "../Images/mitronindo.jpg",45000,38000));

            Application["DanhSachDoAn"]=lstFood;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}