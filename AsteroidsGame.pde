//your variable declarations here
Spaceship reily;
Star[] nightSky = new Star[400];
ArrayList <Asteroid> ufo = new ArrayList <Asteroid>();
ArrayList <Bullet> die = new ArrayList <Bullet>();
public void setup() 
{
	size(500, 500);
	background(0);
	reily = new Spaceship();
	
  	for(int i = 0; i <nightSky.length; i++){
  		nightSky[i] = new Star();
  	}
  	for(int i = 0; i <20; i++){
  		ufo.add(new Asteroid());
  	}
}
public void draw() 
{
	background(0);
	//stars
	for(int i = 0; i <nightSky.length; i++){
  		nightSky[i].show();	
  	}
  	//asteroids
  	for(int i = 0; i < 20; i++){
  		ufo.get(i).show();
  		ufo.get(i).move();	
  	}
  	//bullets
	for(int i = 0; i < die.size(); i++){
		die.get(i).show();
 		die.get(i).move();
 		
	}
  	//spaceship
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
	//bullets
	if(key == 'n'){
		die.add(new Bullet(reily));
	}
}

