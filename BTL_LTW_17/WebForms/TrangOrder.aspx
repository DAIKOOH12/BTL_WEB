<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangOrder.aspx.cs" Inherits="BTL_LTW_17.WebForms.TrangOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="../Css/chitietmonan.css" />
    <link rel="stylesheet" href="../Css/mainpage.css" />
    <link rel="stylesheet" href="../Css/orderpage.css" />
    <link rel="stylesheet" href="../fontawesome-free-6.2.1-web/css/all.min.css" />
    <script src="../fontawesome-free-6.2.1-web/js/all.min.js"></script>
</head>
<body>
    <div class="container">
        <!-- Start Header -->
        <div class="header">
            <div class="delifood-tag">
                <a href="./mainpage.html" id="banner-tag">DeliFood</a>
                <div class="search-bar">
                    <span id="icon-map"><i class="fa-solid fa-map-location-dot" style="color: rgb(208, 0, 0);"></i>
                    </span>
                    <input type="text" placeholder="Nhập địa chỉ của bạn" id="search-area" style="border: 0;">
                </div>
            </div>
            <div class="endof-header">
                <a href="">
                    <div class="header-items header-icon">
                        <i class="fa-solid fa-cart-shopping"
                            style="color: rgb(255, 165, 47);"></i>
                    </div>
                </a>
                <a href="">
                    <div class="header-items header-account" style="color: rgb(255, 165, 47);">Đăng kí / Đăng nhập</div>
                </a>
                <div class="header-items header-language">
                    <select name="" id="sel-lang" style="border: 0; width: 100%; height: 100%;">
                        <option value="VI" selected>VI</option>
                        <option value="EN">EN</option>
                    </select>
                </div>
            </div>
        </div>
        <!-- End header -->
        <div class="" style="width: 100%; height: 80px; background-color: rgb(244, 244, 244);"></div>
        <!-- Start Food Details -->
        <%
            Response.Write("<div class=\"food-details\">\r\n    " +
                "<div class=\"food-to-cart\">\r\n        " +
                "<div class=\"items-image\">\r\n            " +
                $"<img src=\"{selFood.UrlImageFood.ToString()}\" alt=\"\">\r\n        " +
                "</div>\r\n        " +
                "<a href=\"\" style=\"cursor: pointer;\">\r\n            " +
                "<div class=\"food-action\">\r\n                " +
                "<i class=\"fa-solid fa-cart-shopping\" style=\"color: orangered;\"></i>\r\n                " +
                "<button id=\"add-to-cart\">\r\n                    " +
                "Thêm\r\n                    " +
                "vào giỏ hàng</button>\r\n            " +
                "</div>\r\n        " +
                "</a>\r\n    " +
                "</div>\r\n    " +
                "<div class=\"food-info\">\r\n        " +
                $"<h1>{selFood.SNameFood.ToString()}</h1>\r\n        " +
                "<p>Bún - Phở - Cháo</p>\r\n       " +
                " <div class=\"items-info\">\r\n            " +
                "<div class=\"info-rate\">\r\n                " +
                "<i class=\"fa-solid fa-star\" style=\"color: rgb(251, 205, 0);\"></i>\r\n                " +
                $"<span>{selFood.FRate}</span>\r\n            </div>\r\n            " +
                "<div class=\"info-time\">\r\n                " +
                "<i class=\"fa-regular fa-clock\" style=\"color: rgba(0, 0, 0, 0.485);\"></i>\r\n                " +
                $"<span>{selFood.ITime} phút</span>\r\n            </div>\r\n            " +
                "<div class=\"info-distance\">\r\n                " +
                "<i class=\"fa-solid fa-location-dot\" style=\"color: rgba(0, 0, 0, 0.485);\"></i>\r\n                " +
                $"<span>{selFood.FDistance}km</span>\r\n            </div>\r\n        </div>\r\n        " +
                "<div class=\"items-discount\" style=\"margin-top: 10px;\">\r\n            " +
                "<i class=\"fa-solid fa-tag\" style=\"color: orangered;\"></i>\r\n           " +
                $" <span>{selFood.STag}</span>\r\n        </div>\r\n        " +
                "<div class=\"food-price\">\r\n            " +
                $"<div class=\"old-price\" style=\"margin: 5px; text-decoration: line-through; color: rgba(0, 0, 0, 0.4); font-size: 15px;\">{selFood.IOldPrice}đ</div>\r\n            " +
                $"<div class=\"old-price\" style=\"margin: 5px; color: red; font-size: 20px;\">{selFood.ISalePrice}đ</div>\r\n        " +
                "</div>\r\n    </div>\r\n</div>");
        %>

        <!-- End Food Details -->
        <!-- Start Footer -->
        <div class="footer">
            <div class="container-footer">
                <div class="footer-about-grab">
                    <div class="about-details">
                        <h1 style="font-family: Verdana, Geneva, Tahoma, sans-serif; color: rgb(194, 126, 0);">DeliFood
                        </h1>
                        <h5 style="font-size: 18px;">DeliFood and You Together</h5>
                        <p>
                            Công ty TNHH DeliFood
                            Địa chỉ: Tòa nhà Mapletree Business Centre, 1060 Nguyễn Văn Linh, Phường Tân Phong, Quận 7,
                            Thành phố Hồ Chí Minh, Việt Nam.
                            Mã số doanh nghiệp: 0312650437 do Sở Kế Hoạch và Đầu Tư TP. Hồ Chí Minh cấp lần đầu ngày 14
                            tháng 02 năm 2014
                            Đại diện pháp luật: Alejandro Osorio
                            Chức vụ: Giám Đốc Điều Hành
                        </p>
                        <p>Follow us and keep updated!</p>
                    </div>
                </div>
                <div class="footer-sitemap">
                    <div class="sitemap-items">
                        <h5 style="font-size: 18px;">Về DeliFood</h5>
                        <p>Câu chuyện của DeliFood</p>
                        <p>Inside DeliFood</p>
                        <p>Inside DeliFood</p>
                        <p>Địa chỉ</p>
                        <p>Tin tưởng & An toàn</p>
                        <p>Tác động</p>
                        <p>Tin tức</p>
                        <p>Làm việc tại DeliFood</p>
                        <p>DeliFoodForGood Fund</p>
                    </div>
                    <div class="sitemap-items">
                        <h5 style="font-size: 18px;">Người Dùng</h5>
                        <p>Có gì mới?</p>
                        <p>Di chuyển</p>
                        <p>DeliFood</p>
                        <p>DeliMart</p>
                        <p>DeliExpress</p>
                        <p>Ví điện tử Moca trên ứng dụng DeliFood</p>
                    </div>
                    <div class="sitemap-items">
                        <h5 style="font-size: 18px;">Đối Tác Tài Xế</h5>
                        <p>Thông tin mới nhất</p>
                        <p>Di chuyển</p>
                        <p>Trung tâm tài xế</p>
                    </div>
                    <div class="sitemap-items">
                        <h5 style="font-size: 18px;">Hợp Tác Cùng Grab</h5>
                        <p>Hướng dẫn</p>
                        <p>Financing</p>
                        <p>Blog</p>
                    </div>
                    <div class="sitemap-items">
                        <h5 style="font-size: 18px;">Doanh Nghiệp / Công Ty</h5>
                        <p>Deli for Business</p>
                        <p>Dịch vụ giao hàng công ty</p>
                        <p>Blog</p>
                        <p>DeliGifts</p>
                        <p>DeliMap</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Footer -->
    </div>
</body>
</html>
