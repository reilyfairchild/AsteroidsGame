class Asteroid extends Floater{
	private int rotSpeed;

	Asteroid(){
		rotSpeed = (int)(Math.random()*20-10);
		corners = 7;
		xCorners = new int[]{0, 8, 8, 14, -14, -8, -8};
	   	yCorners = new int[]{8, 6, 0, -10, -10, 0, 6};
	   	myColor = color(0, 20, 7);
	   	myCenterX = (int)(Math.random()*500);
	   	myCenterY = (int)(Math.random()*500);
	   	myDirectionX = (int)(Math.random()*10 -5);
	   	myDirectionY = (int)(Math.random()*10 -5);
	   	myPointDirection = (int)(Math.random()*359); 
	}

	public void move(){
		turn(rotSpeed);
		super.move();
	}
}