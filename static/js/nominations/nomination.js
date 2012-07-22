function vote(slug, direction) {
	$.post('/nominations/vote/'+slug+'/'+direction+'vote/', {HTTP_X_REQUESTED:'XMLHttpRequest'},
			function(data) {
				if (data.success == true) {
					$('#score').text(data.score.score);
					$('#num_votes').text(data.score.num_votes);
				} else {
					alert('ERROR: ' + data.error_message);
				}
			}, 'json'
			)
}
