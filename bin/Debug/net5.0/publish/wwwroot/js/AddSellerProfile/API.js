/***vvv************************Permanent Address */
function getPmAmphoe(changwat_id){
    $.get(
        "/API/GetAmphoe/" + changwat_id,
        function (data, textStatus, jqXHR) {
            var amphoe = '<option value="" style="background-color: gray;">กรุณาเลือกอำเภอ</option>';
          $.each(data, function (indexInArray, valueOfElement) {
                amphoe += '<option value="'+ valueOfElement.amphoe_id +'">' + valueOfElement.amphoe_name_th + '</option>';
          });
          $("#MP_View_Seller_permanent_amphoe_id").html(amphoe);
          $("#MP_View_Seller_permanent_zip_code").val('');
        },
        "json"
      );
}

function getPmTambon(amphoe_id){    
    $.get(
        "/API/GetTambon/" + amphoe_id,
        function (data, textStatus, jqXHR) {
            var tambon = '<option value="" style="background-color: gray;">กรุณาเลือกตำบล</option>';
          $.each(data, function (indexInArray, valueOfElement) {
                tambon += '<option value="'+ valueOfElement.tambon_id +'">' + valueOfElement.tambon_name_th + '</option>';
          });
          $("#MP_View_Seller_permanent_tambon_id").html(tambon);
          $("#MP_View_Seller_permanent_zip_code").val('');
        },
        "json"
      );
}

function getPmZipCode(tambon_id){
    //alert(tambon_code);    
    $.get(
        "/API/GetZipCode/" + tambon_id,
        function (data, textStatus, jqXHR) {          
            // alert(data.zip_code);
          $("#MP_View_Seller_permanent_zip_code").val(data.zip_code);
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
        $("#MP_View_Seller_present_amphoe_id").html(amphoe);
        $("#MP_View_Seller_present_zip_code").val('');
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
        $("#MP_View_Seller_present_tambon_id").html(tambon);
        $("#MP_View_Seller_present_zip_code").val('');
      },
      "json"
    );
}

function getPsZipCode(tambon_id){   
  $.get(
      "/API/GetZipCode/" + tambon_id,
      function (data, textStatus, jqXHR) {          
        $("#MP_View_Seller_present_zip_code").val(data.zip_code);
      },
      "json"
    );
}