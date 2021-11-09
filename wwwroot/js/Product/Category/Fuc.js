/************* Get Account table */
function GetCategoryTable() {
    let local = location.origin + "/Product/GetCategoryTable";
    $.get(local,
        function (data, textStatus, jqXHR) {
            
            let n = 1;
            let h_detail = "";
            let tr = "";
            let focus = "";

            if (window.matchMedia('(max-width: 650px)').matches) {
                //alert('650');
                h_detail = "hidden";
                
            } 
            // else if (window.matchMedia('(max-width: 850px)').matches) {
            //     alert('850');
       
            // }


            let html =
                '<thead>' +
                '<tr class="bg-info" style="vertical-align: top;">' +
                '<th style="width: 200px; vertical-align: top;">ชื่อหวมดหมู่สินค้า</th>' +
                '<th ' + h_detail + ' style="vertical-align: top;">รายละเอียด/หมายเหตุ</th>' +
                '<th style="width: 100px; vertical-align: top;">Tool</th>' +
                '</tr>' +
                '</thead>' +
                '<tbody>';

            $.each(data, function (indexInArray, valueOfElement) {
                html += '<tr id="tr_' + valueOfElement.category_code + '">' +
                    '<td>' + valueOfElement.category_name_th + '</td>' +
                    '<td ' + h_detail + '>' + (valueOfElement.category_detail == null ? "" : valueOfElement.category_detail) + '</td>' +             
                    '<td><span class="d-flex justify-content-around"> <span class="hover-del" onclick="GetDelCategoryTable(' + "'" + valueOfElement.category_code + "'," + "'" + valueOfElement.category_name_th + "'" + ')"><i class="fas fa-trash-alt"></i></span><span class="hover-edit" onclick="GetEditCategoryTable(' + "'" + valueOfElement.category_code + "'," + "'" + valueOfElement.category_name_th + "'" + ')"><i class="fas fa-edit"></i></span> </span></td>' +
                '</tr>';
                n++;
            });
            html += '</tbody>';
            $('#t_categorylist').html(html);
            if(focus != ''){
                $('#idfocus').focus();
            }
        },
        "json"
    );

}

/***** Action form เมื่อมีการคลิก Edit account *****/
function GetEditCategoryTable(category_code){
    //alert(category_code);
    $.get("/Product/GetCategoryId/"+category_code,
    function(data){
        $('#category_code').val(data.category_code);
        $('#category_name_th').val(data.category_name_th);
        $('#category_detail').val(data.category_detail);  
        $('#category_name_th').focus();    
        $('#l_form_edit').show();  
        $('#b_form_edit').click();
        $('#section_cateory').slideDown();
    },'json'
    );
    if($('#b_form').hasClass("btn-outline-success")){   
        $('#section_cateory').slideDown();
        $('#b_form').removeClass("btn-outline-success");
        $('#b_form').addClass("btn-outline-danger");
        $('#i_form').removeClass("fa-plus");
        $('#i_form').addClass("fa-minus");
      }
    $('tr').css('color','#000');
    $('#tr_'+category_code).css('color','red');
    //alert('Hi');
    //$('#div_index').hide();
    //GetPagePdCategory("/Product/Category?category_code="+  category_code,category_code);
    //$('#section_category').show();
}

/************** For delete account */
function GetDelCategoryTable(category_code,name){
    let msg = 'ยืนยันการลบข้อมูล ร้าน' + name;
    if(confirm(msg)){
        GetCategoryTable("empty","del",category_code);
    }    
}

/*************** For Add or Edit account */
function GetSubmit(form) {
    //alert();
    let CategoryCode = $('#CategoryCode').val();
   // alert(form);
  $('#form_category').submit();
  let formAction = "";
  let = active = "";
  if(form == "Form"){
    formAction = "/Product/Category?fromform=Form";
    active = "Form";
  }else{
    formAction = "/Product/Category";
    active = "Empty";
  }
  setTimeout(() => {
    $.ajax({
      url: formAction,
      type: "GET",
      success: function (data) {
        $("#div_index").html(data);
        //GetShopFormAction();
        $("#div_index").fadeIn(1000);
        localStorage.clear();
        GetCategoryTable(active,CategoryCode);        
        $('#section_cateory').show();
      },
    });
  }, 1000);  
}