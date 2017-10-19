/*
  Author: Matin Lotfaliei
  Date: 2017-10-06
  Processing Version: 3.3.6
  
  File Description:
    This is the class which I put some image filter algorithms.
    The blur algorithm is just averaging the nearby pixels.
*/

class Filters
{
  void AddBlur()
  {
      loadPixels();
      for(int i=0; i<width-1; i++)
        for(int j=0; j<height-1; j++)
        {          
          color a0 = GetPixel(i,j);
          color a1 = GetPixel(i+1,j);
          color a2 = GetPixel(i,j+1);
          color a3 = GetPixel(i-1,j);
          color a4 = GetPixel(i,j-1);
          
          float r = (red(a0) + red(a1) + red(a2)+ red(a3) + red(a4))/5;
          float g = (green(a0) + green(a1) + green(a2)+ green(a3) + green(a4))/5;
          float b = (blue(a0) + blue(a1) + blue(a2)+ blue(a3) + blue(a4))/5;
          
          color result = color(r,g,b);
          SetPixel(i,j,result);          
        }
      updatePixels(); 
  }  
}