$(document).ready(() => {

  $('#idtest').change(() => {
    $('#idtest').width();
  });

  $('#myInput').blur(() => {
    setTimeout(() => {
      $('#list').hide();
    }, 500);

  });
  $('#list').hide();
  $('#myInput').keyup(() => {
    if ($('#myInput').val().length > 0) {
      $('#list').slideDown('fast');
    } else if ($('#myInput').val().length == 0) {
      $('#list').hide();
    }
  });
  $('#myInput').focus(() => {
    if ($('#myInput').val().length > 0) {
      $('#list').slideDown('fast');
    } else if ($('#myInput').val().length == 0) {
      $('#list').hide();
    }
  });


  $("#btn_iframe").click(() => {
    $("#frame1").val($("#frame_1").contents().find("#summernote").val());

    $("#frame2").val($("#frame_2").contents().find("#summernote").val());

    $("#frame3").val($("#frame_3").contents().find("#summernote").val());
  });




  // $.ajax({
  //   url: "/Testing/Item",
  //   type: "GET",
  //   success: function (data) {
  //     $("#comm").html(data);
  //   },
  // });

  // $("#pic1, #pic2, #pic3, #pic4, #pic5").hide();
  $("#pic1, #pic2, #pic3, #pic4, #pic5, #img_id, #input_iframe").hide();
  $("input[type='file']").hide();
  $("#img-del").prop("disabled", true);



  $("#img_del").prop("disabled", true);
  $("#img_del").removeClass("btn-danger");
  $("#img_del").addClass("btn-disabled");
  $("#img_del").html("&nbsp;");
  $("#div_color").hide();
  $("#div_size").hide();

  $('#selectmulti').change(() => {
    // alert($('#selectmulti').val());
    var AttrItem = [];
    AttrItem = $('#selectmulti').val()

    if (AttrItem == null) {
      $("#div_color").hide();
      $("#div_color label").removeClass('active');
      $("input[name='color_option']").prop('checked', false);

      $("#div_size").hide();
      $("#div_size label").removeClass('active');
      $("input[name='size_option']").prop('checked', false);
    } else {

      var div_color = "";
      var div_size = "";
      $.each(AttrItem, function (i, data) {
        if (data == "color") {
          div_color = "color";
        }

        if (data == "size") {
          div_size = "size";
        }
      });

      if (div_color == "color") {
        $("#div_color").show();
      } else {
        $("#div_color").hide();
        $("#div_color label").removeClass('active');
        $("input[name='color_option']").prop('checked', false);
      }

      if (div_size == "size") {
        $("#div_size").show();
      } else {
        $("#div_size").hide();
        $("#div_size label").removeClass('active');
        $("input[name='size_option']").prop('checked', false);
      }
    }
  });

  $('#color_attr').change(() => {
    if ($('#color_attr').is(':checked')) {
      $("#div_color").show();
    } else {
      $("#div_color").hide();
      $("#div_color label").removeClass('active');
      $("input[name='color_option']").prop('checked', false);
    }
  });

  $('#size_attr').change(() => {
    if ($('#size_attr').is(':checked')) {
      $("#div_size").show();
    } else {
      $("#div_size").hide();
      $("#div_size label").removeClass('active');
      $("input[name='size_option']").prop('checked', false);
    }
  });


  $("#img_del").click(() => {
    $("#" + $("#img_id").val()).attr("src", "").hide();

    $("#img_main").attr("src", "/data/system/add_item.png");
    $("#filepic" + $("#img_id").val()).val("");
    //alert();
    $('#file' + $("#img_id").val()).val("");
    $("#img_id").val("");
    $("#img_del").removeClass("btn-danger");
    $("#img_del").addClass("btn-disabled");
    $("#img_del").html("&nbsp;");
    //$("#thpic" + $("#img_id").val()).hide();
  });

  $("#btn_addpic").click(() => {
    if ($("#filepic1").val() == "") {
      $("#filepic1").click();
    } else if ($("#filepic2").val() == "") {
      $("#filepic2").click();
    } else if ($("#filepic3").val() == "") {
      $("#filepic3").click();
    } else if ($("#filepic4").val() == "") {
      $("#filepic4").click();
    } else if ($("#filepic5").val() == "") {
      $("#filepic5").click();
    } else {
      alert("???????????????????????????????????????????????????????????? 5 ?????????");
    }
  });

  $("#filepic1").change(function () {
    configImageProfile(this);
    setTimeout(() => {
      $("#pic1").attr("src", $("#img_main").attr("src"));
      $("#pic1").show();
      $("#img_id").val("pic1");
      // $("#img_row").val("1");
      $("#img_del").prop("disabled", false);
      $("#img_del").addClass("btn-danger");
      $("#img_del").removeClass("btn-disabled");
      $("#img_del").html("Delete picture");
    }, 100);
  });
  $("#filepic2").change(function () {
    configImageProfile(this);
    setTimeout(() => {
      $("#pic2").attr("src", $("#img_main").attr("src"));
      $("#pic2").show();
      $("#img_id").val("pic2");
      // $("#img_row").val("2");
      $("#img_del").prop("disabled", false);
      $("#img_del").addClass("btn-danger");
      $("#img_del").removeClass("btn-disabled");
      $("#img_del").html("Delete picture");
    }, 100);
  });
  $("#filepic3").change(function () {
    configImageProfile(this);
    setTimeout(() => {
      $("#pic3").attr("src", $("#img_main").attr("src"));
      $("#pic3").show();
      $("#img_id").val("pic3");
      // $("#img_row").val("3");
      $("#img-del").prop("disabled", false);
    }, 100);
  });
  $("#filepic4").change(function () {
    configImageProfile(this);
    setTimeout(() => {
      $("#pic4").attr("src", $("#img_main").attr("src"));
      $("#pic4").show();
      $("#img_id").val("pic4");
      // $("#img_row").val("4");
      $("#img-del").prop("disabled", false);
    }, 100);
  });
  $("#filepic5").change(function () {
    configImageProfile(this);
    setTimeout(() => {
      $("#pic5").attr("src", $("#img_main").attr("src"));
      $("#pic5").show();
      $("#img_id").val("pic5");
      // $("#img_row").val("5");
      $("#img-del").prop("disabled", false);
    }, 100);
  });

  $("#pic1").click(() => {
    $("#img_main").attr("src", $("#pic1").attr("src"));
    $("#img_id").val("pic1");
    // $("#img_row").val("1");
    $("#img-del").prop("disabled", false);
    $("#img_del").addClass("btn-danger");
    $("#img_del").removeClass("btn-disabled");
    $("#img_del").html("Delete picture");
    // $('#divpics div').removeClass("active");
    // $('#divpic1').addClass("active");
  });
  $("#pic2").click(() => {
    $("#img_main").attr("src", $("#pic2").attr("src"));
    $("#img_id").val("pic2");
    // $("#img_row").val("2");
    $("#img-del").prop("disabled", false);
    $("#img_del").addClass("btn-danger");
    $("#img_del").removeClass("btn-disabled");
    $("#img_del").html("Delete picture");
    // $('#divpics div').removeClass("active");
    // $('#divpic2').addClass("active");
  });
  $("#pic3").click(() => {
    $("#img_main").attr("src", $("#pic3").attr("src"));
    $("#img_id").val("pic3");
    // $("#img_row").val("3");
    $("#img-del").prop("disabled", false);
    $("#img_del").addClass("btn-danger");
    $("#img_del").removeClass("btn-disabled");
    $("#img_del").html("Delete picture");
    // $('#divpics div').removeClass("active");
    // $('#divpic3').addClass("active");
  });
  $("#pic4").click(() => {
    $("#img_main").attr("src", $("#pic4").attr("src"));
    $("#img_id").val("pic4");
    // $("#img_row").val("4");
    $("#img-del").prop("disabled", false);
    $("#img_del").addClass("btn-danger");
    $("#img_del").removeClass("btn-disabled");
    $("#img_del").html("Delete picture");
    // $('#divpics div').removeClass("active");
    // $('#divpic4').addClass("active");
  });
  $("#pic5").click(() => {
    $("#img_main").attr("src", $("#pic5").attr("src"));
    $("#img_id").val("pic5");
    // $("#img_row").val("5");
    $("#img-del").prop("disabled", false);
    $("#img_del").addClass("btn-danger");
    $("#img_del").removeClass("btn-disabled");
    $("#img_del").html("Delete picture");
    // $('#divpics div').removeClass("active");
    // $('#divpic5').addClass("active");
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
    $("#title_name").html("??????????????????????????????????????????????????????????????????????????????");
    $("#section_group input,#category_code,#group_detail").css(
      "background-color",
      "#f0fff7"
    );
  }
  $("#btn_cancel").click(() => {
    // $('#title_name').html('???????????????????????????????????????????????????????????????');
    $("#title_name").fadeOut(300, function () {
      $(this).html("???????????????????????????????????????????????????????????????").fadeIn(300);
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


  });



  $("#b_form").click(() => {
    if ($("#btn_submit").html() == "Edit") {
      $("#btn_submit").html("Add");
      $("#btn_submit").removeClass("btn-primary");
      $("#btn_submit").addClass("btn-success");
    }
    if ($("#b_form").hasClass("btn-outline-success")) {
      // $('#title_name').html('?????????????????????????????????????????????????????????');
      $("#title_name").fadeOut(300, function () {
        $(this).html("??????????????????????????????????????????????????????????????????????????????").fadeIn(300);
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
      // $('#title_name').html('??????????????????????????????????????????');
      $("#title_name").fadeOut(300, function () {
        $(this).html("???????????????????????????????????????????????????????????????").fadeIn(300);
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



