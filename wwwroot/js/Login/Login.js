$(document).ready(()=>{
    $('#btn_submit').click(()=>{
        if($('#username').val() == '' || $('#password').val() == ''){
        
        if($('#username').val() == ''){
            $('#username').addClass("is-invalid");
        }else{
            $('#username').removeClass("is-invalid");
        }
        if($('#password').val() == ''){
            $('#password').addClass("is-invalid");
        }else{
            $('#password').removeClass("is-invalid");
        }
        return false;
    }else{
        $('#form_submit').submit();
    }
    });    
});