$(document).ready(function() {
	//Set default 16x16 grid size.
	makeGrid(16);

	//Set default red colour from select.
	var colour = $("#colours").val();

	$("#colours").change(function() {
		colour = $(this).val();
		selectable(colour);
	});

	//Prompt new for dimension input and clear previous grid.
	$("#clear").on("click", function() {
		var size = prompt("Enter the dimensions of the grid (1 - 64):");
		while (parseInt(size) > 64 || parseInt(size) == 0) {
			size = prompt("Enter the dimensions of the grid (1 - 64):");
		}
		$("#grid").empty();
		makeGrid(parseInt(size));

		selectable(colour);
	});

	selectable(colour);
});

function selectable(colour) {
	//Change the colour of the square when the mouse hovers over it.
	$(".square").on("mouseenter", function() {
		$(this).css({"background":colour});
	});
}

function makeGrid(num) {
	//Create the size of the grid using num size table rows with num size table data.
	for (var a = 0; a < num; a++) {
		$("#grid").append("<tr></tr>");
	}

	for (var b = 0; b < num; b++) {
		$("tr").append("<td><div class='square'></div></td>");
	}
}

