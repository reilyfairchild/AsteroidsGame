class Bullet extends Floater{
	Bullet(Spaceship reily){
		 myCenterX = reily.getMyCenterX();
		 myCenterY = reily.getMyCenterY();
		 myPointDirection = reily.getMyPointDirection();
		 float dRadians = (float)(myPointDirection*(Math.PI/180));
		 myDirectionX = reily.getMyDirectionX() + 5 * Math.cos(dRadians);
		 myDirectionY = reily.getMyDirectionY() + 5 * Math.sin(dRadians);
	}
	public void show(){
		fill(255);
		stroke(255, 0, 0);
		ellipse((float)myCenterX, (float)myCenterY, 5, 5);
	}
	public void move(){
		myCenterX += myDirectionX;    
    	myCenterY += myDirectionY; 
	}
	public double getX(){
		return myCenterX;
	}
	public double getY(){
		return myCenterY;
	}

}