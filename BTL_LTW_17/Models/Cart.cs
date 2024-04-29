using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LTW_17.Models
{
    public class Cart
    {
        private AccountModels accountModels;
        private List<ChiTietGioHang> lstChiTietGioHang;

        public Cart(AccountModels accountModels, List<ChiTietGioHang> lstChiTietGioHang)
        {
            this.AccountModels = accountModels;
            this.LstChiTietGioHang = lstChiTietGioHang;
        }

        public AccountModels AccountModels { get => accountModels; set => accountModels = value; }
        public List<ChiTietGioHang> LstChiTietGioHang { get => lstChiTietGioHang; set => lstChiTietGioHang = value; }
    }
}