    var index = 1;

    ChangeImage = function() {
        var imgs = ["image/banner1.jpg", "image/banner2.jpg", "image/banner3.jpg", "image/banner4.jpg"]
        document.getElementById('img').src = imgs[index];
        index++;
        if (index == 4) {
            index = 0;
        }
    }
    setInterval(ChangeImage, 3000);