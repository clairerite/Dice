Die one;
Die two;
Die three;
Die four;
Die five;
Die six;
Die seven;
Die eight;
Die nine;
void setup()
  {
      noLoop();
      size (500,500);
      textAlign (CENTER);
  }
  void draw()
  {
    //my hand cry, my brain dead
      background (255, 214, 238);
      Die one = new Die (100, 100);
      one.show ();
      Die two = new Die (100, 250);
      two.show ();
      Die three = new Die (100, 400);
      three.show ();
      Die four = new Die (250, 100);
      four.show();
      Die five = new Die (250, 250);
      five.show();
      Die six = new Die (250, 400);
      six.show();
      Die seven = new Die (400, 100);
      seven.show();
      Die eight = new Die (400, 250);
      eight.show();
      Die nine = new Die (400, 400);
      nine.show();
      int sum = one.numDots + two.numDots + three.numDots + four.numDots + five.numDots + six.numDots + seven.numDots + eight.numDots + nine.numDots;
      int avg = sum/2;
      fill (0);
      textSize (30);
      text ("Number of dots: " +sum, 250, 470);
      text ("Average of dots: " +avg, 250, 170);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die 
  {
      int numDots, myX, myY;
      Die(int x, int y) 
      {
          numDots = (int)(Math.random ()*6) + 1;
          myX = x;
          myY = y;
      }
      void show()
      {
          for (int i = 0; i < numDots; i++)
          {
            stroke (0);
            strokeWeight (5);
            fill (255);
            rect (myX-40, myY-60, 80, 80, 20);
      }
      //do the circles look cuter i can't even tell 
      if (numDots == 1) {
        fill (154, 186, 217);
        ellipse (myX, myY-20, 10, 10);
      }
      if (numDots == 2) {
        fill (255, 255, 110);
        ellipse (myX-20, myY, 10, 10);
        ellipse (myX+20, myY-40, 10, 10);
      }
      if (numDots == 3) {
        fill (143, 227, 147);
        ellipse (myX-20, myY, 10, 10);
        ellipse (myX+20, myY-40, 10, 10);
        ellipse (myX, myY-20, 10, 10);
      }
      if (numDots == 4) {
        fill (227, 143, 143);
        ellipse (myX-20, myY, 10, 10);
        ellipse (myX+20, myY-40, 10, 10);
        ellipse (myX-20, myY-40, 10, 10);
        ellipse (myX+20, myY, 10, 10);
      }
      if (numDots == 5) {
        fill (198, 143, 227);
        ellipse (myX-20, myY, 10, 10);
        ellipse (myX+20, myY-40, 10, 10);
        ellipse (myX-20, myY-40, 10, 10);
        ellipse (myX+20, myY, 10, 10);
        ellipse (myX, myY-20, 10, 10);
      }
      if (numDots == 6) {
        fill (143, 227, 210);
        ellipse (myX-20, myY, 10, 10);
        ellipse (myX+20, myY-40, 10, 10);
        ellipse (myX-20, myY-40, 10, 10);
        ellipse (myX+20, myY, 10, 10);
        ellipse (myX-20, myY-20, 10, 10);
        ellipse (myX+20, myY-20, 10, 10);
      }
    }
  }
