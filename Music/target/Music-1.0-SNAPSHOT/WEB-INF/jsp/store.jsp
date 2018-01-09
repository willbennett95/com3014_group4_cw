<%-- 
    Document   : Store Page
    Author     : Dina
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Soundbite Collection</title>
    <!-- CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/style/shop.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/style/_audio-player.css" />" >
    <!-- JavaScript -->
    <% 
        Date date = new Date();
        %>  
    </head>
    <body>
        <jsp:include page="_navbar.jsp"/>
        <jsp:include page="_carousel.jsp"/>


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->
    
    <div class="container marketing">

    <main>    
      <div class="album text-muted">
        

          <div class="row">
            <div class="card">
              <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <div class="card">
              <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <div class="card">
              <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>

            <div class="card">
              <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <div class="card">
              <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <div class="card">
              <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>

            <div class="card">
              <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <div class="card">
              <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <div class="card">
              <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
          </div>

        
      </div>
      
        <div id="audioContainer">
            <div id="audioLogo">
                <img class="playerLogo" src="<c:url value="/resources/images/music.ico" />" alt="Logo">
            </div>
            <div id="audioPlayer">
                <div id="songInfo">
                    <span class="songArtist"></span> - <span class="songTitle"></span>
                </div>
                <input id="volume" type="range" min="0" max="100" value="100">
                <br>
                <div id="audioButtons">
                    <button id="muteSongButton"><img class="buttons" src="<c:url value="/resources/images/icons8-speaker-50.png" />" alt="Sound"></button>
                    <button id="prevSongButton"><img class="buttons" src="<c:url value="/resources/images/icons8-back-arrow-50.png" />" alt="Prev"></button>
                    <button id="playSongButton"><img class="buttons" src="<c:url value="/resources/images/icons8-circled-play-50.png" />" alt="Play"></button>
                    <button id="pauseSongButton"><img class="buttons" src="<c:url value="/resources/images/icons8-pause-button-50.png" />" alt="Pause"></button>
                    <button id="stopSongButton"><img class="buttons" src="<c:url value="/resources/images/icons8-stop-50.png" />" alt="Stop"></button>
                    <button id="nextSongButton"><img class="buttons" src="<c:url value="/resources/images/icons8-forward-button-50.png" />" alt="Next"></button>
                </div>
                <div class="neatenPlayer"></div>
                <div id="progressCheck">
                    <div id="progressBar">
                        <span id="currentProgress"></span>
                    </div>
                    <span id="currentPlaytime"></span>    
                </div>
                <div class="neatenPlayer"></div>
                <ul id="songPlaylist" class="hidden">
                    <li song="/resources/media/Flite - Ryan.mp3" artist="Flite">Flite - Ryan</li>
                </ul>
            </div>
        </div>
        <script src="/resources/javascript/jquery.js"></script>
        <script src="/resources/javascript/audio.js"></script>
    </main>


      <!-- FOOTER -->
      <footer>
          <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018 - Group 4 &middot;</p>
        <p><%= date %> </p>
      </footer>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" />"></script>
    <script>window.jQuery || document.write('<script src="<c:url value="/resources/javascript/jquery-3.2.1.min.js" />"><\/script>');</script>
    <script src="<c:url value="/resources/javascript/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/javascript/popper.min.js" />"></script>
    <script src="<c:url value="/resources/javascript/holder.min.js" />"></script>
    
        <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
  </body>
</html>