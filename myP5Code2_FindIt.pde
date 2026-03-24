var starXPos = [];
var starYPos = [];
var star = "🌧️";
var starTotal = 100;
 
//emojis
var planetXPos = [];
var planetYPos = [];
var planet = "🌂";
var planetTotal = 3;
var planetFound = 0;

setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < planetXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, planetXPos[i], planetYPos[i])<15){
      planetXPos.splice(i, 1);
      planetYPos.splice(i, 1);
      planetFound++;
    }
  }
}

var display = function(){
  background(100,100,100);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < planetXPos.length; i ++){
    text(planet, planetXPos[i], planetYPos[i]);
  }

  for(var i = 0; i < starXPos.length; i ++){
    text(star, starXPos[i], starYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + planet + "s   |   " + planet + " " + planetFound + "/" + planetTotal, 0, 425);

  if(planetFound == planetTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
    textSize(200);
    text("☂️", 200, 180);
    
    //key press additive
    fill(202, 217, 227);
    textSize(20);
    text("or press 's' for surprise", 220, 350)
  }



textSize(20);


//while loop
var x=40
while (x < 60){
  text("☀️", x, 20);
x += 20;
}


//array
var stuff = [ "its raining find an umbrella", ]

fill(227, 204, 202);
text( stuff[0], 50 , 380 );



//for
for (var x=0; x<600; x+=90){
  text("⛈️", x, 60)
}

}

var reset = function(){
  starXPos = [];
  starYPos = [];
  planetXPos = [];
  planetYPos = [];
  planetFound = 0;


  for(var i = 0; i < starTotal; i++){
    starXPos.push(random(0,600));
    starYPos.push(random(0,400));
  }

  for(var i = 0; i < planetTotal; i++){
    planetXPos.push(random(0,600));
    planetYPos.push(random(0,400));
  }
}