using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LTW_17.Models
{
    public class FoodModels
    {
        private String sIDFood;
        private String sNameFood;
        private String sTypeFood;
        private float fRate;
        private int iTime;
        private float fDistance;
        private String sTag;
        private String urlImageFood;
        private int iOldPrice;
        private int iSalePrice;

        public FoodModels(string sIDFood, string sNameFood, string sTypeFood, float fRate, int iTime, float fDistance, string sTag, string urlImageFood, int iOldPrice, int iSalePrice)
        {
            this.SIDFood = sIDFood;
            this.SNameFood = sNameFood;
            this.STypeFood = sTypeFood;
            this.FRate = fRate;
            this.ITime = iTime;
            this.FDistance = fDistance;
            this.STag = sTag;
            this.UrlImageFood = urlImageFood;
            this.IOldPrice = iOldPrice;
            this.ISalePrice = iSalePrice;
        }

        public string SIDFood { get => sIDFood; set => sIDFood = value; }
        public string SNameFood { get => sNameFood; set => sNameFood = value; }
        public string STypeFood { get => sTypeFood; set => sTypeFood = value; }
        public float FRate { get => fRate; set => fRate = value; }
        public int ITime { get => iTime; set => iTime = value; }
        public float FDistance { get => fDistance; set => fDistance = value; }
        public string STag { get => sTag; set => sTag = value; }
        public string UrlImageFood { get => urlImageFood; set => urlImageFood = value; }
        public int IOldPrice { get => iOldPrice; set => iOldPrice = value; }
        public int ISalePrice { get => iSalePrice; set => iSalePrice = value; }
    }
}