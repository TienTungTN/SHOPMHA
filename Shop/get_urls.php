<?php
// Thông tin kết nối đến cơ sở dữ liệu MySQL
$servername = "localhost";
$username = "root";  // Thay thế bằng username của bạn
$password = "";      // Thay thế bằng password của bạn
$dbname = "dacs2"; // Thay thế bằng tên cơ sở dữ liệu của bạn

// Tạo kết nối
$conn = new mysqli($servername, $username, $password, $dbname);

// Kiểm tra kết nối
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

// Truy vấn lấy URL từ bảng
$sql = "SELECT url FROM websites";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Duyệt qua các hàng kết quả và in URL
    while($row = $result->fetch_assoc()) {
        echo "URL: " . $row["url"] . "<br>";
    }
} else {
    echo "Không có kết quả";
}

// Đóng kết nối
$conn->close();
?>
