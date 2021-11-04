$(document).ready(()=>{
    $('#form_repwd').submit(()=>{
        if($('#password').val().length < 3){
            alert('ยืนยันรหัสผ่านต้องมีความยาว 3 ตัวอักษรขึ้นไป');
            $("#password").addClass("is-invalid");
            return false;
        }else{
            $("#password").removeClass("is-invalid");
        }

        if($('#password').val() != $('#conf_password').val()){
            alert('ยืนยันรหัสผ่านไม่ถูกต้อง');
            $("#conf_password").addClass("is-invalid");
            return false;
        }       
    });
});