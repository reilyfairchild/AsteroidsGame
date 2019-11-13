//your variable declarations here
Spaceship reily;
public void setup() 
{
	size(500, 500);
	reily = new Spaceship();
  //your code here
}
public void draw() 
{
	reily.show();
	reily.move();
  //your code here
}
public void keyPressed(){
	//turn left
	if(key == 'j'){
	reily.turn(-2);
	}
	//turn right
	if(key == 'l'){
	reily.turn(2);
	}

	//accelerate
	if(key == 'i'){
	reily.accelerate(2);

	}
	//hyperspace
	if(key == 'k'){
	reily.hyperspace(2);
	}
}

