class Star //note that this class does NOT extend Floater
{
	private int myX, myY, myColor, myTransaperency;
	private double mySize;

	public Star(){
		myX = (int)(Math.random()*500);
		myY = (int)(Math.random()*500);
		myTransaperency =(int)(Math.random()*255);
		myColor= color(250, 234, 0);
		mySize = 0.5;
	}
	public void show(){
		stroke(myColor, myTransaperency);
		fill(myColor, myTransaperency);
		ellipse(myX, myY, (float)mySize, (float)mySize);
	}
  //your code here
}
