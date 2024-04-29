<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangOrder.aspx.cs" Inherits="BTL_LTW_17.WebForms.TrangOrder" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../Css/mainpage.css">
    <link rel="stylesheet" href="../Css/orderpage.css">
    <link rel="stylesheet" href="../Css/chitietmonan.css">
    <link rel="stylesheet" href="../fontawesome-free-6.2.1-web/css/all.min.css">
    <script src="../fontawesome-free-6.2.1-web/js/all.min.js"></script>
</head>

<body>
    <div class="container">
        <!-- Start Header -->
        <div class="header">
            <div class="delifood-tag">
                <a href="TrangDoAn.aspx" id="banner-tag">DeliFood</a>
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

                <%if (currentUser == null)
                    { %>
                <a href="./Login.aspx">
                    <div class="header-items header-account" style="color: rgb(255, 165, 47);">Đăng kí / Đăng nhập</div>
                </a>
                <%}

                %>
                <% else
                {  %>
                <b><%Response.Write(currentUser.Username); %></b>
                <%} %>
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
        <div class="food-details">
            <div class="food-to-cart">
                <div class="items-image">
                    <img src="<%Response.Write(selFood.UrlImageFood);%>" alt="">
                </div>
                <div class="form-save-to-cart">
                    <form action="" method="post" runat="server">
                        <div class="set-amount" style="margin-bottom: 10px;">
                            <span>Số lượng: </span>
                            <div style="display: flex;">
                                <input type="hidden" name="id" id="id" value="<% Response.Write(selFood.SIDFood);%>">
                                <div class="btn-des-amount" id="btn-des-amount">-</div>
                                <input type="text" name="soluong" id="soluong" value="0">
                                <div class="btn-ins-amount" id="btn-ins-amount">+</div>
                            </div>
                        </div>
                        <div class="pickup-date">
                            <span>Thời gian giao hàng:</span>
                            <select name="thoigiangiao" id="thoigiangiao">
                                <option value="1">9h00 - 10h00</option>
                                <option value="2">10h00 - 11h00</option>
                                <option value="3">11h00 - 12h00</option>
                                <option value="4">12h00 - 13h00</option>
                                <option value="5">13h00 - 14h00</option>
                                <option value="6">14h00 - 15h00</option>
                            </select>
                        </div>
                        <input type="submit" name="btnDatHang" id="btnDatHang" value="Đặt hàng ngay">
                    </form>
                </div>
            </div>
            <div class="food-info">
                <h1><%Response.Write(selFood.SNameFood); %></h1>
                <p><%Response.Write(selFood.STypeFood); %></p>
                <div class="items-info-services">
                    <div class="info-rate">
                        <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                        <span><%Response.Write(selFood.FRate); %></span>
                    </div>
                    <div class="info-time">
                        <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                        <span><%Response.Write(selFood.ITime); %></span>
                    </div>
                    <div class="info-distance">
                        <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                        <span><%Response.Write(selFood.FDistance); %>km</span>
                    </div>
                </div>
                <div class="items-discount" style="margin-top: 10px;">
                    <i class="fa-solid fa-tag" style="color: orangered;"></i>
                    <span><%Response.Write(selFood.STag); %></span>
                </div>
                <div class="food-price">
                    <div class="old-price"
                        style="margin: 5px; text-decoration: line-through; color: rgba(0, 0, 0, 0.4); font-size: 15px;">
                        <%Response.Write(selFood.IOldPrice); %>
                    </div>
                    <div class="sale-price" style="margin: 5px; color: red; font-size: 20px;"><%Response.Write(selFood.ISalePrice); %></div>
                </div>
            </div>
        </div>
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
    <script src="../JS/chititetmonan.js"></script>
</body>
</html>
