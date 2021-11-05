$(document).ready(()=>{
    $('#MP_View_Seller_permanent_changwat_id').change(()=>{
        getPmAmphoe($('#MP_View_Seller_permanent_changwat_id').val());
    });

    $('#MP_View_Seller_permanent_amphoe_id').change(()=>{
        getPmTambon($('#MP_View_Seller_permanent_amphoe_id').val());
    });

    $('#MP_View_Seller_permanent_tambon_id').change(()=>{
        getPmZipCode($('#MP_View_Seller_permanent_tambon_id').val());
    });

    $('#MP_View_Seller_present_changwat_id').change(()=>{
        getPsAmphoe($('#MP_View_Seller_present_changwat_id').val());
    });

    $('#MP_View_Seller_present_amphoe_id').change(()=>{
        getPsTambon($('#MP_View_Seller_present_amphoe_id').val());
    });

    $('#MP_View_Seller_present_tambon_id').change(()=>{
        getPsZipCode($('#MP_View_Seller_present_tambon_id').val());
    });

    $('#same_addr').change(()=>{
        if($('#same_addr').prop('checked')){
            $('#MP_View_Seller_present_addr_no').val($('#MP_View_Seller_permanent_addr_no').val());
            $('#MP_View_Seller_present_building').val($('#MP_View_Seller_permanent_building').val());
            $('#MP_View_Seller_present_room').val($('#MP_View_Seller_permanent_room').val());
            $('#MP_View_Seller_present_rood').val($('#MP_View_Seller_permanent_rood').val());
            $('#MP_View_Seller_present_alley').val($('#MP_View_Seller_permanent_alley').val());
            $('#MP_View_Seller_present_tel').val($('#MP_View_Seller_permanent_tel').val());
            getPsAmphoe($('#MP_View_Seller_permanent_changwat_id').val());
            getPsTambon($('#MP_View_Seller_permanent_amphoe_id').val());
            getPsZipCode($('#MP_View_Seller_permanent_tambon_id').val());

            $('#MP_View_Seller_present_changwat_id').val($('#MP_View_Seller_permanent_changwat_id').val());
            setTimeout(() => {
                $('#MP_View_Seller_present_amphoe_id').val($('#MP_View_Seller_permanent_amphoe_id').val());
                $('#MP_View_Seller_present_tambon_id').val($('#MP_View_Seller_permanent_tambon_id').val());
                $('#MP_View_Seller_present_zip_code').val($('#MP_View_Seller_permanent_zip_code').val());
            }, 500);
            
        }else{
            $('#MP_View_Seller_present_changwat_id').val('');
            $('#MP_View_Seller_present_amphoe_id').html('');
            $('#MP_View_Seller_present_tambon_id').html('');
            $('#MP_View_Seller_present_zip_code').val('');
        }
    });

    $('#imagePreview').hide();
    $('#MP_View_Seller_avatar').change(function () {
        configImageProfile(this);
    });
    
});

function selectImage() {
    $('#MP_View_Seller_avatar').click();
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