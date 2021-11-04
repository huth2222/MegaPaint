/***** Action form เมื่อมีการคลิก Edit account *****/
function GetEditSellerTable(seller_code){
    //alert('Hi');
    $('#div_index').hide();
    GetMenuEditSeller();
    GetPageEditSeller("/Seller/EditSeller?seller_code="+  seller_code,seller_code);
    $('#edit_content').show();
}

/******** For Avatar ********/
function GetSellerFormAction(){
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

/************* Get Account table */
function GetSellerTable(active,seller_code) {
    //alert(admin_code);
    if(seller_code == null){
        seller_code = "empty";
    }
    let local = location.origin + "/Seller/GetSellerTable/" + active + '/' + seller_code;
    $.get(local,
        function (data, textStatus, jqXHR) {
            let status = '';
            let n = 1;
            let h_gender = "";
            let h_age = "";
            let h_tel = "";
            let img = "";
            let tr = "";
            let focus = "";
            let age = "";


            let tel1 = "";
            let tel2 = "";
            let tel3 = "";

            let fullname = "";
            let mobile_number = "";

            if (window.matchMedia('(max-width: 650px)').matches) {
                //alert('650');
                h_gender = "hidden";
                h_age = "hidden";
                h_tel = "hidden";
                
            } 
            // else if (window.matchMedia('(max-width: 850px)').matches) {
            //     alert('850');
       
            // }


            let html = '<table id="example1" class="table table-bordered text-center">' +
                '<thead>' +
                '<tr class="bg-info" style="vertical-align: top;">' +
                '<th style="width: 90px;">#</th>' +
                '<th style="vertical-align: top;">ชื่อ-สกุล</th>' +
                '<th ' + h_tel + ' style="width: 130px; vertical-align: top;">เบอร์โทร</th>' +
                '<th ' + h_gender + ' style="width: 100px; vertical-align: top;">เพศ</th>' +
                '<th ' + h_age + ' style="width: 100px; vertical-align: top;">อายุ</th>' +
                '<th style="width: 100px; vertical-align: top;">Tool</th>' +
                '</tr>' +
                '</thead>' +
                '<tbody>';

            $.each(data, function (indexInArray, valueOfElement) {
                //adminCode = valueOfElement.admin_code.padStart(8, "0");
                if(valueOfElement.avatar == '' || valueOfElement.avatar == null){
                    img = "";
                }else{
                    img = "<img id='img0' alt='' width='80' src='/data/seller/avatar/"+valueOfElement.avatar+"' style='cursor: pointer;height:80px;object-fit:cover;'>";
                }

                                
                if(valueOfElement.mobile_number == '' || valueOfElement.mobile_number == null){
                    mobile_number = '';
                }else{
                    mobile_number = valueOfElement.mobile_number.substring(0,3) + '-' + valueOfElement.mobile_number.substring(3,6) + '-' + valueOfElement.mobile_number.substring(6,10) + (valueOfElement.mobile_number.substring(10) == '' ? '' : '#' + valueOfElement.mobile_number.substring(10));
                }

                if(valueOfElement.age != 0){
                    age = valueOfElement.age.toString();
                }else{
                    age = "";
                }
                
                if($('#sellerCode').val() == valueOfElement.seller_code){
                    tr = '<tr style="color: red;">'
                    focus = 'idfocus';
                }else{
                    tr = '<tr>';
                    focus = '';
                }
                html += tr +
                    '<td><span id="' + focus + '">' + img + '</span></td>' +
                    '<td style="text-align: left;">' + valueOfElement.fullname + '</td>' +                    
                    '<td ' + h_tel + '>' + mobile_number + '</td>' +
                    '<td ' + h_gender + '>' + valueOfElement.gender_name_th + '</td>' +
                    '<td ' + h_age + '>' + age + '</td>' +                    
                    '<td><span class="d-flex justify-content-around"> <span class="hover-del" onclick="GetDelSellerTable(' + "'" + valueOfElement.seller_code + "'," + "'" + fullname + "'" + ')"><i class="fas fa-trash-alt"></i></span><span class="hover-edit" onclick="GetEditSellerTable(' + "'" + valueOfElement.seller_code + "'," + "'" + fullname + "'" + ')"><i class="fas fa-edit"></i></span> </span></td>' +                  
                '</tr>';
                n++;
            });
            html += '</tbody></table>';
            $('#div_sellerList').html(html);
            if(focus != ''){
                $('#idfocus').focus();
            }
        },
        "json"
    );

}

/************** For delete account */
function GetDelShopTable(admin_code,fullname){
    let msg = 'ยืนยันการลบข้อมูล ร้าน' + fullname;
    if(confirm(msg)){
        GetShopTable("empty","del",admin_code);
    }    
}

/*************** For Add or Edit account */
function GetSubmit(form) {
    //alert();
    let sellerCode = $('#sellerCode').val();
   // alert(form);
  $('#form_seller').submit();
  let formAction = "";
  let = active = "";
  if(form == "FormAdd"){
    formAction = "/Seller/AddSeller";
    active = "add";
  }else if(form == "FormEdit"){
    formAction = "/Seller/EditSeller";
    active = "edit";
  }
  setTimeout(() => {
    $.ajax({
      url: formAction,
      type: "GET",
      success: function (data) {
        $("#div_index").html(data);
        GetSellerFormAction();
        $("#div_index").fadeIn(1000);
        localStorage.clear();
        GetSellerTable("submit",active,sellerCode);
        $('#from_edit').hide();
      },
    });
  }, 1000);  
}