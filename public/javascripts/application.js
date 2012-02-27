var newId = 1;

$(document).ready(function(){
    $( "#expense_expense_date" ).datepicker({
        dateFormat: "yy-mm-dd"
    });

    //createRow();


});

function createRow(){
    $('#expense_details').append($('#field_template').clone(true).attr('id','row'+newId));
    var newRow = $('#row'+newId);    
    newRow.show();
    $("input#expense_category_name").unbind('blur');

    newRow.find("#expense_category_name").blur( function() {
        createRow();
    });
    newId=newId+1;
    return newRow;
}