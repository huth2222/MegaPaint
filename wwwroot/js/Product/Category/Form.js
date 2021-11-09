$(document).ready(()=>{
  // $('#t_categorylist').click((e)=>{
  //   $(e.currentTarget).children('td, th').css('color','#000');
  // });

  $('#t_categorylist').bind('click', function(e) {
    //alert();
    //$(e.target).closest('table').children('tbody').css('color','#000');
    // $(e.target).closest('tbody').children('tr').css('color','#000');
    // $(e.target).closest('tr').children('td').css('color','red');
  //   setTimeout(() => {
  //   $(e.target).closest('tr').children('td').css('color','red');
  // }, 1000);
});



    $('#section_cateory').hide();
    $('#l_form_edit').hide();
  
  $('#b_form_edit').click(()=>{
    if($('#active_form').val() == 'edit'){
      $('#b_form_cancel').click();
      $('#active_form').val('')
      $('tr').css('color','#000');
      $('#l_form_edit').hide();
      return false;
    }else{
      $('#active_form').val('edit')
    }
  });
  
  
  $('#b_form').click(()=>{    
    if($('#b_form').hasClass("btn-outline-success")){   
      $('#section_cateory').slideDown();
      $('#b_form').removeClass("btn-outline-success");
      $('#b_form').addClass("btn-outline-danger");
      $('#i_form').removeClass("fa-plus");
      $('#i_form').addClass("fa-minus");
    }else if($('#b_form').hasClass("btn-outline-danger")){
      $('#section_cateory').slideUp();
      $('#b_form').removeClass("btn-outline-danger");
      $('#b_form').addClass("btn-outline-success");
      $('#i_form').removeClass("fa-minus");
      $('#i_form').addClass("fa-plus");
    }
  });
    $("#btn_submit").click(() => {
        //alert($('#btn_submit').html());
    
        if ($("#category_name_th").val() == "") {
          $("#category_name_th").addClass("is-invalid");
        }else{
            $("#category_name_th").removeClass("is-invalid");
        }
    
        if ($("#category_name_th").val() == "") {
          $("#category_name_th").focus();
        }else {
          $('#btn_alert').click();   
        }
      });
      
});

