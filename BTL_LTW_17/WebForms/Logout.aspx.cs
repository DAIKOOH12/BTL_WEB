using BTL_LTW_17.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_17.WebForms
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String lastPage = Session["current_url"] as String;
            Session["current_user"] = null;
            Response.Redirect(lastPage);
        }
    }
}