import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import ddf.minim.Minim;
import ddf.minim.Minim;
/* Displaying Teapot with color & shininess change
   by Jusub Kim
*/

PShape teapot;
float rot;
float speed;
Slider s1, s2;

public void setup() {
  size(640, 360, P3D);
  colorMode(HSB, 100, 100, 100);
  s1 = new Slider("Hue", 10, 10, 0, 360,  color(0, 0, 50), color(0, 100, 100));
  s2 = new Slider("Shininess", 10, 30, 1, 50, color(0, 0, 50), color(200, 100, 100));
  teapot = loadShape("teapot.obj");
import ddf.minim.*;

Minim minim;
AudioPlayer player;

  minim = new Minim(this);
  player = minim.loadFile("music.mp3");
  
  player.play();

}

public void draw() {
  speed = map(mouseX, 50, width, 0, 50);
  background(0);
  
 
  // GUI
  s1.display();
  s2.display();
  
  // setting lights
  lights();
  lightSpecular(0, 0, 100);
  pointLight(0, 0, 100, 0, 0, 300);

  // transform the teapot
  translate(width/2, height/2 + 150, -300);
  rotateX(HALF_PI);
  rotateZ(rot);
  scale(25); 
  
  // set teapot material colors
  teapot.setAmbient(color(0, 0, 20));
  teapot.setFill(color(s1.pos(), 100, 50));
  teapot.setSpecular(color(0, 0, 100));
  teapot.setShininess( s2.pos() );
  
  // display teapots
  shape(teapot);
  
  // rotate teapots
  rot += 0.6;
  
}

void mouseDragged() {
  s1.slide();
  s2.slide();
}
