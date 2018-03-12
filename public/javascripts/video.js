var playButton = document.querySelector('.play-button');
var displayBox = document.querySelector(".display");
var closeButton= document.querySelector(".close");
var closeLightBoxButton = document.querySelector(".close-lightbox");
var displayLightbox = document.querySelector("#video_lightbox");
var bigPlayButton = document.querySelector(".big-play");
var kidsButton = document.querySelector(".kid");

var kidsmode = false;
var kidsmode = true;


function playVideo(event){
  console.log(event.target.id);
}

function showVideoDisplay(){

  if (displayBox.style.display == "block"){
      displayBox.style.display = "none"
 }
 else {
      displayBox.style.display = "block";
    }
  }

  function showLightbox(){

    if (displayLightbox.style.display == "block"){
        displayLightbox.style.display = "none"
   }
   else {
      displayLightbox.style.display = "block";
      }
    }



  function hideVideoDisplay(){
    displayBox.style.display = "none";
    }

    function hideLightbox(){
      displayLightbox.style.display = "none";
      }





//Kid Stuff:
function kidsActive(){
  kidsmode = true;
  video = false;
  console.log(kidsmode);
  location.reload();

  }



  kidsButton.addEventListener('click', kidsActive, false);
  bigPlayButton.addEventListener('click', showLightbox, false);
  closeLightBoxButton.addEventListener('click', hideLightbox, false);
  closeButton.addEventListener('click', hideVideoDisplay, false);
  playButton.addEventListener('click', showVideoDisplay, false);











/* FOR MARKS
//I was trying to change the videos url based on what play button was clicked and use its ID to fill in the correct video source
//I think I need to loop through all the play buttons but i couldnt get it to work


//Heres some video functions that would be paused

// Buttons
var video = document.querySelector("video"); //Make the video have the class of video

var playButton = document.querySelector('.play-pause');
var restartButton = document.querySelector('.restart-button');
var fullscreenButton = document.querySelector('.fullscreen-button');
var volumeslider =document.querySelector("#volumeslider");
var volumeButton = document.querySelector(".volume-button");
var progressBar = document.querySelector("#progress-bar");




// timer

video.ontimeupdate = function() {timer()};

function timer() {
  var time = Math.round(video.currentTime);
  var duration = Math.round(video.duration);
    document.getElementById("video-timer").innerHTML = "0:" + time + "/" + "0:" + duration ; //As of now this works but when it is over 1 minute, may break! Come back to this*

    //progress bar

    var progress = Math.round(time / duration * 100);

    progressBar.value = progress;

}



function playFunction() { // Declare a function

    if (video.paused == true) {
    // Play the video
    video.play();

    // Update the button to show the pause image
    playButton.src = "images/pause.svg";
  } else {
    // Pause the video
    video.pause();

    // Update the image to show the play image
    playButton.src = "images/play.svg";
  }
}


function restartFunction() {
    video.currentTime = 0;
    video.play();
    playButton.src = "images/pause.svg"; //So it allows you to pause since I have it set to an autoplay
}


function fullscreenFunction() {
    if (video.requestFullscreen) {
    video.requestFullscreen();
  } else if (video.mozRequestFullScreen) {
    video.mozRequestFullScreen(); // Firefox
  } else if (video.webkitRequestFullscreen) {
    video.webkitRequestFullscreen(); // Chrome and Safari
  }
}


function setvolume(){

  var volume_value = video.volume;

	    video.volume = volumeslider.value / 100;
    //  console.log(volume_value);

      //If the volume is 0, it shows the mute button
      if (volume_value === 0) {
      volumeButton.src = "images/mute.svg";
    } else if (volume_value => 0.01) {
      video.muted = false; //This will counter act the muting feature
      volumeButton.src = "images/volume.svg";
      }

    }

    function muteFunction() {
      if(video.muted){
      video.muted = false;
      volumeButton.src = "images/volume.svg";
    } else {
      video.muted = true;
      volumeButton.src = "images/mute.svg";
    }

    }







  //Event Listeners
  playButton.addEventListener("click", playFunction, false);
  restartButton.addEventListener("click", restartFunction, false);
  fullscreenButton.addEventListener("click", fullscreenFunction, false);
  volumeslider.addEventListener("click", setvolume, false);
  volumeButton.addEventListener("click", muteFunction, false);

  */
