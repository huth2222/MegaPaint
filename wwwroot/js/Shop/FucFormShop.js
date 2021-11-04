/***** Action form เมื่อมีการคลิก Edit account *****/
function GetEditShopTable(shop_code){
    //alert('Hi');
    $('#div_index').hide();
    GetMenuEditShop();
    GetPageEditShop("/Shop/EditShop?shop_code="+  shop_code,shop_code);
    $('#edit_content').show();
}


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

/************* Get Account table */
function GetShopTable(active,shop_code) {
    //alert(active);
    if(shop_code == null || shop_code == ""){
        shop_code = "empty";
    }
    let local = location.origin + "/Shop/GetShopTable/" + active + '/' + shop_code;
    $.get(local,
        function (data, textStatus, jqXHR) {
            let status = '';
            let n = 1;
            let h_tel = "";
            let tr = "";
            let focus = "";

            let tel = "";

            if (window.matchMedia('(max-width: 650px)').matches) {
                //alert('650');
                h_tel = "hidden";
                
            } 
            // else if (window.matchMedia('(max-width: 850px)').matches) {
            //     alert('850');
       
            // }


            let html = '<table id="example1" class="table table-bordered text-center">' +
                '<thead>' +
                '<tr class="bg-info" style="vertical-align: top;">' +
                '<th style="width: 200px; vertical-align: top;">ชื่อร้าน</th>' +
                '<th style="vertical-align: top;">ที่อยู่</th>' +
                '<th ' + h_tel + ' style="width: 100px; vertical-align: top;">เบอร์โทร</th>' +
                '<th style="width: 100px; vertical-align: top;">Tool</th>' +
                '</tr>' +
                '</thead>' +
                '<tbody>';

            $.each(data, function (indexInArray, valueOfElement) {
                                
                if(valueOfElement.tel == '' || valueOfElement.tel == null){
                    tel = '';
                }else{
                    tel = valueOfElement.tel.substring(0,3) + '-' + valueOfElement.tel.substring(3,6) + '-' + valueOfElement.tel.substring(6,10) + (valueOfElement.tel.substring(10) == '' ? '' : '#' + valueOfElement.tel.substring(10));
                }
                
                if($('#shopCode').val() == valueOfElement.shop_code){
                    tr = '<tr style="color: red;">'
                    focus = 'idfocus';
                }else{
                    tr = '<tr>';
                    focus = '';
                }
                html += tr +
                    '<td><span id="' + focus + '">' + valueOfElement.shop_name_th + '</span></td>' +
                    '<td style="text-align: left;">' + valueOfElement.addr_name_th + '</td>' + 
                    '<td ' + h_tel + '>' + valueOfElement.tel + '</td>' +             
                    '<td><span class="d-flex justify-content-around"> <span class="hover-del" onclick="GetDelShopTable(' + "'" + valueOfElement.shop_code + "'," + "'" + valueOfElement.shop_name_th + "'" + ')"><i class="fas fa-trash-alt"></i></span><span class="hover-edit" onclick="GetEditShopTable(' + "'" + valueOfElement.shop_code + "'," + "'" + valueOfElement.shop_name_th + "'" + ')"><i class="fas fa-edit"></i></span> </span></td>' +
                '</tr>';
                n++;
            });
            html += '</tbody></table>';
            $('#div_shopList').html(html);
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
    let shopCode = $('#shopCode').val();
   // alert(form);
  $('#form_shop').submit();
  let formAction = "";
  let = active = "";
  if(form == "FormAdd"){
    formAction = "/Shop/AddShop";
    active = "add";
  }else if(form == "FormEdit"){
    formAction = "/Shop/EditShop";
    active = "edit";
  }
  setTimeout(() => {
    $.ajax({
      url: formAction,
      type: "GET",
      success: function (data) {
        $("#div_index").html(data);
        GetShopFormAction();
        $("#div_index").fadeIn(1000);
        localStorage.clear();
        GetShopTable("submit",active,shopCode);
        $('#from_edit').hide();
      },
    });
  }, 1000);  
}