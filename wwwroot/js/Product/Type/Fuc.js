/************* Get Account table */
function GetTypeTable(active,type_code) {
    //alert(active);
    if(shop_code == null || shop_code == ""){
        shop_code = "empty";
    }
    let local = location.origin + "/Product/GetTypeTable/" + active + '/' + type_code;
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


            let html = '<table id="example1" class="table table-bordered text-center">' +
                '<thead>' +
                '<tr class="bg-info" style="vertical-align: top;">' +
                '<th style="width: 200px; vertical-align: top;">ชื่อชนิดสินค้า</th>' +
                '<th ' + h_detail + ' style="vertical-align: top;">รายละเอียด/หมายเหตุ</th>' +
                '<th style="width: 100px; vertical-align: top;">Tool</th>' +
                '</tr>' +
                '</thead>' +
                '<tbody>';

            $.each(data, function (indexInArray, valueOfElement) {
                if($('#TypeCode').val() == valueOfElement.type_code){
                    tr = '<tr style="color: red;">'
                    focus = 'idfocus';
                }else{
                    tr = '<tr>';
                    focus = '';
                }
                html += tr +
                    '<td><span id="' + focus + '">' + valueOfElement.type_name_th + '</span></td>' +
                    '<td ' + h_detail + '>' + valueOfElement.type_detail + '</td>' +             
                    '<td><span class="d-flex justify-content-around"> <span class="hover-del" onclick="GetDelTypeTable(' + "'" + valueOfElement.type_code + "'," + "'" + valueOfElement.type_name_th + "'" + ')"><i class="fas fa-trash-alt"></i></span><span class="hover-edit" onclick="GetEditTypeTable(' + "'" + valueOfElement.type_code + "'," + "'" + valueOfElement.type_name_th + "'" + ')"><i class="fas fa-edit"></i></span> </span></td>' +
                '</tr>';
                n++;
            });
            html += '</tbody></table>';
            $('#div_shopList').html(html);
            if(focus != ''){
                $('#idfocus').focus();
            }
        },
        "json"
    );

}

/***** Action form เมื่อมีการคลิก Edit account *****/
function GetEditTypeTable(type_code){
    //alert('Hi');
    $('#div_index').hide();
    GetMenuEditType();
    GetPageEditType("/Product/EditType?type_code="+  type_code,type_code);
    $('#edit_content').show();
}

/************** For delete account */
function GetDelTypeTable(type_code,name){
    let msg = 'ยืนยันการลบข้อมูล ร้าน' + name;
    if(confirm(msg)){
        GetTypeTable("empty","del",type_code);
    }    
}

/*************** For Add or Edit account */
function GetSubmit(form) {
    //alert();
    let shopCode = $('#TypeCode').val();
   // alert(form);
  $('#form_type').submit();
  let formAction = "";
  let = active = "";
  if(form == "FormAdd"){
    formAction = "/Product/Type?fromform=AddEdit";
    active = "add";
  }else if(form == "FormEdit"){
    formAction = "/Product/EditType";
    active = "edit";
  }
  setTimeout(() => {
    $.ajax({
      url: formAction,
      type: "GET",
      success: function (data) {
        $("#div_index").html(data);
        GetShopFormAction();
        $("#div_index").fadeIn(1000);
        localStorage.clear();
        GetShopTable("submit",active,shopCode);
        $('#from_edit').hide();
      },
    });
  }, 1000);  
}