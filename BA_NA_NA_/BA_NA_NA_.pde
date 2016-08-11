import ddf.minim.*;       
Minim minim = new Minim(this); 
/**
 We're going to use BANANAS to stop and start songs. Different bananas will play different songs.
 If you haven't used the Makey Makey before, check out this guide before you start: http://makeymakey.com/howto.php
 
 1. Download a song from YouTube using: youtube-mp3.org
 2. Plug the Makey Makey into the bananas.
 3. Finish the Processing code below so that touching a banana will start and stop a song.
 **/
AudioPlayer FatRat;
boolean FatRatstopped = true;
AudioPlayer NyanCat;              //1. Change to the name of your song
boolean NyanCatstopped = true;  

void loadSongs() {
  NyanCat = minim.loadFile("Nyan Cat.mp3");  //2. Drop mp3 onto this sketch and put its name here
  FatRat = minim.loadFile("TheFatRat - Time Lapse.mp3");
}

void keyPressed() {

  if (keyCode == UP) {
    /* 3. If Nyan CATS is stopped, play it, and set yellowSubmarineIsStopped to false. */
if (NyanCatstopped == true){
  NyanCatstopped = false;
  
      /* 4. Otherwise, stop it, and set NyanCatstopped to true. */
      playSong(NyanCat);
     
}  
else{
  stopSong(NyanCat);
  NyanCatstopped = true;
}
  }

  /* 5. Add other songs for the other bananas. keyCode will tell you which banana was pressed. */
  println("you pressed " + keyCode);
     if (keyCode == DOWN) {
    /* 3. If Nyan CATS is stopped, play it, and set yellowSubmarineIsStopped to false. */
if (FatRatstoppe == true){
  FatRatstopped = false;
  
      /* 4. Otherwise, stop it, and set NyanCatstopped to true. */
      playSong(FatRat);
     
}  
else{
  stopSong(FatRat);
  FatRatstopped = true;
}
      
    
    
  
}}
  
void playSong(AudioPlayer song) {
  song.play();
}

void stopSong(AudioPlayer song)
{
  song.pause();
}

void draw() {

}

void setup() {
  loadSongs();
  playSong(NyanCat);
  playSong(FatRat);
}

