class Spaceship extends Floater  
{   
   Spaceship(){
   	corners = 4;
   	xCorners = new int[]{-8, 16, -8, -2};
   	yCorners = new int[]{-8, 0, 8, 0};
   	myColor = color(255, 0, 0);
   	myCenterX = 250;
   	myCenterY = 250;
   	myDirectionX = 0;
   	myDirectionY = 0;
   	myPointDirection = 0; 

    } 
    public void hyperspace(){
    	myDirectionX = 0;
    	myDirectionY = 0; 
    	myCenterX = (int)(Math.random()*500);
    	myCenterY = (int)(Math.random()*500);
    	myPointDirection = (int)(Math.random()*359);
    }
    public double getMyCenterX(){
    	return myCenterX;
    }
    public double getMyCenterY(){
    	return myCenterY;
    }
    public double getMyPointDirection(){
    	return myPointDirection;
    }
    public double getMyDirectionX(){
    	return myDirectionX;
    }
    public double getMyDirectionY(){
    	return myDirectionY;
    }
    

}





