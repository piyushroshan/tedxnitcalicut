function vote(slug, direction, id) {
	$.post('/nominations/vote/'+slug+'/'+direction+'vote/', {HTTP_X_REQUESTED:'XMLHttpRequest'},
			function(data) {
				if (data.success == true) {
					$('#score_'+id).text(data.score.score);
					$('#num_votes_'+id).text(data.score.num_votes);
				} else {
					alert('ERROR: ' + data.error_message);
				}
			}, 'json'
			)
}
