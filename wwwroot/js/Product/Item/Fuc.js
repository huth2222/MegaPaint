/************* Get Account table */
function GetCategoryTable_() {
  $.ajax({
    url: "/Product/CategoryTable",
    type: "GET",
    success: function (data) {
      $("#account_list").html(data);
    },
  });
}
function GetGroupTable() {
  let local = location.origin + "/Product/GetGroupTable";
  $.get(
    local,
    function (data, textStatus, jqXHR) {
      let n = 1;
      let h_detail = "";
      let tr = "";
      let focus = "";

      if (window.matchMedia("(max-width: 650px)").matches) {
        //alert('650');
        h_detail = "hidden";
      }
      // else if (window.matchMedia('(max-width: 850px)').matches) {
      //     alert('850');

      // }

      let html =
        '<table id="t_grouplist" class="table table-bordered text-center" cellspacing="0" cellpadding="0">' +
        "<thead>" +
        '<tr class="bg-info" style="vertical-align: top;">' +
        '<th style="width: 200px; vertical-align: top;">กลุ่มสินค้า</th>' +
        "<th " +
        h_detail +
        ' style="vertical-align: top;">รายละเอียด/หมายเหตุ</th>' +
        '<th style="width: 200px; vertical-align: top;">หมวดหมู่</th>' +
        '<th style="width: 100px; vertical-align: top;">Tool</th>' +
        "</tr>" +
        "</thead>" +
        "<tbody>";

      $.each(data, function (indexInArray, valueOfElement) {
        if (valueOfElement.group_code == $("#GroupCode").val()) {
          tr = 'style="color: red;"';
        } else {
          tr = "";
        }
        html +=
          '<tr id="tr_' +
          valueOfElement.group_code +
          '" ' +
          tr +
          ">" +
          "<td>" +
          valueOfElement.group_name_th +
          "</td>" +
          "<td " +
          h_detail +
          ">" +
          (valueOfElement.group_detail == null
            ? ""
            : valueOfElement.group_detail) +
          "</td>" +
          "<td>" +
          valueOfElement.category_name_th +
          "</td>" +
          '<td><span class="d-flex justify-content-around"> <span class="hover-del" onclick="GetDelGroupTable(' +
          "'" +
          valueOfElement.group_code +
          "'," +
          "'" +
          valueOfElement.group_name_th +
          "'" +
          ')"><i class="fas fa-trash-alt"></i></span><span class="hover-edit" onclick="GetEditGroupTable(' +
          "'" +
          valueOfElement.group_code +
          "'," +
          "'" +
          valueOfElement.group_name_th +
          "'" +
          ')"><i class="fas fa-edit"></i></span> </span></td>' +
          "</tr>";
        n++;
      });
      html += "</tbody></table>";
      // let dnd = ''+

      $("#account_list").html(html);
      // $('#table-2').html(dnd);
    },
    "json"
  );
}

/***** Action form เมื่อมีการคลิก Edit account *****/
function GetEditGroupTable(group_code) {
  $("#GroupCode").val("");
  //alert(category_code);
  $.get(
    "/Product/GetGroupId/" + group_code,
    function (data) {
      $("#category_code").val(data.category_code);
      $("#group_code").val(data.group_code);
      $("#group_name_th").val(data.group_name_th);
      $("#group_detail").val(data.group_detail);
      setTimeout(() => {
        $("#group_name_th").focus();
      }, 500);

      // $('#l_form_edit').show();
      // $('#b_form_edit').click();
      $("#section_group").slideDown();
    },
    "json"
  );
  // if($('#b_form').hasClass("btn-outline-success")){
  //     $('#section_cateory').slideDown();
  //     $('#b_form').removeClass("btn-outline-success");
  //     $('#b_form').addClass("btn-outline-danger");
  //     $('#i_form').removeClass("fa-plus");
  //     $('#i_form').addClass("fa-minus");
  //   }
  // $('#title_name').html('แก้ไขกลุ่มสินค้าในหมวดหมู่');
  if ($("#title_name").html() != "แก้ไขกลุ่มสินค้าในหมวดหมู่") {
    $("#title_name").fadeOut(300, function () {
      $(this).html("แก้ไขกลุ่มสินค้าในหมวดหมู่").fadeIn(300);
    });
  }
  $("#section_group input,#category_code,#group_detail").css(
    "background-color",
    "#fff3f0"
  );
  $("#form_type").val("Edit");
  $("#btn_submit").html("Edit");
  $("#btn_submit").removeClass("btn-success");
  $("#btn_submit").addClass("btn-primary");

  if ($("#b_form").hasClass("btn-outline-danger")) {
    $("#section_group").slideDown();
    $("#b_form").removeClass("btn-outline-danger");
    $("#b_form").addClass("btn-outline-success");
    $("#i_form").removeClass("fa-minus");
    $("#i_form").addClass("fa-plus");
  }
  $("tr").css("color", "#000");
  $("#tr_" + group_code).css("color", "red");
  //alert('Hi');
  //$('#div_index').hide();
  //GetPagePdCategory("/Product/Category?category_code="+  category_code,category_code);
  //$('#section_category').show();
}

/************** For delete account */
function GetDelGroupTable(group_code, name) {
  let msg = "ยืนยันการลบข้อมูล กลุ่ม" + name;
  if (confirm(msg)) {
    $.get("/Product/DelGroupId/" + group_code, function (data) {
      alert("ลบ " + data + " สำเร็จ");
      GetGroupTable();
      $("#btn_cancel").click();
    });
  }
}

/*************** For Add or Edit account */
function GetSubmit(form) {
  //alert();
  let GroupCode = $("#GroupCode").val();
  // alert(form);
  $("#form_group").submit();
  let formAction = "";
  let = active = "";
  if (form == "Form") {
    formAction = "/Product/Group?fromform=Form";
    active = "Form";
  } else {
    formAction = "/Product/Group";
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
        GetGroupTable(active, GroupCode);
        $("#section_group").show();
      },
    });
  }, 1000);
}


/************************** */
var _URL = window.URL || window.webkitURL;

function configImageProfile(i,pic1) {
  var reader, img, objectUrl;
  if (i.files && i.files[0]) {
      img = new Image();
      reader = new FileReader();
      objectUrl = _URL.createObjectURL(i.files[0]);
      img.onload = function () {

          reader.onload = function (e) {
              $('#img_main').attr('src', e.target.result);
          }
          reader.readAsDataURL(i.files[0]);
      }
      img.src = objectUrl;
  }
}
