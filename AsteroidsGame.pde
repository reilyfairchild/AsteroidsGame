//your variable declarations here
Spaceship reily;
Star[] nightSky = new Star[400];
Asteroid[] ufo = new Asteroid[20];
public void setup() 
{
	size(500, 500);
	background(0);
	reily = new Spaceship();
  	for(int i = 0; i <nightSky.length; i++){
  		nightSky[i] = new Star();
  	}
  	for(int i = 0; i <ufo.length; i++){
  		ufo[i] = new Asteroid();
  	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i <nightSky.length; i++){
  		nightSky[i].show();	
  	}
  	for(int i = 0; i <ufo.length; i++){
  		ufo[i].show();
  		ufo[i].move();	
  	}
  	reily.show();
	reily.move();
 
}
public void keyPressed(){
	//turn left
	if(key == 'j'){
	reily.turn(-15);
	}
	//turn right
	if(key == 'l'){
	reily.turn(15);
	}

	//accelerate
	if(key == 'i'){
	reily.accelerate(0.25);
	}
	//slow down
	if(key == 'k'){
	reily.accelerate(-0.25);
	}
	//hyperspace
	if(key == 'h'){
	reily.hyperspace();
	}
}

