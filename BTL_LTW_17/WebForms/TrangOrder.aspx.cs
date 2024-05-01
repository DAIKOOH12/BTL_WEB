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
            Session["current_url"] = HttpContext.Current.Request.Url.AbsoluteUri;
            if (Session["current_user"] != null)
            {
                currentUser = Session["current_user"] as AccountModels;

            }
            if (!String.IsNullOrEmpty(Request.QueryString["sID"]))
            {
                String id = Request.QueryString["sID"];
                lstFoods = Application["DanhSachDoAn"] as List<FoodModels>;
                selFood = lstFoods.Find(item => item.SIDFood == id);


                if (IsPostBack)
                {
                    String idFood = Request.Form["id"].ToString();
                    var currentUser = Session["current_user"] as AccountModels;
                    int iSoLuong = Convert.ToInt32(Request.Form["soluong"].ToString());
                    if (currentUser != null)
                    {
                        List<Cart> lstGioHang = Application["GioHang"] as List<Cart>;
                        if (lstGioHang == null)
                        {
                            lstGioHang=new List<Cart>();
                            List<ChiTietGioHang> lstChiTiet = new List<ChiTietGioHang>();
                            ChiTietGioHang chiTiet = new ChiTietGioHang(idFood, iSoLuong);
                            lstChiTiet.Add(chiTiet);


                            Cart newGioHang = new Cart(currentUser, lstChiTiet);

                            lstGioHang.Add(newGioHang);

                            Application["GioHang"] = lstGioHang;
                        }
                        else
                        {
                            var userGioHang=lstGioHang.Find(item=>item.AccountModels==currentUser);
                            if(userGioHang != null)
                            {
                                var checkFood = userGioHang.LstChiTietGioHang.Find(item => item.IdFood == idFood);
                                if (checkFood == null)
                                {
                                    var newGioHang = userGioHang;
                                    lstGioHang.Remove(userGioHang);
                                    ChiTietGioHang chitiet=new ChiTietGioHang(idFood,iSoLuong);
                                    newGioHang.LstChiTietGioHang.Add(chitiet);
                                    lstGioHang.Add(newGioHang);

                                    Application["GioHang"] = lstGioHang;
                                }
                                else
                                {
                                    int soLuong = Convert.ToInt32(checkFood.ISoLuong);
                                    int newSoLuong = soLuong + iSoLuong;
                                    var newGioHang = userGioHang;
                                    lstGioHang.Remove(userGioHang);
                                    ChiTietGioHang chitiet = new ChiTietGioHang(idFood, newSoLuong);
                                    newGioHang.LstChiTietGioHang.Remove(checkFood);
                                    newGioHang.LstChiTietGioHang.Add(chitiet);
                                    lstGioHang.Add(newGioHang);

                                    Application["GioHang"] = lstGioHang;
                                }
                            }
                            else
                            {
                                List<ChiTietGioHang> lstChiTiet = new List<ChiTietGioHang>();
                                ChiTietGioHang chiTiet = new ChiTietGioHang(idFood, iSoLuong);
                                lstChiTiet.Add(chiTiet);


                                Cart newGioHang = new Cart(currentUser, lstChiTiet);

                                lstGioHang.Add(newGioHang);
                                Application["GioHang"] = lstGioHang;
                            }
                        }
                    }
                    else
                    {
                        Response.Redirect("./Login.aspx");
                    }
                }
            }
            else
            {
                Response.Redirect("./TrangDoAn.aspx");
            }
        }
    }
}