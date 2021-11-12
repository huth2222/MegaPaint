

/******** For Avatar ********/
function GetShopFormAction(){
    $('#imagePreview').hide();
        $('#file').change(function () {
        configImageProfile(this);
    });
}

function selectImage() {
    $('#file').click();
}
var _URL = window.URL || window.webkitURL;

function configImageProfile(i) {
    $('#imagePreview').show();
    $('#img0').hide();
    var reader, img, objectUrl;
    if (i.files && i.files[0]) {
        img = new Image();
        reader = new FileReader();
        objectUrl = _URL.createObjectURL(i.files[0]);
        img.onload = function () {

            reader.onload = function (e) {
                $('#imagePreview').attr('src', e.target.result);
                $('#imageName').html(i.files[0].name);
                // $('#done').html('คุณสามารถใช้รูปโปรไฟล์นี้ได้');
                $('#profileImage_btn').removeAttr('disabled', true);
            }
            reader.readAsDataURL(i.files[0]);

            // if (this.width > 150) {
            //     $('#warning').html('ขนาดรูปโปรไฟล์ของคุณความกว้างต้องไม่เกิน 150 pixels (Width)');
            //     $('#done').html(null);
            //     $('#imageName').html('ไม่มีภาพที่คุณเลือก');
            //     $('#file').val('');
            //     $('#imagePreview').attr('src', defaultImageProfile);
            //     $('#submit_btn').attr('disabled', true);
            // } else {
            //     if (this.height > 150) {
            //         $('#warning').html('ขนาดรูปโปรไฟล์ของคุณความสูงต้องไม่เกิน 150 pixels (Height)');
            //         $('#done').html(null);
            //         $('#imageName').html('ไม่มีภาพที่คุณเลือก');
            //         $('#file').val('');
            //         $('#imagePreview').attr('src', defaultImageProfile);
            //         $('#submit_btn').attr('disabled', true);
            //     } else {
            //         $('#warning').html(null);
            //         reader.onload = function (e) {
            //             $('#imagePreview').attr('src', e.target.result);
            //             $('#imageName').html(i.files[0].name);
            //             $('#done').html('คุณสามารถใช้รูปโปรไฟล์นี้ได้');
            //             $('#submit_btn').removeAttr('disabled', true);
            //         }
            //         reader.readAsDataURL(i.files[0]);
            //     }
            // }
        }
        img.src = objectUrl;
    }
}

