$(document).ready(() => {
    /************* Form Admin */
  $("#temp_number").val(0);
  let temp_number = $("#temp_number").val();
  temp_number = parseInt(temp_number);
  $("#s_add_admin").click(() => {
    if ($("#page").val() != "add_admin") {
      $("#div_index").empty();
      GetMenuAddAdmin();
      GetPageAddAdmin("/Admin/AddAdminProfile");
    }
  });

  $("#s_edit_admin").click(() => {
    if ($("#page").val() != "edit_admin") {
      $("#div_index").empty();
      // setTimeout(() => {
      //     GetAdminTable("edit","empty");
      // }, 500);
      GetMenuEditAdmin();
      GetPageEditAdmin("/Admin/EditAdminProfile");
    }
  });

  /**************** Form Shop */
  $("#s_add_shop").click(() => {
    if ($("#page").val() != "add_shop") {
      $("#div_index").empty();
      GetMenuAddShop();
      GetPageAddShop("/Shop/AddShop");
    }
  });

  $("#s_edit_shop").click(() => {
    if ($("#page").val() != "edit_shop") {
      $("#div_index").empty();
      // setTimeout(() => {
      //     GetAdminTable("edit","empty");
      // }, 500);
      GetMenuEditShop();
      GetPageEditShop("/Shop/EditShop");
    }
  });

/**************** Form Seller */
$("#s_add_seller").click(() => {
  if ($("#page").val() != "add_seller") {
    $("#div_index").empty();
    GetMenuAddSeller();
    GetPageAddSeller("/Seller/AddSeller");
  }
});

$("#s_edit_seller").click(() => {
  if ($("#page").val() != "edit_seller") {
    $("#div_index").empty();
    // setTimeout(() => {
    //     GetAdminTable("edit","empty");
    // }, 500);
    GetMenuEditSeller();
    GetPageEditSeller("/Seller/EditSeller");
  }
});


/**************** Form Product Catetgory */
$("#s_pd_category").click(() => {
  if ($("#page").val() != "pd_category") {
    $("#div_index").empty();
    GetMenuPdCategory();
    GetPagePdCategory("/Product/Category");
  }
});



  
  /*vvv*********************** Active class */
});
function ControlSidebar() {
  $("#control_sidebar").click();
}

function GetMenuAddAdmin() {
  $("#div_index").hide();
  $("span").removeClass("active");
  //$('#m_admin').addClass('active');
  $("#s_add_admin").addClass("active");
  setTimeout(() => {
    if ($("#nav_shop").hasClass("menu-is-opening menu-open")) {
      $("#m_shop").click();
    }
    if ($("#nav_seller").hasClass("menu-is-opening menu-open")) {
      $("#m_seller").click();
    }
  }, 1000);
}

function GetMenuEditAdmin() {
  $("#div_index").hide();
  $("span").removeClass("active");
  //$('#m_admin').addClass('active');
  $("#s_edit_admin").addClass("active");
  setTimeout(() => {
    if ($("#nav_shop").hasClass("menu-is-opening menu-open")) {
      $("#m_shop").click();
    }
    if ($("#nav_seller").hasClass("menu-is-opening menu-open")) {
      $("#m_seller").click();
    }
  }, 1000);
}

function GetMenuAddShop() {
  $("#div_index").hide();
  $("span").removeClass("active");
  //$('#m_shop').addClass('active');
  $("#s_add_shop").addClass("active");
  setTimeout(() => {
    if ($("#nav_admin").hasClass("menu-is-opening menu-open")) {
      $("#m_admin").click();
    }
    if ($("#nav_seller").hasClass("menu-is-opening menu-open")) {
      $("#m_seller").click();
    }
  }, 1000);
}

function GetMenuEditShop() {
  $("#div_index").hide();
  $("span").removeClass("active");
  //$('#m_shop').addClass('active');
  $("#s_edit_shop").addClass("active");
  setTimeout(() => {
    if ($("#nav_admin").hasClass("menu-is-opening menu-open")) {
      $("#m_admin").click();
    }
    if ($("#nav_seller").hasClass("menu-is-opening menu-open")) {
      $("#m_seller").click();
    }
  }, 1000);
}

function GetMenuAddSeller() {
  $("#div_index").hide();
  $("span").removeClass("active");
  //$('#m_shop').addClass('active');
  $("#s_add_seller").addClass("active");
  setTimeout(() => {
    if ($("#nav_admin").hasClass("menu-is-opening menu-open")) {
      $("#m_admin").click();
    }
    if ($("#nav_shop").hasClass("menu-is-opening menu-open")) {
      $("#m_shop").click();
    }
  }, 1000);
}

function GetMenuEditSeller() {
  $("#div_index").hide();
  $("span").removeClass("active");
  //$('#m_shop').addClass('active');
  $("#s_edit_seller").addClass("active");
  setTimeout(() => {
    if ($("#nav_admin").hasClass("menu-is-opening menu-open")) {
      $("#m_admin").click();
    }
    if ($("#nav_shop").hasClass("menu-is-opening menu-open")) {
      $("#m_shop").click();
    }
  }, 1000);
}

function GetMenuPdCategory() {
  $("#div_index").hide();
  $("span").removeClass("active");
  //$('#m_shop').addClass('active');
  $("#s_pd_category").addClass("active");
  setTimeout(() => {
    if ($("#nav_admin").hasClass("menu-is-opening menu-open")) {
      $("#m_admin").click();
    }
    if ($("#nav_shop").hasClass("menu-is-opening menu-open")) {
      $("#m_shop").click();
    }
    if ($("#nav_seller").hasClass("menu-is-opening menu-open")) {
      $("#m_seller").click();
    }
  }, 1000);
}