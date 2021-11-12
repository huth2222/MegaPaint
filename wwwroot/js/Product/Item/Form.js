$(document).ready(() => {
  $('#imagePreview').hide();
    $('#shop_picture').change(function () {
        configImageProfile(this);
    });

  $("#pic1").click(() => {
    $("#main_picture").html($("#pic1").html());
    $("#main_picture img").addClass("main-picture");
  });
  $("#pic2").click(() => {
    $("#main_picture").html($("#pic2").html());
    $("#main_picture img").addClass("main-picture");
  });
  $("#pic3").click(() => {
    $("#main_picture").html($("#pic3").html());
    $("#main_picture img").addClass("main-picture");
  });
  $("#pic4").click(() => {
    $("#main_picture").html($("#pic4").html());
    $("#main_picture img").addClass("main-picture");
  });
  $("#pic5").click(() => {
    $("#main_picture").html($("#pic5").html());
    $("#main_picture img").addClass("main-picture");
  });
  $("#btn_cancel").hide();
  $("#group_name_th").keyup(() => {
    if ($("#form_type").val() == "Add") {
      if ($("#group_name_th").val() != "" || $("#group_detail").val() != "") {
        $("#btn_cancel").fadeIn(1000);
      } else {
        $("#btn_cancel").fadeOut(1000);
      }
    } else if ($("#form_type").val() == "Edit") {
      $("#btn_cancel").fadeIn(1000);
    }
  });
  $("#form_type").hide();
  $("#group_code").hide();
  $("#GroupCode").hide();

  $("#section_group").hide();
  // $('#l_form_edit').hide();
  if ($("#form_type").val() == "Add" && $("#GroupCode").val() != "") {
    //alert();
    $("#section_group").fadeIn(1000);
    $("#b_form").removeClass("btn-outline-success");
    $("#b_form").addClass("btn-outline-danger");
    $("#i_form").removeClass("fa-plus");
    $("#i_form").addClass("fa-minus");
    $("#title_name").html("เพิ่มกลุ่มสินค้าในหมวดหมู่");
    $("#section_group input,#category_code,#group_detail").css(
      "background-color",
      "#f0fff7"
    );
  }
  $("#btn_cancel").click(() => {
    // $('#title_name').html('กลุ่มสินค้าในหมวดหมู่');
    $("#title_name").fadeOut(300, function () {
      $(this).html("กลุ่มสินค้าในหมวดหมู่").fadeIn(300);
    });
    $("#btn_cancel").fadeOut(500);
    $("#section_group").slideUp();
    $("#form_type").val("");
    $("#group_code").val("");
    $("#section_group input,#group_detail").css("background-color", "");
    $("#group_code").val("");
    $("#group_name_th").val("");
    $("#group_detail").val("");

    if ($("#b_form").hasClass("btn-outline-danger")) {
      $("#b_form").removeClass("btn-outline-danger");
      $("#b_form").addClass("btn-outline-success");
      $("#i_form").removeClass("fa-minus");
      $("#i_form").addClass("fa-plus");
    }

    $("tr").css("color", "#000");

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

  $("#b_form").click(() => {
    if ($("#btn_submit").html() == "Edit") {
      $("#btn_submit").html("Add");
      $("#btn_submit").removeClass("btn-primary");
      $("#btn_submit").addClass("btn-success");
    }
    if ($("#b_form").hasClass("btn-outline-success")) {
      // $('#title_name').html('เพิ่มหมวดหมู่สินค้า');
      $("#title_name").fadeOut(300, function () {
        $(this).html("เพิ่มกลุ่มสินค้าในหมวดหมู่").fadeIn(300);
      });
      $("#section_group input,#category_code,#group_detail").css(
        "background-color",
        "#f0fff7"
      );
      $("tr").css("color", "#000");
      $("#btn_cancel").hide();
      $("#form_type").val("Add");
      $("#category_code").val("");
      $("#group_code").val("");
      $("#group_name_th").val("");
      $("#cgroup_detail").val("");
      $("#section_group").slideDown();
      $("#b_form").removeClass("btn-outline-success");
      $("#b_form").addClass("btn-outline-danger");
      $("#i_form").removeClass("fa-plus");
      $("#i_form").addClass("fa-minus");
    } else if ($("#b_form").hasClass("btn-outline-danger")) {
      // $('#title_name').html('หมวดหมู่สินค้า');
      $("#title_name").fadeOut(300, function () {
        $(this).html("กลุ่มสินค้าในหมวดหมู่").fadeIn(300);
      });
      $("#section_group input,#group_detail").css("background-color", "");
      $("#form_type").val("");
      $("#section_group").slideUp();
      $("#b_form").removeClass("btn-outline-danger");
      $("#b_form").addClass("btn-outline-success");
      $("#i_form").removeClass("fa-minus");
      $("#i_form").addClass("fa-plus");
    }
  });
  $("#btn_submit").click(() => {
    //alert($('#btn_submit').html());

    if ($("#category_code").val() == "") {
      $("#category_code").addClass("is-invalid");
    } else {
      $("#category_code").removeClass("is-invalid");
    }
    if ($("#group_code").val() == "") {
      $("#group_code").addClass("is-invalid");
    } else {
      $("#group_code").removeClass("is-invalid");
    }
    if ($("#group_name_th").val() == "") {
      $("#group_name_th").addClass("is-invalid");
    } else {
      $("#group_name_th").removeClass("is-invalid");
    }

    if ($("#category_code").val() == "") {
      $("#category_code").focus();
    } else if ($("#group_name_th").val() == "") {
      $("#group_name_th").focus();
    } else {
      $("#btn_alert").click();
    }
  });

  //DND
});
