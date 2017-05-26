function validation() {
    var userName = document.getElementsByName("username")[0].value;
    var passWord = document.getElementsByName("password")[0].value;
    if(userName!=''&&passWord!='')
    {
        LoadKhachHang();
    }
}

function LoadKhachHang() {
    _url = 'http://localhost:54153/api/nhanvien/hello';
    $.ajax({
        url: _url,
        dataType: 'json',
        timeout: 30 * 1000
    })
    .done(function (data) {
        $.each(data, function (index, dm) {
            console.log(dm.MaNhanVien)
        });
    })
    .fail(function (jqXHR, textStatus, error) {
        console.log(jqXHR);
        console.log(jqXHR.statusCode);
    });
}