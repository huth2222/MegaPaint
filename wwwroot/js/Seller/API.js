/***vvv************************Permanent Address */
function getPmAmphoe(changwat_id){
    $.get(
        "/API/GetAmphoe/" + changwat_id,
        function (data, textStatus, jqXHR) {
            var amphoe = '<option value="" style="background-color: gray;">กรุณาเลือกอำเภอ</option>';
          $.each(data, function (indexInArray, valueOfElement) {
                amphoe += '<option value="'+ valueOfElement.amphoe_id +'">' + valueOfElement.amphoe_name_th + '</option>';
          });

            $("#MP_SellerPermanentAddress_amphoe_id").html(amphoe);
          
          $("#MP_SellerPermanentAddress_tambon_id").html('');
          $("#MP_SellerPermanentAddress_zip_code").val('');
        },
        "json"
      );
      $("#MP_SellerPermanentAddress_tambon_id").html('');
      $('#MP_SellerPermanentAddress_zip_code').val('');
}

function getPmTambon(amphoe_id){   
    $.get(
        "/API/GetTambon/" + amphoe_id,
        function (data, textStatus, jqXHR) {
            var tambon = '<option value="" style="background-color: gray;">กรุณาเลือกตำบล</option>';
          $.each(data, function (indexInArray, valueOfElement) {
                tambon += '<option value="'+ valueOfElement.tambon_id +'">' + valueOfElement.tambon_name_th + '</option>';
          });
          $("#MP_SellerPermanentAddress_tambon_id").html(tambon);
          $("#MP_SellerPermanentAddress_zip_code").val('');
        },
        "json"
      );
      $('#MP_SellerPermanentAddress_zip_code').val('');
}

function getPmZipCode(tambon_id){
    //alert(tambon_code);    
    $.get(
        "/API/GetZipCode/" + tambon_id,
        function (data, textStatus, jqXHR) {          
            // alert(data.zip_code);
          $("#MP_SellerPermanentAddress_zip_code").val(data.zip_code);
        },
        "json"
      );
}

/***vvv************************Present Address */
function getPsAmphoe(changwat_id){
  $.get(
      "/API/GetAmphoe/" + changwat_id,
      function (data, textStatus, jqXHR) {
          var amphoe = '<option value="" style="background-color: gray;">กรุณาเลือกอำเภอ</option>';
        $.each(data, function (indexInArray, valueOfElement) {
              amphoe += '<option value="'+ valueOfElement.amphoe_id +'">' + valueOfElement.amphoe_name_th + '</option>';
        });
        $("#MP_SellerPresentAddress_amphoe_id").html(amphoe);
        $("#MP_SellerPresentAddress_tambon_id").html('');
        $("#MP_SellerPresentAddress_zip_code").val('');
      },
      "json"
    );
}

function getPsTambon(amphoe_id){   
  $.get(
      "/API/GetTambon/" + amphoe_id,
      function (data, textStatus, jqXHR) {
          var tambon = '<option value="" style="background-color: gray;">กรุณาเลือกตำบล</option>';
        $.each(data, function (indexInArray, valueOfElement) {
              tambon += '<option value="'+ valueOfElement.tambon_id +'">' + valueOfElement.tambon_name_th + '</option>';
        });
        $("#MP_SellerPresentAddress_tambon_id").html(tambon);
        $("#MP_SellerPresentAddress_zip_code").val('');
      },
      "json"
    );
}

function getPsZipCode(tambon_id){
  //alert(tambon_code);    
  $.get(
      "/API/GetZipCode/" + tambon_id,
      function (data, textStatus, jqXHR) {          
          // alert(data.zip_code);
        $("#MP_SellerPresentAddress_zip_code").val(data.zip_code);
      },
      "json"
    );
}