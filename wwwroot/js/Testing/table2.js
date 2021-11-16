$(document).ready(function () {
    for (let i = 1; i <= 5; i++) {
        $('#text'+i).val(i);
        $('#text'+i).attr('hidden',true);
        
    }
  $("#btn_picrow").click(function () {
      let getid = "";
      let n = 0;
      $("#tbl_pic")
      .find("thead input")
      .each(function (i, v) {
        n++;
        $(v).val(n);
        //alert();
      });
    
  });
  
});
