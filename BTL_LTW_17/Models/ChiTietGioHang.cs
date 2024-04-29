using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LTW_17.Models
{
    public class ChiTietGioHang
    {
        private String idFood;
        private int iSoLuong;

        public ChiTietGioHang(string idFood, int iSoLuong)
        {
            this.IdFood = idFood;
            this.ISoLuong = iSoLuong;
        }

        public string IdFood { get => idFood; set => idFood = value; }
        public int ISoLuong { get => iSoLuong; set => iSoLuong = value; }
    }
}