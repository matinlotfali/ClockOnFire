/*
  Author: Matin Lotfaliei
  Date: 2017-10-06
  Processing Version: 3.3.6
  
  File Description:
    This file consists of a parent class and three derived class for drawing handles.
    the parent class consists of the main formula of drawing a handle,
    and the derived class just say the angle to the main class.
*/

class SecondHandle extends ClockHandle
{        
   SecondHandle(int radius)
   {
       super(radius-10, 5, #ff0066);      
   }
  
   void Draw()
   {        
       super.Draw(second()*360/60);
   }
}

class MinuteHandle extends ClockHandle
{        
   MinuteHandle(int radius)
   {
       super(radius-10, 10, #00cc44);      
   }
  
   void Draw()
   {
       super.Draw(minute()*360/60);
   }
}

class HourHandle extends ClockHandle
{        
   HourHandle(int radius)
   {
       super(radius/2, 15, #00cc44);      
   }
  
   void Draw()
   {              
       super.Draw(hour()*360/12);
   }
}


class ClockHandle
{   
   int size, weight;   
   color c;
  
   ClockHandle(int size, int weight, color c)
   {      
      this.size = size;
      this.c = c;
      this.weight = weight;
   }
  
   void Draw(int angle)
   {
      stroke(c);      
      strokeWeight(weight);
      
      pushMatrix();
      
      rotate(radians(angle-90));      
      line(0, 0, size, 0);
      
      popMatrix();
   }
}