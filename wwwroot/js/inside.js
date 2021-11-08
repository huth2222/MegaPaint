/***************** Form admin */
function GetPageAddAdmin(page){
    $.ajax({
        url: page,
        type: 'GET',
        success:function(data) {
            $("#div_index").html(data);
            GetAdminFormAction();
            $("#div_index").slideDown();
            localStorage.clear();
            GetAdminTable("add","empty");
            $('#page').val('add_admin');
        } 
    });
}


function GetPageEditAdmin(page,account){
    if(account == null){
        account = "empty";
    }
    $.ajax({
        url: page,
        type: 'GET',
        success:function(data) {
            $("#div_index").html(data);
            if(account == "empty"){
                $('#edit_content').hide();
            }            
            $("#div_index").slideDown();
            localStorage.clear();
            GetAdminFormAction();
            GetAdminTable("edit",account);
            $('#page').val('edit_admin');
        } 
    });
}

/***************** Form shop */
function GetPageAddShop(page){
    $.ajax({
        url: page,
        type: 'GET',
        success:function(data) {
            $("#div_index").html(data);
            GetShopFormAction();
            $("#div_index").fadeTo( "slow", 1 );
            localStorage.clear();
            GetShopTable("inside","add","empty");
            $('#page').val('add_shop');
        } 
    });
}

function GetPageEditShop(page){
    $.ajax({
        url: page,
        type: 'GET',
        success:function(data) {
            $("#div_index").html(data);
            GetShopFormAction();
            $("#div_index").fadeTo( "slow", 1 );
            localStorage.clear();
            GetShopTable("inside","edit","empty");
            $('#page').val('edit_shop');
        } 
    });
}

/***************** Form seller */
function GetPageAddSeller(page){
    $.ajax({
        url: page,
        type: 'GET',
        success:function(data) {
            $("#div_index").html(data);
            GetSellerFormAction();
            $("#div_index").fadeTo( "slow", 1 );
            localStorage.clear();
            GetSellerTable("inside","add","empty");
            $('#page').val('add_seller');
        } 
    });
}

function GetPageEditSeller(page){
    $.ajax({
        url: page,
        type: 'GET',
        success:function(data) {
            $("#div_index").html(data);
            if($('#MP_SellerPresentAddress_sam_permanent').prop('checked') == true){
                $('#div_ps').hide();
            }
            GetSellerFormAction();
            $("#div_index").fadeTo( "slow", 1 );
            localStorage.clear();
            GetSellerTable("inside","edit","empty");
            $('#page').val('edit_seller');
        } 
    });
}

function GetPageAddPdType(page){
    $.ajax({
        url: page,
        type: 'GET',
        success:function(data) {
            $("#div_index").html(data);
            //GetSellerFormAction();
            $("#div_index").fadeTo( "slow", 1 );
            localStorage.clear();
            //GetSellerTable("inside","edit","empty");
            $('#page').val('pd_type');
        } 
    });
}