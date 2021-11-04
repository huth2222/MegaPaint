$(document).ready(()=>{
    $('#changwat_id').change(()=>{
        getAmphoe($('#changwat_id').val());
    });

    $('#amphoe_id').change(()=>{
        getTambon($('#amphoe_id').val());
    });

    $('#tambon_id').change(()=>{
        getZipCode($('#tambon_id').val());
    });

    
    $('#imagePreview').hide();
    $('#shop_picture').change(function () {
        configImageProfile(this);
    });

    /********************** */

    $("#btn_submit").click(() => {
        //alert($('#btn_submit').html());
    
        if ($("#shop_name_th").val() == "") {
          $("#shop_name_th").addClass("is-invalid");
        }else{
            $("#shop_name_th").removeClass("is-invalid");
        }

        if ($("#changwat_id").val() == "") {
          $("#changwat_id").addClass("is-invalid");
        }else{
            $("#changwat_id").removeClass("is-invalid");
        }

        if ($("#amphoe_id").val() == "") {
          $("#amphoe_id").addClass("is-invalid");
        }else{
            $("#amphoe_id").removeClass("is-invalid");
        }

        if ($("#tambon_id").val() == "") {
          $("#tambon_id").addClass("is-invalid");
        }else{
            $("#tambon_id").removeClass("is-invalid");
        }

    
        if ($("#shop_name_th").val() == "") {
          $("#shop_name_th").focus();
        } else if ($("#changwat_id").val() == "") {
          $("#changwat_id").focus();
        } else if ($("#amphoe_id").val() == "") {
          $("#amphoe_id").focus();
        } else if ($("#tambon_id").val() == "") {
          $("#tambon_id").focus();
        } else {
          $('#btn_alert').click();   
        }
      });
    
});

