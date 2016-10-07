Die one; 
int num;
int average = 0;
void setup()
{
  background(0,255,255);
  size(250,350);
  noLoop();
    
}
void draw()
{
  for (int y = 10; y<200; y+= 55){
    for (int x = 10; x<200; x+= 55){
      Die one = new Die(x,y);
      one.show();
      one.roll(); 
      average = average + num;
    }
  }
  fill(0,0,0);
  textSize(25);
  text("Roll The Dice", 25,250);
  fill(0,0,0);
  textSize(20);
  text("Your Roll Amount:", 20,300);
  text(average, 200,300);
  average = 0;
}
void mousePressed()
{
  background(0,255,255);
  redraw();
}
class Die 
{
  int myX, myY;
  Die(int x, int y) 
  {
    myX=x;
    myY=y;
  }
  void roll()
  {  
    int rectSize = 50;
    int dotsize = 8;
    num = (int)(Math.random()*6)+1;
    if (num == 1){
      fill(0);
      ellipse(myX+rectSize/2,myY+rectSize/2,dotsize, dotsize);
    }
    else if (num == 2){
      fill(0);
      ellipse(myX+rectSize/4,myY+rectSize/4,dotsize, dotsize);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,dotsize, dotsize);
    }
    else if (num == 3){
      fill(0);
      ellipse(myX+rectSize/2,myY+rectSize/4,dotsize, dotsize);
      ellipse(myX+rectSize/2,myY+rectSize/2,dotsize, dotsize);
      ellipse(myX+rectSize/2,myY+3*rectSize/4,dotsize, dotsize);
    }
    else if (num == 4){
      fill(0);
      ellipse(myX+rectSize/4,myY+rectSize/4,dotsize, dotsize);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,dotsize, dotsize);
      ellipse(myX+rectSize/4,myY+3*rectSize/4,dotsize, dotsize);
      ellipse(myX+3*rectSize/4,myY+rectSize/4,dotsize, dotsize);
    }
    else if (num == 5){
      fill(0);
      ellipse(myX+rectSize/4,myY+rectSize/4,dotsize, dotsize);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,dotsize, dotsize);
      ellipse(myX+rectSize/4,myY+3*rectSize/4,dotsize, dotsize);
      ellipse(myX+3*rectSize/4,myY+rectSize/4,dotsize, dotsize);
      ellipse(myX+rectSize/2,myY+rectSize/2,dotsize, dotsize);
    }
    else if (num == 6){
      fill(0);
      ellipse(myX+rectSize/4,myY+rectSize/4,dotsize, dotsize);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,dotsize, dotsize);
      ellipse(myX+rectSize/4,myY+3*rectSize/4,dotsize, dotsize);
      ellipse(myX+3*rectSize/4,myY+rectSize/4,dotsize, dotsize);
      ellipse(myX+rectSize/4,myY+2*rectSize/4,dotsize, dotsize);
      ellipse(myX+3*rectSize/4,myY+2*rectSize/4,dotsize, dotsize);
    }
  }
  void show()
  {
    int rectSize = 50;
    noStroke();
    fill(255);
    rect(myX,myY,rectSize,rectSize);

  }
}
