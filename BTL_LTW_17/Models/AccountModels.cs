using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LTW_17.Models
{
    public class AccountModels
    {
        private String sodienthoai;
        private String username;
        private String password;

        public AccountModels(string sodienthoai, string username, string password)
        {
            this.Sodienthoai = sodienthoai;
            this.Username = username;
            this.Password = password;
        }

        public string Sodienthoai { get => sodienthoai; set => sodienthoai = value; }
        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
    }

}