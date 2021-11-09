/***vvv************************Permanent Address */
function getAmphoe(changwat_id){
    $.get(
        "/API/GetAmphoe/" + changwat_id,
        function (data, textStatus, jqXHR) {
            var amphoe = '<option value="" style="background-color: gray;">กรุณาเลือกอำเภอ</option>';
          $.each(data, function (indexInArray, valueOfElement) {
                amphoe += '<option value="'+ valueOfElement.amphoe_id +'">' + valueOfElement.amphoe_name_th + '</option>';
          });
          $("#amphoe_id").html(amphoe);
          $("#tambon_id").html('');
          $("#zip_code").val('');
        },
        "json"
      );
}

function getTambon(amphoe_id){   
    $.get(
        "/API/GetTambon/" + amphoe_id,
        function (data, textStatus, jqXHR) {
            var tambon = '<option value="" style="background-color: gray;">กรุณาเลือกตำบล</option>';
          $.each(data, function (indexInArray, valueOfElement) {
                tambon += '<option value="'+ valueOfElement.tambon_id +'">' + valueOfElement.tambon_name_th + '</option>';
          });
          $("#tambon_id").html(tambon);
          $("#zip_code").val('');
        },
        "json"
      );
}

function getZipCode(tambon_id){
    //alert(tambon_code);    
    $.get(
        "/API/GetZipCode/" + tambon_id,
        function (data, textStatus, jqXHR) {          
            // alert(data.zip_code);
          $("#zip_code").val(data.zip_code);
        },
        "json"
      );
}