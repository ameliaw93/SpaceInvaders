class Alien
{
  PImage whatILookLike;

  public Alien(PImage img)
  {
    whatILookLike = img;
  } 

  void drawYourself()
  {
    image(whatILookLike, 0, 0, 40, 40);
  }
}