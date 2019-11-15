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
    	myDirectionX = (int)(Math.random()*359);
    	myDirectionY = (int)(Math.random()*359);
    	myCenterX = (int)(Math.random()*500);
    	myCenterY = (int)(Math.random()*500);
    	

    }

}
