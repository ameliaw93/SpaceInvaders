PImage alienSprite;
PImage bulletSprite;

Alien[][] spaceInvaders =  new Alien[6][7];
bullet[] Bullet = new bullet[0];

int spaceShip = 500;
int zap = 0;

int xpos=0;
int ypos=0;
int speed=1;

boolean shoot;
int shootdelay = 0;

boolean left;
boolean right;

bullet shot;
bullet hit;

//Gif alienAnim;

void setup()
{
  size(600, 400);
  //alienAnim = new Gif("alien.gif");
  //alienAnim.play();
  alienSprite = loadImage("alien.gif");
  new Alien(alienSprite);
  for (int cols=0; cols < spaceInvaders.length; cols++) {
    for (int i=0; i<spaceInvaders.length; i++) {
      Alien newestAlien = new Alien(alienSprite);
      spaceInvaders[cols][i]  = newestAlien;
    }
  }
  {
    bulletSprite = loadImage("bullet.jpg");
    new bullet(bulletSprite);
    //for (int cols=0; cols < Bullet.length; cols++) {
    for (int i=0; i<Bullet.length; i++) {
      bullet newestBullet = new bullet(bulletSprite);
      Bullet[i]  = newestBullet;
    }
  }
}

void draw()
{
  background(000);
  if (shot != null) shot.drawYourself();
  rect(spaceShip, 350, 40, 10);
  for (int column=0; column < spaceInvaders.length; column++) {
    for (int i=0; i<spaceInvaders.length; i++) {
      Alien nextAlien = spaceInvaders[column][i];
      translate(40, 0);
      if (nextAlien != null) nextAlien.drawYourself();
    }
    translate(-240, 40);
  }
  //for (int cols=0; cols < Bullet.length; cols++) {
  for (int rows=0; rows < Bullet.length; rows++) {
    bullet nextBullet = Bullet[rows];
    if (shoot = true) nextBullet.drawYourself();
  }
  spaceInvaders[5][2]  = null;
}

void keyPressed()
{
  if (keyCode == RIGHT) {
    spaceShip = spaceShip + 10;
  }
  if (keyCode == LEFT) {
    spaceShip = spaceShip - 10;
  }
  {
    if (keyCode == UP) {
      shot = new bullet(bulletSprite);
      shot.xpos = spaceShip+15;
      shot.ypos = 350;
      shot.yspeed = 10;
    }
  }
}