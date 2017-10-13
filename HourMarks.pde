/*
  Author: Matin Lotfaliei
  Date: 2017-10-06
  Processing Version: 3.3.6
  
  File Description:
    This is the class which draws the hour marks.
*/

class HourMarks
{       
   int startX;
   int endX;      
   
   HourMarks(ClockCircle clockCircle, int margin, int size)
   {
      this.startX = clockCircle.radius - margin - size;
      this.endX = clockCircle.radius - margin;            
   }
   
   void Draw()
   {             
     for(int i=0; i<360; i+= 30)
     {
       pushMatrix();
       
       rotate(radians(i));
       line(startX, 0, endX, 0);
       
       popMatrix();
     }         
   }
}