using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LTW_17.Models
{
    public class CartDetail
    {
        private FoodModels foodModels;
        private int iSoLuong;

        public CartDetail(FoodModels foodModels, int iSoLuong)
        {
            this.FoodModels = foodModels;
            this.ISoLuong = iSoLuong;
        }

        public FoodModels FoodModels { get => foodModels; set => foodModels = value; }
        public int ISoLuong { get => iSoLuong; set => iSoLuong = value; }
    }
}