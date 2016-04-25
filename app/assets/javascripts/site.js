$(document).on('ready page:load', function(){
	//JQuery elevate zoom
	$('.img-zoom').elevateZoom();
  
  rating();
});

function rating() {
  //star rating system
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
}

