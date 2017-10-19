/*
  Author: Matin Lotfaliei
  Date: 2017-10-06
  Processing Version: 3.3.6
  
  File Description:
    This is the clock upper circle which shows the current time.
    It consists of hour marks and 3 handles.
*/

class ClockCircle
{
   int centerX;
   int centerY;
   int radius;
   HourMarks hourMarks;
   
   HourHandle hourHandle;
   MinuteHandle minuteHandle;
   SecondHandle secondHandle;
  
   ClockCircle(int centerX, int centerY, int radius)
   {
      this.centerX = centerX; 
      this.centerY = centerY;
      this.radius = radius;
      hourMarks = new HourMarks(this, 20, 10);
      hourHandle = new HourHandle(radius);
      minuteHandle = new MinuteHandle(radius);
      secondHandle = new SecondHandle(radius);
   }
  
   void Draw()
   {
      stroke(255);
      // I want to see the fire inside my clock. So I will make the clock 
      fill(0,0,0,0);
      strokeWeight(10);     
    
      pushMatrix();
      
      translate(centerX, centerY);
      // I tried to add a border to my clock but it became ugly!!!
      //ellipse(0, 0, radius*2, radius*2); 
      hourMarks.Draw();
      
      hourHandle.Draw();
      minuteHandle.Draw();
      secondHandle.Draw();       
    
      popMatrix();   
    }
}