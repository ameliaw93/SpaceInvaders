class bullet
{
  PImage looksLike;

  public bullet (PImage img)
  {
    looksLike = img;
  }

  int xpos;
  int ypos;
  int xspeed;
  int yspeed;

//location = new bullet[];

  void drawYourself()
  {    
    image(looksLike, xpos, ypos, 10, 10);
    ypos = ypos - speed;
  }

//void script() {
//    checkHit();
//    ifHit();
//  }
  
//  void checkHit() {
//    if (location.x > width)   location.x = 0;
//    else if (location.x < 0)  location.x = width;

//    if (location.y > height)  location.y = 0;
//    else if (location.y < 0)  location.y = height;
//  }
}