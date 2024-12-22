// Thêm các hiệu ứng động hoặc tính năng bổ sung nếu cần
// Ví dụ, có thể dùng đoạn mã sau để tạo hiệu ứng khi cuộn trang.

window.addEventListener("scroll", function () {
    const intro = document.querySelector('.intro');
    if (window.scrollY > 50) {
        intro.style.opacity = 0.8;
    } else {
        intro.style.opacity = 1;
    }
});
