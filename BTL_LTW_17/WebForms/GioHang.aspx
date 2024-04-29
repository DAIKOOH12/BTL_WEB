<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="BTL_LTW_17.WebForms.GioHang" %>

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
    <link rel="stylesheet" href="../Css/giohang.css">
    <script src="../fontawesome-free-6.2.1-web/js/all.min.js"></script>
</head>

<body>
    <div class="container">
        <!-- Start Header -->
        <div class="header">
            <div class="delifood-tag">
                <a href="TrangDoAn.aspx" id="banner-tag">DeliFood</a>

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
        <!-- Start Cart -->
        <form action="" method="post" runat="server">
            <div class="body-cart-area">

                <%if (lstGioHang == null)
                    { %>
                <h1 style="margin-top:100px;">Bạn chưa đặt món nào</h1>
                <%} %>
                <%else
                    { %>
                <div class="main-cart">
                    <div class="cart-items">
                        <div class="info-item info-title">
                            <div class="img-item">
                                <span style="text-align: center;">Danh sách món ăn</span>
                            </div>
                            <div class="text-item">
                                <div class="item-name">
                                    <h3>Các món đã đặt</h3>
                                </div>
                                <div class="item-amount">
                                    <div style="display: flex;">
                                        <h3>Số lượng</h3>
                                    </div>
                                </div>
                                <div class="item-total-price">
                                    <h3>Số tiền/Tác vụ</h3>
                                </div>
                            </div>
                        </div>
                        <%foreach (var item in userFood) {%>
                        <div class="info-item">
                            <div class="img-item">
                                <img src="<%Response.Write(item.FoodModels.UrlImageFood); %>" alt="" style="max-height: 40px;">
                            </div>
                            <div class="text-item">
                                <div class="item-name">
                                    <h3><%Response.Write(item.FoodModels.SNameFood); %></h3>
                                    <p><%Response.Write(item.FoodModels.STag); %></p>
                                </div>
                                <div class="item-amount">
                                    <div style="display: flex;">
                                        <input type="text" name="soluong" id="soluong" value="<%Response.Write(item.ISoLuong); %>">
                                    </div>
                                </div>
                                <div class="item-total-price">
                                    <p>
                                        Tổng tiền: <span
                                            style="color: rgb(192, 21, 21); font-weight: bold; margin-right: 20px;" id="tongtien"><%Response.Write(item.FoodModels.ISalePrice); %></span><a href="" style="color: red;">Xóa</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <%} %>
                        <div class="info-item" style="justify-content: flex-end;">
                            <button id="btnSaveCart">Lưu giỏ hàng</button>
                        </div>
                    </div>
                </div>
                <%} %>
            </div>
        </form>
        <!-- End Cart -->
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
