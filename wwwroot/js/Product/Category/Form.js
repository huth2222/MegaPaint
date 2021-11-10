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
      $('#title_name').html('เพิ่มหมวดหมู่สินค้า');
      $('#section_category input,#category_detail').css('background-color','#f0fff7');
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
      $('#title_name').html('หมวดหมู่สินค้า');
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
      table_2 = $("#table-2");
        table_2.find("tr:even").addClass("alt");
        // Initialise the second table specifying a dragClass and an onDrop function that will display an alert
        table_2.tableDnD({
            onDragClass: "myDragClass",
            onDrop: function(table, row) {
                var rows = table.tBodies[0].rows;
                var debugStr = "Row dropped was "+row.id+". New order: ";
                for (var i=0; i<rows.length; i++) {
                    debugStr += rows[i].id+" ";
                    $('#t'+rows[i].id).val((i+1));
                }
                $(table).parent().find('.result').text(debugStr);
            },
            onDragStart: function(table, row) {
                $(table).parent().find('.result').text("Started dragging row "+row.id);
            }
        });

       
      
});

