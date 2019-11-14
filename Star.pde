class Star //note that this class does NOT extend Floater
{
	private int myX, myY, myColor;
	private double mySize;

	public Star(){
		myX = (int)(Math.random()*500);
		myY = (int)(Math.random()*500);
		myColor= color(250, 234, 0);
		mySize = 0.5;
	}
	public void show(){
		stroke(myColor);
		fill(myColor);
		ellipse(myX, myY, (float)mySize, (float)mySize);
	}
  //your code here
}
