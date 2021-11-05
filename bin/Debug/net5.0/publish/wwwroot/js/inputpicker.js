$(function () {
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })

    $('[data-mask]').inputmask()

    //Date picker
    $('#reservationdate').datetimepicker({
        format: 'L'
    });
   
    $('#reservationdatetime').datetimepicker({ icons: { time: 'far fa-clock' } });

    $('#timepicker').datetimepicker({
      format: 'LT'
    })

    $('.my-colorpicker2').on('colorpickerChange', function(event) {
      $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
    })

    $("input[data-bootstrap-switch]").each(function(){
      $(this).bootstrapSwitch('state', $(this).prop('checked'));
    })

  })