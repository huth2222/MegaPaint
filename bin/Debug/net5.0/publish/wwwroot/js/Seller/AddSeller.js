$(document).ready(() => {
  $("#MP_SellerPermanentAddress_changwat_id").change(() => { 
    if($("#MP_SellerPermanentAddress_changwat_id").val() == ''){
      $("#MP_SellerPermanentAddress_amphoe_id").html('');
      $("#MP_SellerPermanentAddress_tambon_id").html('');
      $("#MP_SellerPermanentAddress_zip_code").val('');
    }else{
      getPmAmphoe($("#MP_SellerPermanentAddress_changwat_id").val());
    }    
  });

  $("#MP_SellerPermanentAddress_amphoe_id").change(() => {
    if($("#MP_SellerPermanentAddress_amphoe_id").val() == ''){
      $("#MP_SellerPermanentAddress_tambon_id").html('');
      $("#MP_SellerPermanentAddress_zip_code").val('');
    }else{
      getPmTambon($("#MP_SellerPermanentAddress_amphoe_id").val());
    }    
  });

  $("#MP_SellerPermanentAddress_tambon_id").change(() => {
    if($("#MP_SellerPermanentAddress_amphoe_id").val() == ''){
      $("#MP_SellerPermanentAddress_zip_code").val('');
    }else{
      getPmZipCode($("#MP_SellerPermanentAddress_tambon_id").val());
    }    
  });

  /************************** */

  $("#MP_SellerPresentAddress_changwat_id").change(() => {
    if($("#MP_SellerPresentAddress_changwat_id").val() == ''){
      $("#MP_SellerPresentAddress_amphoe_id").html('');
      $("#MP_SellerPresentAddress_tambon_id").html('');
      $("#MP_SellerPresentAddress_zip_code").val('');
    }else{
    getPsAmphoe($("#MP_SellerPresentAddress_changwat_id").val());
    }
  });

  $("#MP_SellerPresentAddress_amphoe_id").change(() => {
    if($("#MP_SellerPresentAddress_amphoe_id").val() == ''){
      $("#MP_SellerPresentAddress_tambon_id").html('');
      $("#MP_SellerPresentAddress_zip_code").val('');
    }else{
      getPsTambon($("#MP_SellerPresentAddress_amphoe_id").val());
    }    
  });

  $("#MP_SellerPresentAddress_tambon_id").change(() => {
    if($("#MP_SellerPresentAddress_amphoe_id").val() == ''){
      $("#MP_SellerPresentAddress_zip_code").val('');
    }else{
      getPsZipCode($("#MP_SellerPresentAddress_tambon_id").val());
    }    
  });

  $("#imagePreview").hide();
  $("#MP_Seller_avatar").change(function () {
    configImageProfile(this);
  });

  /********************** */
  $("#MP_SellerPresentAddress_sam_permanent").change(() => {
    if ($("#MP_SellerPresentAddress_sam_permanent").prop("checked") == true) {
      $("#div_ps").fadeOut(500);
        $("#MP_SellerPresentAddress_address_no").removeClass("is-invalid");
        $("#MP_SellerPresentAddress_changwat_id").removeClass("is-invalid");
        $("#MP_SellerPresentAddress_amphoe_id").removeClass("is-invalid");
        $("#MP_SellerPresentAddress_tambon_id").removeClass("is-invalid");
    } else {
      $("#div_ps").fadeIn(500);
    }
  });
  /********************** */

  $("#btn_submit").click(() => {
    //alert($('#btn_submit').html());
    if ($("#MP_Seller_username").val() == "") {
      $("#MP_Seller_username").addClass("is-invalid");
    } else {
      $("#MP_Seller_username").removeClass("is-invalid");
    }

    if ($("#MP_Seller_password").val() == "") {
      $("#MP_Seller_password").addClass("is-invalid");
    } else {
      $("#MP_Seller_password").removeClass("is-invalid");
    }

    if ($("#MP_Seller_password").val() == "") {
      $("#MP_Seller_password").addClass("is-invalid");
    } else {
      $("#MP_Seller_password").removeClass("is-invalid");
    }

    if ($("#MP_Seller_shop_code").val() == "") {
      $("#MP_Seller_shop_code").addClass("is-invalid");
    } else {
      $("#MP_Seller_shop_code").removeClass("is-invalid");
    }

    if ($("#MP_Seller_prefix_id").val() == "") {
      $("#MP_Seller_prefix_id").addClass("is-invalid");
    } else {
      $("#MP_Seller_prefix_id").removeClass("is-invalid");
    }

    if ($("#MP_Seller_firstname").val() == "") {
      $("#MP_Seller_firstname").addClass("is-invalid");
    } else {
      $("#MP_Seller_firstname").removeClass("is-invalid");
    }

    if ($("#MP_Seller_lastname").val() == "") {
      $("#MP_Seller_lastname").addClass("is-invalid");
    } else {
      $("#MP_Seller_lastname").removeClass("is-invalid");
    }

    if ($("#MP_Seller_gender_id").val() == "") {
      $("#MP_Seller_gender_id").addClass("is-invalid");
    } else {
      $("#MP_Seller_gender_id").removeClass("is-invalid");
    }

    if ($("#MP_SellerPermanentAddress_address_no").val() == "") {
      $("#MP_SellerPermanentAddress_address_no").addClass("is-invalid");
    } else {
      $("#MP_SellerPermanentAddress_address_no").removeClass("is-invalid");
    }

    if ($("#MP_SellerPermanentAddress_changwat_id").val() == "") {
      $("#MP_SellerPermanentAddress_changwat_id").addClass("is-invalid");
    } else {
      $("#MP_SellerPermanentAddress_changwat_id").removeClass("is-invalid");
    }

    if ($("#MP_SellerPermanentAddress_amphoe_id").val() == "") {
      $("#MP_SellerPermanentAddress_amphoe_id").addClass("is-invalid");
    } else {
      $("#MP_SellerPermanentAddress_amphoe_id").removeClass("is-invalid");
    }

    if ($("#MP_SellerPermanentAddress_tambon_id").val() == "") {
      $("#MP_SellerPermanentAddress_tambon_id").addClass("is-invalid");
    } else {
      $("#MP_SellerPermanentAddress_tambon_id").removeClass("is-invalid");
    }

    /*********************** */
    if ($("#MP_Seller_username").val() == "") {
      $("#MP_Seller_username").focus();
    } else if ($("#MP_Seller_password").val() == "") {
      $("#MP_Seller_password").focus();
    } else if ($("#MP_Seller_password").val() == "") {
      $("#MP_Seller_password").focus();
    } else if ($("#MP_Seller_shop_code").val() == "") {
      $("#MP_Seller_shop_code").focus();
    } else if ($("#MP_Seller_prefix_id").val() == "") {
      $("#MP_Seller_prefix_id").focus();
    } else if ($("#MP_Seller_firstname").val() == "") {
      $("#MP_Seller_firstname").focus();
    } else if ($("#MP_Seller_lastname").val() == "") {
      $("#MP_Seller_lastname").focus();
    } else if ($("#MP_Seller_gender_id").val() == "") {
      $("#MP_Seller_gender_id").focus();
    } else if ($("#MP_SellerPermanentAddress_address_no").val() == "") {
      $("#MP_SellerPermanentAddress_address_no").focus();
    } else if ($("#MP_SellerPermanentAddress_changwat_id").val() == "") {
      $("#MP_SellerPermanentAddress_changwat_id").focus();
    } else if ($("#MP_SellerPermanentAddress_amphoe_id").val() == "") {
      $("#MP_SellerPermanentAddress_amphoe_id").focus();
    } else if ($("#MP_SellerPermanentAddress_tambon_id").val() == "") {
      $("#MP_SellerPermanentAddress_tambon_id").focus();
    }
    /*********************** */
else{


    if ($("#MP_SellerPresentAddress_sam_permanent").prop("checked") == false) {
      if ($("#MP_SellerPresentAddress_address_no").val() == "") {
        $("#MP_SellerPresentAddress_address_no").addClass("is-invalid");
      }  if ($("#MP_SellerPresentAddress_changwat_id").val() == "") {
        $("#MP_SellerPresentAddress_changwat_id").addClass("is-invalid");
      }  if ($("#MP_SellerPresentAddress_amphoe_id").val() == "") {
        $("#MP_SellerPresentAddress_amphoe_id").addClass("is-invalid");
      }  if ($("#MP_SellerPresentAddress_tambon_id").val() == "") {
        $("#MP_SellerPresentAddress_tambon_id").addClass("is-invalid");
      }


      if ($("#MP_SellerPresentAddress_address_no").val() == "") {
        $("#MP_SellerPresentAddress_address_no").focus();
      } else if ($("#MP_SellerPresentAddress_changwat_id").val() == "") {
        $("#MP_SellerPresentAddress_changwat_id").focus();
      } else if ($("#MP_SellerPresentAddress_amphoe_id").val() == "") {
        $("#MP_SellerPresentAddress_amphoe_id").focus();
      } else if ($("#MP_SellerPresentAddress_tambon_id").val() == "") {
        $("#MP_SellerPresentAddress_tambon_id").focus();
      } else {
        $("#MP_SellerPresentAddress_address_no").removeClass("is-invalid");
        $("#MP_SellerPresentAddress_changwat_id").removeClass("is-invalid");
        $("#MP_SellerPresentAddress_amphoe_id").removeClass("is-invalid");
        $("#MP_SellerPresentAddress_tambon_id").removeClass("is-invalid");
        $("#btn_alert").click();
      }
    }else{
      $("#MP_SellerPresentAddress_address_no").removeClass("is-invalid");
        $("#MP_SellerPresentAddress_changwat_id").removeClass("is-invalid");
        $("#MP_SellerPresentAddress_amphoe_id").removeClass("is-invalid");
        $("#MP_SellerPresentAddress_tambon_id").removeClass("is-invalid");
        $("#btn_alert").click();
    }
  }
  });


});
