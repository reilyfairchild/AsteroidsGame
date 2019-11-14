//your variable declarations here
Spaceship reily;
Star[] nightSky = new Star[400];
public void setup() 
{
	size(500, 500);
	background(0);
	reily = new Spaceship();
  	for(int i = 0; i <nightSky.length; i++){
  		nightSky[i] = new Star();
  		
  	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i <nightSky.length; i++){
  		nightSky[i].show();	
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
	reily.accelerate(0.5);
	}
	//slow down
	if(key == 'k'){
	reily.accelerate(-0.25);
	}
	//hyperspace
	if(key == 'h'){
	reily.hyperspace(2);
	}
}

