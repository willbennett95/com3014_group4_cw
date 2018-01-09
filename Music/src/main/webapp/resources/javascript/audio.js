/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var audio;

initAudio($('#songPlaylist li:first-child'));

function initialisePlayer(element) {
    var playerSong = element.attr('playerSong');
    var songTitle = element.text();
    var songArtist = element.attr('songArtist');

    audio = new Audio('/resources/media/' + playerSong);

    if(!audio.currentTime) {
	$('#duration').html('0.00');
    }

    $('#audio-player .songTitle').text(songTitle);
    $('#audio-player .songArtist').text(songArtist);
    
    $('#songPlaylist li').removeClass('active');
    element.addClass('active');
}

    $('#playSongButton').click(function(){
	audio.play();
	$('#duration').fadeIn(400);
	showDuration();
	$('.active').append('<div id="eq"><span></span><span></span><span></span></div>');
    });
    
    
    $('#pauseSongButton').click(function(){
	audio.pause();
	$('#eq').remove(); 
    });

    $('#stopSongButton').click(function(){
	audio.pause();		
	audio.currentTime = 0;
	$('#duration').fadeOut(400);
	$('#eq').remove();
    });
    
    $('#nextSongButton').click(function(){
        audio.pause();
        var next = $('#songPlaylist li.active').next();
        if (next.length == 0) {
            next = $('#songPlaylist li:first-child');
        }
        initAudio(next);
            audio.play();
            $('#eq').remove();
            showDuration();
            $('.active').append('<div id="eq"><span></span><span></span><span></span></div>');
    });
    
    $('#prevSongButton').click(function(){
        audio.pause();
        var prev = $('#songPlaylist li.active').prev();
        if (prev.length == 0) {
            prev = $('#songPlaylist li:last-child');
        }
        initAudio(prev);
            audio.play();
            $('#eq').remove();
            showDuration();
            $('.active').append('<div id="eq"><span></span><span></span><span></span></div>');
    });
    
    $('#songPlaylist li').click(function () {
        audio.pause();
        initAudio($(this));
            $('#duration').fadeIn(400);
            audio.play();
            showDuration();
            $('#eq').remove();
            $('.active').append('<div id="eq"><span></span><span></span><span></span></div>');
    });
    
    $('#volume').change(function(){
	audio.volume = parseFloat(this.value / 100);
    });
    
    function showDuration(){
	$(audio).bind('timeupdate', function(){
	
		var fulls = parseInt(audio.duration % 60);
		var fullm = parseInt((audio.duration / 60) % 60);
		
		if (isNaN(fulls)){ fulls = '00';} 
		if (isNaN(fullm)){ fullm = '00';} 
		
		var s = parseInt(audio.currentTime % 60);
		var m = parseInt((audio.currentTime / 60) % 60);
		if (s < 10) {
			s = '0' + s;
		}
		$('#currentPlaytime').html(m + ':' + s + ' / ' + fullm + ':' + fulls);	
		var value = 0;
		if (audio.currentTime > 0) {
			value = Math.floor((100 / audio.duration) * audio.currentTime);
		}
		$('#currentProgress').css('width',value+'%');
	});
    }
    
    $("#progressBar").mouseup(function(e){
        var leftOffset = e.pageX - $(this).offset().left;
        var songPercents = leftOffset / $('#progressBar').width();
            audio.currentTime = songPercents * audio.duration;
    });
    
    $(audio).on("ended", function() {
        audio.pause();
        var next = $('#songPlaylist li.active').next();
        if (next.length == 0) {
            next = $('#songPlaylist li:first-child');
        }
        initAudio(next);
    audio.play();
    showDuration();
});