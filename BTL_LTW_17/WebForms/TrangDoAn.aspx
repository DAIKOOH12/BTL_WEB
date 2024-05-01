<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangDoAn.aspx.cs" Inherits="BTL_LTW_17.WebForms.TrangDoAn" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../Css/mainpage.css">
    <link rel="stylesheet" href="../Css/orderpage.css">
    <link rel="stylesheet" href="../fontawesome-free-6.2.1-web/css/all.min.css">
    <script src="../fontawesome-free-6.2.1-web/js/all.min.js"></script>
</head>

<body>
    <div class="container">
        <!-- Start Header -->
        <div class="header">
            <div class="delifood-tag">
                <a href="./mainpage.html" id="banner-tag">DeliFood</a>
                <div class="search-bar">
                    <span id="icon-map">
                        <i class="fa-solid fa-map-location-dot" style="color: rgb(208, 0, 0);"></i>
                    </span>
                    <input type="text" placeholder="Nhập địa chỉ của bạn" id="search-area" style="border: 0;">
                </div>
            </div>
            <div class="endof-header">
                <a href="GioHang.aspx">
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
                <a href="Logout.aspx">Đăng xuất</a>
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
        <!-- Start Food List -->
        <div class="list-food">
            <div class="list-title" style="width: 80%;">
                <h2>Lựa chọn món ăn của bạn</h2>
            </div>
            <%-- <div class="row-list">
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/bundau.jpeg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Bún Đậu Mắm Tôm</h3>
                            </div>
                            <div class="items-type">
                                <p>Bún - Phở - Mì - Hủ Tiếu, Bún - Phở - Cháo</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/comnieu.jpeg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Cơm Niêu</h3>
                            </div>
                            <div class="items-type">
                                <p>Cơm</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/kfc.jpg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Gà Rán KFC</h3>
                            </div>
                            <div class="items-type">
                                <p>FastFood</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/banhmiminhnhat.jpg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Bánh Mì Minh Nhật</h3>
                            </div>
                            <div class="items-type">
                                <p>Bánh Mì</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="row-list">
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/banhmiden.jpg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Bánh Mì Đen</h3>
                            </div>
                            <div class="items-type">
                                <p>Bánh mì</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/comtho.jpg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Cơm Thố</h3>
                            </div>
                            <div class="items-type">
                                <p>Cơm</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/banhcuon.jpg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Bánh Cuốn Nóng</h3>
                            </div>
                            <div class="items-type">
                                <p>Bánh cuốn</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/lotteria.jpg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Lotteria</h3>
                            </div>
                            <div class="items-type">
                                <p>FastFood</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="row-list">
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/comtrungphu.jpg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Cơm Trứng Phủ</h3>
                            </div>
                            <div class="items-type">
                                <p>Cơm</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/banh-mi-thit-bo-nuong.jpg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Bánh Mì Bò Nướng</h3>
                            </div>
                            <div class="items-type">
                                <p>Bánh mì</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/pizzanam.jpg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Pizza Nấm</h3>
                            </div>
                            <div class="items-type">
                                <p>FastFood</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="row-items">
                        <div class="items-image">
                            <img src="../Images/mitronindo.jpg" alt="">
                        </div>
                        <div class="items-container">
                            <div class="items-name">
                                <h3>Mì Trộn Indomie</h3>
                            </div>
                            <div class="items-type">
                                <p>Bún - Phở - Mì - Hủ Tiếu, Bún - Phở - Cháo</p>
                            </div>
                            <div class="items-info-services">
                                <div class="info-rate">
                                    <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                    <span>4.3</span>
                                </div>
                                <div class="info-time">
                                    <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>30 phút</span>
                                </div>
                                <div class="info-distance">
                                    <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                    <span>1km</span>
                                </div>
                            </div>
                            <div class="items-discount" style="margin-top: 5px;">
                                <i class="fa-solid fa-tag" style="color: orangered;"></i>
                                <span>Bao ngon rẻ, Giá tốt nhất</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>--%>
            <% foreach (var item in lstFoods)
                {%>
            <a href="./TrangOrder.aspx?sID=<%Response.Write(item.SIDFood); %>">
                <div class="row-items">
                    <div class="items-image">
                        <img src="<% Response.Write(item.UrlImageFood);%>" alt="">
                    </div>
                    <div class="items-container">
                        <div class="items-name">
                            <h3><%Response.Write(item.SNameFood); %></h3>
                        </div>
                        <div class="items-type">
                            <p><%Response.Write(item.STypeFood); %></p>
                        </div>
                        <div class="items-info-services">
                            <div class="info-rate">
                                <i class="fa-solid fa-star" style="color: rgb(251, 205, 0);"></i>
                                <span><%Response.Write(item.FRate); %></span>
                            </div>
                            <div class="info-time">
                                <i class="fa-regular fa-clock" style="color: rgba(0, 0, 0, 0.485);"></i>
                                <span><%Response.Write(item.ITime); %> phút</span>
                            </div>
                            <div class="info-distance">
                                <i class="fa-solid fa-location-dot" style="color: rgba(0, 0, 0, 0.485);"></i>
                                <span><%Response.Write(item.FDistance); %>km</span>
                            </div>
                        </div>
                        <div class="items-discount" style="margin-top: 5px;">
                            <i class="fa-solid fa-tag" style="color: orangered;"></i>
                            <span><%Response.Write(item.STag); %></span>
                        </div>
                    </div>
                </div>
            </a>

            <% } %>
        </div>



        <!-- End Food List -->
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
