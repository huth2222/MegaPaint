$(document).ready(()=>{
  if($('#BdYear').val() == 0){
    $('#MP_Admin_birthday').val('');
  }
  
  
    if($('#MP_Admin_avatar').val() != ''){
        $('#imagePreview').attr('src', '/data/admin/profile/' + $('#MP_Admin_avatar').val());
        $('#img0').hide();
        $('#imagePreview').show();        
    }

    $('#clear_avatar').click(()=>{
        $('#imagePreview').hide();
        $('#img0').show();
        $('#MP_Admin_avatar').val('');
    });

    $('#MP_Admin_username').blur(()=>{
        $.get("/Admin/GetUsername/" + $('#MP_Admin_username').val(),
        function (data, textStatus, jqXHR) {
            if(data != ""){
              $('#msg_username').html('* '+data);
              $("#MP_Admin_username").addClass("is-invalid");
            }else{
              $('#msg_username').html('*');
              $("#MP_Admin_username").removeClass("is-invalid");
            }
        }
        ,"json"
        );
    });
      $("#btn_submit").click(() => {
        //alert($('#btn_submit').html());
    
        if ($("#MP_Admin_username").val() == "") {
            $("#MP_Admin_username").addClass("is-invalid");
          }else{
              $("#MP_Admin_username").removeClass("is-invalid");
          }
  
        //   if ($("#MP_Admin_password").val() == "") {
        //     $("#MP_Admin_password").addClass("is-invalid");
        //   }else{
        //       $("#MP_Admin_password").removeClass("is-invalid");
        //   }
  
          if ($("#MP_Admin_prefix_id").val() == "") {
            $("#MP_Admin_prefix_id").addClass("is-invalid");
          }else{
              $("#MP_Admin_prefix_id").removeClass("is-invalid");
          }
  
          if ($("#MP_Admin_firstname").val() == "") {
            $("#MP_Admin_firstname").addClass("is-invalid");
          }else{
              $("#MP_Admin_firstname").removeClass("is-invalid");
          }
  
          if ($("#MP_Admin_lastname").val() == "") {
            $("#MP_Admin_lastname").addClass("is-invalid");
          }else{
              $("#MP_Admin_lastname").removeClass("is-invalid");
          }
  
          if ($("#MP_Admin_gender_id").val() == "") {
            $("#MP_Admin_gender_id").addClass("is-invalid");
          }else{
              $("#MP_Admin_gender_id").removeClass("is-invalid");
          }
    
        if ($("#MP_Admin_username").val() == "") {
          $("#MP_Admin_username").focus();
        } 
        else if ($("#MP_Admin_password").val() != $("#conf_password").val()) {
            $("#conf_password").addClass("is-invalid");
          alert("ยันยันรหัสผ่านไม่ถูกต้อง");
          $("#conf_password").focus();
        } else if ($("#MP_Admin_prefix_id").val() == "") {
          $("#MP_Admin_prefix_id").focus();
        } else if ($("#MP_Admin_firstname").val() == "") {
          $("#MP_Admin_firstname").focus();
        } else if ($("#MP_Admin_lastname").val() == "") {
          $("#MP_Admin_lastname").focus();
        } else if ($("#MP_Admin_gender_id").val() == "") {
          $("#MP_Admin_gender_id").focus();
        } else {
          $('#btn_alert').click();   
        }
      });

    $('#conf_password').keyup(()=>{
        if(
           ($('#conf_password').val() != '' && $('#MP_Admin_password').val() != '')
        && ($('#conf_password').val().length >= $('#MP_Admin_password').val().length)
        && ($('#conf_password').val() != $('#MP_Admin_password').val())
        ){
            alert('ยันยันรหัสผ่านไม่ถูกต้อง');
            return false;
            //alert($('#MP_Admin_password').val().length + '\n' + $('#conf_password').val().length);
        }
    });

    
   
    
    
});