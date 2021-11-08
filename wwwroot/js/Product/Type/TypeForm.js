$(document).ready(()=>{
    $("#btn_submit").click(() => {
        //alert($('#btn_submit').html());
    
        if ($("#type_name_th").val() == "") {
          $("#type_name_th").addClass("is-invalid");
        }else{
            $("#type_name_th").removeClass("is-invalid");
        }
    
        if ($("#type_name_th").val() == "") {
          $("#type_name_th").focus();
        }else {
          $('#btn_alert').click();   
        }
      });
    
});

