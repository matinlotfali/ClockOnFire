/*
  Author: Matin Lotfaliei
  Date: 2017-10-06
  Processing Version: 3.3.6
  
  File Description:
    This is the class which draws the pendulum.
    It does not draw when we don't know the exact time that the milisecond goes to zero
    And it is maintained the way that is working fine in relation to the second handle of the clock
*/

class Pendulum
{
    int minSize, maxSize, pendulumSize, weight;
    color c;
    int maxAngle = 30;        
    int lastSecond;    
    int milisecondPosition = -1;
    
  
    Pendulum(int minSize, int maxSize, int pendulumSize, int weight, color c)
    {
       this.minSize = minSize;
       this.maxSize = maxSize;
       this.pendulumSize = pendulumSize;
       this.c = c;
       this.weight = weight;
       lastSecond = second();       
    }
    
    void Draw()
    {                    
        stroke(c);
        // I like my pendulum not having any fill color
        fill(0,0,0,0);
        strokeWeight(weight);
      
      
        // I am trying to understand the exact moment that the milisecond goes to zero
        // because the milis() method just tell me the milisecond in relation with start of the app
        // not in relation with the second of my computer.
        if(second() != lastSecond)
        {
          if(milisecondPosition == -1)
            milisecondPosition = millis();
        }
        
        // not to draw the pendolum if the relation of the milisecond is not found yet.
        if(milisecondPosition != -1)
        {
          // I want my pendulum to move in a sinus equation not linear.
          int milisecond = (int)(sin((millis()-milisecondPosition-500) * PI / 1000)*1000);
            
          pushMatrix();
                                             
          rotate(radians(milisecond * maxAngle / 1000 + 90));          
          line(minSize, 0, maxSize-pendulumSize/2, 0);
          ellipse(maxSize,0, pendulumSize, pendulumSize);
          
          popMatrix();        
        }
        
        lastSecond = second();        
    }
}