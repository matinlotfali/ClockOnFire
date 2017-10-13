/*
  Author: Matin Lotfaliei
  Date: 2017-10-06
  Processing Version: 3.3.6

  File Description:
    This is the main clock drawing class, which consists of a clock circle and a pendulum.
*/

class Clock
{
   ClockCircle clockCircle;
   Pendulum pendulum;

   Clock(int centerX, int centerY, int size)
   {
     clockCircle = new ClockCircle( centerX, centerY*3/4, size/4);
      pendulum = new Pendulum(size/4, size/2,40,10,#ffffff);

      sdjakjfkdjgkgd

   }

   void Draw()
   {
     clockCircle.Draw();

     pushMatrix();

     translate(clockCircle.centerX, clockCircle.centerY);
     pendulum.Draw();

     popMatrix();
   }
}
