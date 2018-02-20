private double fractionLength = 1.5; 
private int smallestBranch = 10; 
private double branchAngle = .2;  

public void setup() 
{   
  
	size(640,480);    
	//noLoop(); 
} 
public void draw() 
{   
	background(159, 234, 221);   
	stroke(#EA36A3);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2);  
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	  double angle1 = angle+branchAngle;
    double angle2 = angle-branchAngle;
    int endX1 = (int)(branchLength*Math.cos(angle1)+x)+(int)(Math.random()*5);
    int endY1 = (int)(branchLength*Math.sin(angle1)+y)+(int)(Math.random()*5);
    int endX2 = (int)(branchLength*Math.cos(angle2)+x)+(int)(Math.random()*5);
    int endY2 = (int)(branchLength*Math.sin(angle2)+y)+(int)(Math.random()*5);
    branchLength*=fractionLength;
    
    line(x, y, endX1, endY1);
    line(x, y, endX2, endY2);
    if(branchLength>smallestBranch){
      drawBranches(endX1, endY1, branchLength/2, angle1);
      drawBranches(endX2, endY2, branchLength/2, angle2);
    }
} 