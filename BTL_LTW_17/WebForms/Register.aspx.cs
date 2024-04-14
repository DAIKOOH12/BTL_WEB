using BTL_LTW_17.Models;
using BTL_LTW_17.Utils;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_17.WebForms
{
    public partial class Register : System.Web.UI.Page
    {
        public List<AccountModels> lstAccount;
        public String checkPhone = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                String sodienthoai = Request.Form["phone"];
                String username = Request.Form["username"];
                String password = Request.Form["password"];
                lstAccount = Application["DanhSachTaiKhoan"] as List<AccountModels>;

                var checkAccount = lstAccount.Find(item => item.Sodienthoai == sodienthoai);
                if (checkAccount != null)
                {
                    checkPhone = "<p style=\" color:red;\">*Số điện thoại đã được sử dụng</p>";
                }
                else
                {
                    var taikhoan = new AccountModels(sodienthoai, username, password);
                    Session["current_user"] = taikhoan;
                    lstAccount.Add(taikhoan);
                    Response.Redirect("./TrangDoAn.aspx");
                }
            }
        }

    }
}