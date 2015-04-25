var ready = function() {
	var form = $("form.search");
	var queryBox = $("form.search #query");
	if(queryBox.length) {
		queryBox.autocomplete({
			source: "/products/suggest",
			minLength: 2,
			select: function(event, ui) {
				queryBox.val(ui.item.value);
				form.submit();
			}
		});
	}
}


$(document).ready(ready);
$(document).on('page:load', ready);

