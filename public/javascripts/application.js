var newId = 1;

$(document).ready(function(){
	$('#calendar').fullCalendar({
			theme: true,
			viewDisplay: function(view) {
				console.log(view)
        // alert('The new title of the view is ' + view.title);
    }
        // put your options and callbacks here
    })

  $( "#expense_expense_date" ).datepicker({
      dateFormat: "yy-mm-dd"
  });

  $(".expense_amount").change(function(){
    var Total = 0;
    $(".expense_amount").each(function(i) 
    { 
      var amt = parseFloat(this.value);
      if(!isNaN(amt)){
        Total = Total + amt
      }
   	});
    $("#expense_total_amount").val(Total);
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