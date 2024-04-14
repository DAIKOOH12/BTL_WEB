<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BTL_LTW_17.WebForms.TrangChu" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../Css/mainpage.css">
    <link rel="stylesheet" href="../fontawesome-free-6.2.1-web/css/all.min.css">
    <script src="../fontawesome-free-6.2.1-web/js/all.min.js"></script>
</head>
 
<body>
    <div class="container">
        <!-- Start Header -->
        <div class="header">
            <div class="delifood-tag">
                <a href="./mainpage.html" id="banner-tag">DeliFood</a>
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
                    <select name="" id="sel-lang" style="border: 0;width: 100%;height: 100%;">
                        <option value="VI" selected>VI</option>
                        <option value="EN">EN</option>
                    </select>
                </div>
            </div>
        </div>
        <!-- End header -->
        <!-- Start Content -->
        <div class="body-page">
            <div class="banner-order">
                <div class="banner-shop">
                    <h1 style="color: white;font-size: 50px;font-family: Arial, Helvetica, sans-serif;text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);">
                        DeliFood
                    </h1>
                    <h1 style="color: white;font-size: 30px;font-family: Arial, Helvetica, sans-serif;text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);margin-bottom: 100px;">
                        Thèm món gì - Đặt ngay món đó
                    </h1>
                    <a href="../WebForms/TrangDoAn.aspx" id="order-now" style="font-family: Verdana, Geneva, Tahoma, sans-serif;font-size: 18px; padding: 17px 25px;">Đặt hàng ngay</a>
                </div>
            </div>
            <div class="about-us">
                <div class="title-banner">
                    <h1>Mang đến cho bạn món ăn ưa thích, nóng hổi và ngon lành</h1>
                </div>
                <div class="title-detail">
                    <p>
                        Đặt đồ ăn giao hàng tận nhà nhanh chóng lấp đầy chiếc bụng đói của bạn với những món ngon yêu
                        thích và dịch vụ giao hàng “thần tốc”. GrabFood hiện đang có mặt tại nhiều tỉnh thành ở Việt
                        Nam: Thành phố Hồ Chí Minh, Hà Nội, Đà Nẵng, Vũng Tàu, Bình Dương, Đồng Nai, Cần Thơ, Đà Lạt,….
                        Chúng tôi đang dần mở rộng thêm nhiều khu vực trong thời gian tới!
                    </p>
                </div>
            </div>
            <div class="detail-services">
                <div class="col-lists">
                    <div class="col-detail">
                        <div class="col-items">
                            <img src="../Images/round_image1.png" alt="">
                            <h2>Đặt đồ ăn online chỉ sau vài cú chạm.</h2>
                            <p style="font-size: 20px;">
                                GrabFood giao hàng nhanh thần tốc, đảm bảo mang cho bạn bữa ăn nóng hổi và ngon lành, dù bạn
                                đang ở đâu.
                            </p>
                        </div>
                    </div>
                    <div class="col-detail">
                        <div class="col-items">
                            <img src="../Images/round_image2.png" alt="">
                            <h2>Đa dạng lựa chọn.</h2>
                            <p style="font-size: 20px;">
                                Danh sách đa dạng các món ăn của chúng tôi có thể phục vụ cho mọi nhu cầu ăn uống của bạn.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Content -->
        <!-- Start Footer -->
        <div class="footer">
            <div class="container-footer">
                <div class="footer-about-grab">
                    <div class="about-details">
                        <h1 style="font-family: Verdana, Geneva, Tahoma, sans-serif;color: rgb(194, 126, 0);">
                            DeliFood
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