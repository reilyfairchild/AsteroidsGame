//your variable declarations here
Spaceship reily;
Star[] nightSky = new Star[400];
ArrayList <Asteroid> ufo = new ArrayList <Asteroid>();
ArrayList <Bullet> die = new ArrayList <Bullet>();
int score = 0;
boolean gameStage = true;
public void setup() 
{
	size(500, 500);
	background(0);
	reily = new Spaceship();
	
	for(int i = 0; i < nightSky.length; i++){
  		nightSky[i] = new Star();
  	}
  	for(int i = 0; i <20; i++){
  		ufo.add(new Asteroid());
  }
  	
}
public void draw() 
{
	if(gameStage == true){

	background(0);
	//stars
	
	
	for(int i = 0; i <nightSky.length; i++){
  		nightSky[i].show();	
  	}
  	//asteroids
  	for(int i = 0; i < ufo.size(); i++){
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
	//collision
	for(int i = die.size()-1; i > 0; i--){
		for(int j = ufo.size()-1; j >= 0; j--){
			if(dist((float)ufo.get(j).getX(), (float)ufo.get(j).getY(), (float)die.get(i).getX(), (float)die.get(i).getY()) < 20){
				die.remove(i);
				ufo.remove(j);
				score++;
				break;
			} 
		}
	}
	
	textSize(20);
	fill(255);
	text("Score: " + score, 400, 480); 

	if(ufo.size() <= 0){
		gameStage = false;	
	}

}else {
	background(0);
	textSize(100);
	fill(255, 0, 0);
	text("You Win.", 50, 250); 
	textSize(40);
	fill(255);
	text("Click S to Start Over", 60, 350); 


	}
		
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
	//hyperspace
	if(key == 's' && gameStage == false){
		gameStage = true;
		score = 0;
		for(int i = 0; i <20; i++){
  		ufo.add(new Asteroid());
  }
	}
}

