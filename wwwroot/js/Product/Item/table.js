$(document).ready(()=>{
    table_2 = $("#t_categorylist2");
        table_2.find("tr:even").addClass("alt");
        // Initialise the second table specifying a dragClass and an onDrop function that will display an alert
        table_2.tableDnD({
            onDragClass: "myDragClass",
            onDrop: function(table, row) {
                var rows = table.tBodies[0].rows;
                var debugStr = "Row dropped was "+row.id+". New order: ";
                for (var i=0; i<rows.length; i++) {
                    debugStr += rows[i].id+" ";
                    $('#v_'+rows[i].id).val((i+1));
                }
                $(table).parent().find('.result').text(debugStr);
            },
            onDragStart: function(table, row) {
                $(table).parent().find('.result').text("Started dragging row "+row.id);
            }
        });
});