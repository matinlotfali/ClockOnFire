/*
  Author: Matin Lotfaliei
  Date: 2017-10-06
  Processing Version: 3.3.6
  
  File Description:
    This is the processing general methods including setup and draw function.
*/

Fire fire;
Filters filters;
Clock clock;

void settings()
{
  size(400,400);
}

void setup()
{     
  background(0);  
  fire = new Fire();
  filters = new Filters();
  clock = new Clock(width/2, height/2, width);
}

// in this draw function, the background never clears because pixels in previous frame are needed for the fire.
void draw()
{    
  fire.MoveFire();  
  filters.AddBlur();
  
  clock.Draw();
  
  fill(#ffffff);
  text("Clock On Fire", 10, height - 10);
  
  // I tried to record the clock using this commented code.
  //saveFrame("frames/####.png");
}