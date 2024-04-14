using BTL_LTW_17.Models;
using BTL_LTW_17.Utils;
using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;

namespace BTL_LTW_17.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        public List<AccountModels> lstAccount;
        public String errorLog = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            lstAccount = Application["DanhSachTaiKhoan"] as List<AccountModels>;
          if(IsPostBack)
            {
                String phone = Request.Form["phone"];
                String password = Request.Form["password"];
                
                var taikhoan=lstAccount.Find(item => item.Sodienthoai==phone&&item.Password==password);

                if (taikhoan == null)
                {
                    errorLog = "<p style=\"color:red;\">*Tài khoản hoặc mật khẩu không đúng. Vui lòng thử lại!</p>";   
                }
                else
                {
                    Session["current_user"] = taikhoan;
                    Response.Redirect("./TrangDoAn.aspx");
                }
            }
        }
    }
}