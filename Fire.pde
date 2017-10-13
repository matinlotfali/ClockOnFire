/*
  Author: Matin Lotfaliei
  Date: 2017-10-06
  Processing Version: 3.3.6
  
  File Description:
    This class handles the fire effect which contains a MoveFire method that should be called on every draw.
*/

class Fire
{
   final byte shake = 11;                  // the factor of random movements in the fire.
   final byte wind = shake/2;              // the amount of wind. zero means the fire goes right.
   final float fireColorDifference = 250;  // this is used to make a difference between white and yellow of the fire
  
   /*
     This method is called everytime we draw.
     We pick a pixel, change its color using the other method and draw it somewhere else.
     To draw somewhere else we use the wind and shake variables. Shake creates a random number but wind is constant
   */
   public void MoveFire()
   {     
     loadPixels();
     for(int i=0; i<width; i++)
       for(int j=0; j<height+1; j++)
       {
         byte r = (byte)random(shake);
         color c = GetPixel(i,j);
         c = NextColor(c);         
         SetPixel(i+r-wind,j-1,c);        
       }      
      updatePixels();
   }
   
   /*
     This method is used when we want to choose the next pixel color of our fire.
     We try to change any bright color to slight yellow at first.
     Then we reduce the amount of green color until it is completely gone, then we try to remove red until it is gone and we just see the black. 
   */
   private color NextColor(color c)
   {          
     float r = red(c);
     float g = green(c);
     float b = blue(c);
     
     if(r > fireColorDifference || g > fireColorDifference || b > fireColorDifference)
     {
       r = fireColorDifference;
       g = fireColorDifference;
       b = 0;
     }
     else
     {
       if(g > 0)
       {
         g -= 5;    // I liked my yellow color turn into red faster         
       }
       else
         r -= 2;
     }
                          
     return color(r, g, 0);
   }
}