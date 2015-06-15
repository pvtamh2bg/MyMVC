$(window).load(function(){
    if($("section.itq-form .side-panel").height() > $("section.itq-form .main-panel").height()){
        $("section.itq-form").height($("section.itq-form .side-panel").height()+20);
    }
    //check all id
    $('#chkAll').click(function () {
        var checkboxes = $(this).closest('form').find(':checkbox');
        if ($(this).prop('checked')) {
            $(".check-all").prop('checked', true).parent().parent().find('td').addClass('select');

        } else {
            $(".check-all").prop('checked', false).parent().parent().find('td').removeClass('select');
        }

    });
    //check-all class
    $(".check-all").change(function(){
        if($(this).prop('checked')==false){
            $(this).parent().parent().find('td').removeClass('select');
            $('#chkAll').prop('checked',false);
        }else {
            $(this).parent().parent().find('td').addClass('select');
        }
        if($(".check-all:checked").length==$(".check-all").length){
            $('#chkAll').prop('checked',true);
        }
    });
});