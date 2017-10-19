/*
  Author: Matin Lotfaliei
  Date: 2017-10-06
  Processing Version: 3.3.6
  
  File Description:
    These are two methods for pixel manipulations.
*/

color GetPixel(int x, int y)
{
  int index = y*width+x;
  if(index >= 0 && index < pixels.length)
    return pixels[index];
   else
     return #000000;
}
 
void SetPixel(int x, int y, color c)
{
  int index = y*width+x;
  if(index > 0 && index < pixels.length)
     pixels[index] = c;    
}