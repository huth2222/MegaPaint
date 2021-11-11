$(document).ready(()=>{
  $('#btn_cancel').hide();
  $('#category_name_th').keyup(()=>{
    if($('#form_type').val() == 'Add'){
      if($('#category_name_th').val() != '' || $('#category_detail').val() != ''){
        $('#btn_cancel').fadeIn(1000);
      }else{
        $('#btn_cancel').fadeOut(1000);
      }
    }else if($('#form_type').val() == 'Edit'){
      $('#btn_cancel').fadeIn(1000);
    }
    
    
  });
  $('#form_type').hide();
  $('#category_code').hide();
  $('#CategoryCode').hide();



    $('#section_category').hide();
    // $('#l_form_edit').hide();
    if($('#form_type').val() == "Add" && $('#CategoryCode').val() != ""){
      //alert();
      $('#section_category').fadeIn(1000);
      $('#b_form').removeClass("btn-outline-success");
      $('#b_form').addClass("btn-outline-danger");
      $('#i_form').removeClass("fa-plus");
      $('#i_form').addClass("fa-minus");
      $('#title_name').html('เพิ่มหมวดหมู่สินค้า');
      $('#section_category input,#category_detail').css('background-color','#f0fff7');
    }
  $('#btn_cancel').click(()=>{
    $('#title_name').html('หมวดหมู่สินค้า');
    $('#btn_cancel').fadeOut(500);
    $('#section_category').slideUp();
    $('#form_type').val('');
    $('#category_code').val('');
    $('#section_category input,#category_detail').css('background-color','');
    $('#category_code').val('');
    $('#category_name_th').val('');
    $('#category_detail').val('');
    
    if($('#b_form').hasClass("btn-outline-danger")){      
      $('#b_form').removeClass("btn-outline-danger");
      $('#b_form').addClass("btn-outline-success");
      $('#i_form').removeClass("fa-minus");
      $('#i_form').addClass("fa-plus");      
    }
    
    $('tr').css('color','#000');
    
    // if($('#b_form').hasClass("card-info")){
    //   $('#class_form').removeClass("card-info")
    // }
  });

  // $('#b_form_edit').click(()=>{
  //   if($('#active_form').val() == 'edit'){
  //     $('#b_form_cancel').click();
  //     $('#active_form').val('')
  //     $('tr').css('color','#000');
  //     $('#l_form_edit').hide();
  //     return false;
  //   }else{
  //     $('#active_form').val('edit')
  //   }
  // });
  
  
  $('#b_form').click(()=>{  
    if($('#btn_submit').html() == 'Edit'){
      $('#btn_submit').html('Add');
      $('#btn_submit').removeClass('btn-primary');
      $('#btn_submit').addClass('btn-success')
    }  
    if($('#b_form').hasClass("btn-outline-success")){
      // $('#title_name').fadeOut(500,()=>{
      //   $(this).html('เพิ่มหมวดหมู่สินค้า').fadeIn(500);
      // });
      $("#title_name").fadeOut(300, function() {
        $(this).html("เพิ่มหมวดหมู่สินค้า").fadeIn(300);
     });
      //$('#title_name').fadeOut(500).fadeIn(500).html('เพิ่มหมวดหมู่สินค้า');
      $('#section_category input,#category_detail').css('background-color','#f0fff7');
      $('tr').css('color','#000');
      $('#btn_cancel').hide();
      $('#form_type').val('Add');
      $('#category_code').val('');
      $('#category_name_th').val('');
      $('#category_detail').val('');
      $('#section_category').slideDown();
      $('#b_form').removeClass("btn-outline-success");
      $('#b_form').addClass("btn-outline-danger");
      $('#i_form').removeClass("fa-plus");
      $('#i_form').addClass("fa-minus");
    }else if($('#b_form').hasClass("btn-outline-danger")){
      //$('#title_name').html('หมวดหมู่สินค้า');
      $("#title_name").fadeOut(300, function() {
        $(this).html("หมวดหมู่สินค้า").fadeIn(300);
     });
      $('#section_category input,#category_detail').css('background-color','');
      $('#form_type').val('');
      $('#section_category').slideUp();
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


      //DND
      

       
      
});

